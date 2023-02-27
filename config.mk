# start-stop-daemon version
VERSION    = 20210417

# paths
PREFIX     = /usr/local
MANPREFIX  = ${PREFIX}/share/man

# flags
CPPFLAGS   = -DVERSION=\"${VERSION}\"
CFLAGS     = -std=c99 -pedantic -Wall -Wextra -Wformat
LDFLAGS    =

# compiler and linker
CC = cc
LD = ${CC}
