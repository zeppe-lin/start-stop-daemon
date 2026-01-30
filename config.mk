# project metadata
NAME      = start-stop-daemon
VERSION   = 1.24.0

# paths
PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

# flags
CPPFLAGS  = -DVERSION=\"${VERSION}\"
CFLAGS    = -pedantic -Wall -Wextra -Wformat ${CPPFLAGS}
LDFLAGS   = -static
