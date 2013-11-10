#############################################################################
# Makefile for building: cobaltirc
# Generated by qmake (2.01a) (Qt 4.8.4) on: su marraskuuta 10 15:09:12 2013
# Project:  coirc.pro
# Template: app
# Command: /usr/lib/x86_64-linux-gnu/qt4/bin/qmake -o Makefile coirc.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -std=c++0x -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtNetwork -I/usr/include/qt4/QtGui -I/usr/include/qt4 -I. -Isrc -Ibuild -Ibuild
LINK          = g++
LFLAGS        = -m64
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -lQtGui -lQtNetwork -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/lib/x86_64-linux-gnu/qt4/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = build/

####### Files

SOURCES       = src/channel.cc \
		src/commands.cc \
		src/config.cc \
		src/connection.cc \
		src/context.cc \
		src/crashcatcher.cc \
		src/format.cc \
		src/main.cc \
		src/mainwindow.cc \
		src/user.cc \
		src/xml.cc \
		src/xml_scanner.cc build/moc_connection.cpp
OBJECTS       = build/channel.o \
		build/commands.o \
		build/config.o \
		build/connection.o \
		build/context.o \
		build/crashcatcher.o \
		build/format.o \
		build/main.o \
		build/mainwindow.o \
		build/user.o \
		build/xml.o \
		build/xml_scanner.o \
		build/moc_connection.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		coirc.pro
QMAKE_TARGET  = cobaltirc
DESTDIR       = 
TARGET        = cobaltirc

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): build/ui_bombbox.h build/ui_connectTo.h build/ui_main.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)
	{ test -n "$(DESTDIR)" && DESTDIR="$(DESTDIR)" || DESTDIR=.; } && test $$(gdb --version | sed -e 's,[^0-9]\+\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index $$DESTDIR" -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true

Makefile: coirc.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		/usr/share/qt4/mkspecs/features/debug.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtNetwork.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile coirc.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
/usr/share/qt4/mkspecs/features/debug.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtNetwork.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile coirc.pro

dist: 
	@$(CHK_DIR_EXISTS) build/cobaltirc1.0.0 || $(MKDIR) build/cobaltirc1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) build/cobaltirc1.0.0/ && $(COPY_FILE) --parents src/channel.h src/commands.h src/config.h src/connection.h src/context.h src/crashcatcher.h src/format.h src/macros.h src/main.h src/mainwindow.h src/user.h src/xml.h src/xml_scanner.h build/cobaltirc1.0.0/ && $(COPY_FILE) --parents src/channel.cc src/commands.cc src/config.cc src/connection.cc src/context.cc src/crashcatcher.cc src/format.cc src/main.cc src/mainwindow.cc src/user.cc src/xml.cc src/xml_scanner.cc build/cobaltirc1.0.0/ && $(COPY_FILE) --parents ui/bombbox.ui ui/connectTo.ui ui/main.ui build/cobaltirc1.0.0/ && (cd `dirname build/cobaltirc1.0.0` && $(TAR) cobaltirc1.0.0.tar cobaltirc1.0.0 && $(COMPRESS) cobaltirc1.0.0.tar) && $(MOVE) `dirname build/cobaltirc1.0.0`/cobaltirc1.0.0.tar.gz . && $(DEL_FILE) -r build/cobaltirc1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: build/moc_connection.cpp build/moc_mainwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) build/moc_connection.cpp build/moc_mainwindow.cpp
build/moc_connection.cpp: src/main.h \
		src/macros.h \
		src/format.h \
		src/connection.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/connection.h -o build/moc_connection.cpp

build/moc_mainwindow.cpp: src/main.h \
		src/macros.h \
		src/format.h \
		src/mainwindow.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) src/mainwindow.h -o build/moc_mainwindow.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: build/qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) build/qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: build/ui_bombbox.h build/ui_connectTo.h build/ui_main.h
compiler_uic_clean:
	-$(DEL_FILE) build/ui_bombbox.h build/ui_connectTo.h build/ui_main.h
build/ui_bombbox.h: ui/bombbox.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic ui/bombbox.ui -o build/ui_bombbox.h

build/ui_connectTo.h: ui/connectTo.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic ui/connectTo.ui -o build/ui_connectTo.h

build/ui_main.h: ui/main.ui
	/usr/lib/x86_64-linux-gnu/qt4/bin/uic ui/main.ui -o build/ui_main.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

build/channel.o: src/channel.cc src/channel.h \
		src/main.h \
		src/macros.h \
		src/format.h \
		src/user.h \
		src/connection.h \
		src/context.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/channel.o src/channel.cc

build/commands.o: src/commands.cc src/commands.h \
		src/main.h \
		src/macros.h \
		src/format.h \
		src/context.h \
		src/connection.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/commands.o src/commands.cc

build/config.o: src/config.cc src/main.h \
		src/macros.h \
		src/format.h \
		src/config.h \
		src/xml.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/config.o src/config.cc

build/connection.o: src/connection.cc src/connection.h \
		src/main.h \
		src/macros.h \
		src/format.h \
		src/context.h \
		src/channel.h \
		src/mainwindow.h \
		src/config.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/connection.o src/connection.cc

build/context.o: src/context.cc src/context.h \
		src/main.h \
		src/macros.h \
		src/format.h \
		src/channel.h \
		src/user.h \
		src/connection.h \
		src/mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/context.o src/context.cc

build/crashcatcher.o: src/crashcatcher.cc src/main.h \
		src/macros.h \
		src/format.h \
		src/crashcatcher.h \
		build/ui_bombbox.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/crashcatcher.o src/crashcatcher.cc

build/format.o: src/format.cc src/format.h \
		src/macros.h \
		src/main.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/format.o src/format.cc

build/main.o: src/main.cc src/main.h \
		src/macros.h \
		src/format.h \
		src/mainwindow.h \
		src/config.h \
		src/xml.h \
		src/crashcatcher.h \
		src/context.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/main.o src/main.cc

build/mainwindow.o: src/mainwindow.cc src/mainwindow.h \
		src/main.h \
		src/macros.h \
		src/format.h \
		src/connection.h \
		src/context.h \
		build/ui_main.h \
		build/ui_connectTo.h \
		build/moc_mainwindow.cpp \
		src/config.h \
		src/commands.h \
		src/user.h \
		src/channel.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/mainwindow.o src/mainwindow.cc

build/user.o: src/user.cc src/user.h \
		src/main.h \
		src/macros.h \
		src/format.h \
		src/channel.h \
		src/connection.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/user.o src/user.cc

build/xml.o: src/xml.cc src/main.h \
		src/macros.h \
		src/format.h \
		src/xml.h \
		src/xml_scanner.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/xml.o src/xml.cc

build/xml_scanner.o: src/xml_scanner.cc src/xml_scanner.h \
		src/main.h \
		src/macros.h \
		src/format.h \
		src/xml.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/xml_scanner.o src/xml_scanner.cc

build/moc_connection.o: build/moc_connection.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o build/moc_connection.o build/moc_connection.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

