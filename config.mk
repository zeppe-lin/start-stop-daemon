# project metadata
NAME = start-stop-daemon
VERSION = 20210417

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" -DDISTRO=\"Zeppe-Lin\"
CFLAGS   = -std=c99 -pedantic -Wall -Wextra -Wformat
LDFLAGS  =

# compiler and linker
CC = cc
LD = ${CC}
