# project metadata
NAME      = start-stop-daemon
VERSION   = 2.0.1

# paths
PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

# flags
CPPFLAGS  = -DVERSION=\"${VERSION}\" \
            -DHAVE_CLOCK_MONOTONIC -DHAVE_GETDTABLESIZE
CFLAGS    = -pedantic -Wall -Wextra -Wformat ${CPPFLAGS}
LDFLAGS   = -static
