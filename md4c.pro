CONFIG -= qt

TEMPLATE = lib
CONFIG += staticlib

CONFIG += c++11

SOURCES += \
    src/entity.c \
    src/md4c.c

HEADERS += \
    src/entity.h \
    src/md4c.h

DEFINES += DEBUG

# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target
