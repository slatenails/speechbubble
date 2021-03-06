#ifdef __unix__

#include <QString>
#include <QProcess>
#include <QTemporaryFile>
#include <QMessageBox>
#include <QPushButton>
#include <unistd.h>
#include <signal.h>
#include <sys/prctl.h>
#include "main.h"
#include "crashcatcher.h"
#include "ui_bombbox.h"

// Is the crash catcher active now?
static bool g_crashCatcherActive = false;

// If an assertion failed, what was it?
static QString g_assertionFailure;

// List of signals to catch and crash on
static QList<int> g_signalsToCatch (
{
	SIGSEGV, // segmentation fault
	SIGABRT, // abort() calls
	SIGFPE, // floating point exceptions (e.g. division by zero)
	SIGILL, // illegal instructions
});

// =============================================================================
//
static void bombBox (const QString& message)
{
	QDialog dlg;
	Ui_BombBox ui;
	ui.setupUi (&dlg);
	ui.m_text->setText (message);
	ui.buttonBox->button (QDialogButtonBox::Close)->setText (QObject::tr ("Damn it"));
	dlg.exec();
}

// =============================================================================
//
static void handleCrash (int sig)
{
	printf ("%s: crashed with signal %d, launching gdb\n", __func__, sig);

	if (g_crashCatcherActive)
	{
		printf ("caught signal while crash catcher is active!\n");
		exit (149);
	}

	const pid_t pid = getpid();
	QProcess proc;
	QTemporaryFile commandsFile;
	g_crashCatcherActive = true;

	if (commandsFile.open())
	{
		commandsFile.write (format("attach %1\n", pid).toLocal8Bit());
		commandsFile.write (QString ("backtrace full\n").toLocal8Bit());
		commandsFile.write (QString ("detach\n").toLocal8Bit());
		commandsFile.write (QString ("quit").toLocal8Bit());
		commandsFile.flush();
		commandsFile.close();
	}

	QStringList args ( {"-x", commandsFile.fileName() });

	proc.start ("gdb", args);

	// Linux doesn't allow ptrace to be used on anything but direct child processes
	// so we need to use prctl to register an exception to this to allow GDB attach to us.
	// We need to do this now and no earlier because only now we actually know GDB's PID.
	prctl (PR_SET_PTRACER, proc.pid(), 0, 0, 0);

	proc.waitForFinished (1000);
	QString output = QString (proc.readAllStandardOutput());
	QString err = QString (proc.readAllStandardError());

	bombBox (format("<h3>Program crashed with signal %1</h3>\n\n"
				  "%2"
				  "<p><b>GDB <tt>stdout</tt>:</b></p><pre>%3</pre>\n"
				  "<p><b>GDB <tt>stderr</tt>:</b></p><pre>%4</pre>",
				  sig, (!g_assertionFailure.isEmpty()) ? g_assertionFailure : "", output, err));
}

// =============================================================================
//
void initCrashCatcher()
{
	struct sigaction sighandler;
	sighandler.sa_handler = &handleCrash;
	sighandler.sa_flags = 0;
	sigemptyset (&sighandler.sa_mask);

	for (int sig : g_signalsToCatch)
		sigaction (sig, &sighandler, null);

	print ("%1: crash catcher hooked to signals: %2\n", __func__, g_signalsToCatch);
}
#endif // #ifdef __unix__

// =============================================================================
// This function must be readily available in both Windows and Linux. We display
// the bomb box straight in Windows while in Linux we let abort() trigger the
// signal handler, which will cause the usual bomb box with GDB diagnostics.
// Said prompt will embed the assertion failure information.
//
void assertionFailure (const char* file, int line, const char* funcname, const char* expr)
{
	QString errmsg = format(
		"<p><b>File</b>: <tt>%1</tt><br />"
		"<b>Line</b>: <tt>%2</tt><br />"
		"<b>Function</b>: <tt>%3</tt></p>"
		"<p>Assertion <b><tt>`%4'</tt></b> failed.</p>",
		file, line, funcname, expr);

	g_assertionFailure = errmsg;

#ifndef __unix__
	bombBox (errmsg);
#endif

	abort();
}
