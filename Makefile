.POSIX:

include config.mk

all: start-stop-daemon

install: all
	mkdir -p ${DESTDIR}${PREFIX}/sbin
	mkdir -p ${DESTDIR}${MANPREFIX}/man8
	cp -f start-stop-daemon   ${DESTDIR}${PREFIX}/sbin/
	sed "s/@VERSION@/${VERSION}/" start-stop-daemon.8 > \
		${DESTDIR}${MANPREFIX}/man8/start-stop-daemon.8
	chmod 0755 ${DESTDIR}${PREFIX}/sbin/start-stop-daemon
	chmod 0644 ${DESTDIR}${MANPREFIX}/man8/start-stop-daemon.8

uninstall:
	rm -f ${DESTDIR}${PREFIX}/start-stop-daemon
	rm -f ${DESTDIR}${MANPREFIX}/man8/start-stop-daemon.8

clean:
	rm -f start-stop-daemon
	rm -f ${DIST}.tar.gz

dist: clean
	git archive --format=tar.gz -o ${DIST}.tar.gz --prefix=${DIST}/ HEAD

.PHONY: all install uninstall clean dist
