# project metadata
NAME      = start-stop-daemon
VERSION   = 1.21
DIST      = ${NAME}-${VERSION}

# paths
PREFIX    = /usr/local
MANPREFIX = ${PREFIX}/share/man

# flags
CFLAGS    = -pedantic -Wall -Wextra -Wformat -DVERSION=\"${VERSION}\"
LDFLAGS   =
