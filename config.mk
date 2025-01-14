# project metadata
NAME      = start-stop-daemon
VERSION   = 1.22.2
DIST      = ${NAME}-${VERSION}

# paths
PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

# flags
CPPFLAGS  = -DVERSION=\"${VERSION}\"
CFLAGS    = -pedantic -Wall -Wextra -Wformat ${CPPFLAGS}
LDFLAGS   = -static
