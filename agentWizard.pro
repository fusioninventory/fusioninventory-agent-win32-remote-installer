#-------------------------------------------------
#
# Project created by QtCreator 2011-04-20T16:51:02
#
#-------------------------------------------------

QT       += core gui network

TARGET = agentWizard
TEMPLATE = app


SOURCES += main.cpp\
        dialog.cpp \
    config.cpp \
    console.cpp

HEADERS  += dialog.h \
    config.h \
    console.h

FORMS    += dialog.ui \
    console.ui

RESOURCES += \
    FusionInventory.qrc

PRE_TARGETDEPS += FusionInventory.o

#Create a .o binary file from the corresponding .S assembly and .exe binary
EmbedBlobObj_FILES = FusionInventory.S
EmbedBlobObj.input = EmbedBlobObj_FILES
EmbedBlobObj.output = ${QMAKE_FILE_BASE}.o
unix:EmbedBlobObj.commands = cp -a ${QMAKE_FILE_IN_PATH}/${QMAKE_FILE_BASE}.exe . ; as -o ${QMAKE_FILE_OUT} ${QMAKE_FILE_NAME}
win32:EmbedBlobObj.commands = copy ${QMAKE_FILE_IN_PATH}/${QMAKE_FILE_BASE}.exe . & as -o ${QMAKE_FILE_OUT} ${QMAKE_FILE_NAME}

QMAKE_EXTRA_COMPILERS += EmbedBlobObj
