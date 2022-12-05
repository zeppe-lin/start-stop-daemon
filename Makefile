.POSIX:

include config.mk

all: start-stop-daemon start-stop-daemon.8

.c.o:
	${CC} -c ${CFLAGS} ${CPPFLAGS} $<

start-stop-daemon: start-stop-daemon.o
	${LD} -o $@ ${LDFLAGS} $<

start-stop-daemon.8: start-stop-daemon.8.pod
	pod2man -r ${VERSION} -c ' ' -n start-stop-daemon -s 8 $< > $@

install: all
	install -d ${DESTDIR}${PREFIX}/sbin ${DESTDIR}${MANPREFIX}/man8
	install -m 755 start-stop-daemon   ${DESTDIR}${PREFIX}/sbin/
	install -m 644 start-stop-daemon.8 ${DESTDIR}${MANPREFIX}/man8/

uninstall:
	rm -f ${DESTDIR}${PREFIX}/sbin/start-stop-daemon
	rm -f ${DESTDIR}${MANPREFIX}/man8/start-stop-daemon.8

clean:
	rm start-stop-daemon start-stop-daemon.o start-stop-daemon.8

.PHONY: all install uninstall clean
