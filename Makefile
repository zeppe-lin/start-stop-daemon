.POSIX:

include config.mk

all: start-stop-daemon start-stop-daemon.8

.c.o:
	${CC} -c ${CFLAGS} ${CPPFLAGS} $<

start-stop-daemon: start-stop-daemon.o
	${LD} -o $@ ${LDFLAGS} $<

start-stop-daemon.8: start-stop-daemon.8.pod
	pod2man -r ${VERSION} -c ' ' -n start-stop-daemon -s 8 $< > $@

check:
	@podchecker start-stop-daemon.8.pod
	@grep -Eiho "https?://[^\"\\'> ]+" *.* | httpx -silent -fc 200 -sc

install: all
	mkdir -p ${DESTDIR}/sbin ${DESTDIR}/usr/share/man/man8
	cp -f start-stop-daemon   ${DESTDIR}/sbin/
	cp -f start-stop-daemon.8 ${DESTDIR}/usr/share/man/man8/

uninstall:
	rm -f ${DESTDIR}/sbin/start-stop-daemon
	rm -f ${DESTDIR}/usr/share/man/man8/start-stop-daemon.8

clean:
	rm start-stop-daemon start-stop-daemon.o start-stop-daemon.8

.PHONY: all install uninstall clean
