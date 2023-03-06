.POSIX:

include config.mk

all: start-stop-daemon start-stop-daemon.8

.c.o:
	${CC} -c ${CFLAGS} ${CPPFLAGS} $<

start-stop-daemon: start-stop-daemon.o
	${LD} $^ ${LDFLAGS} -o $@

start-stop-daemon.8: start-stop-daemon.8.pod
	pod2man -r "start-stop-daemon ${VERSION}" -c ' ' \
		-n start-stop-daemon -s 8 $< > $@

check:
	@echo "=======> Check PODs for errors"
	@podchecker *.pod
	@echo "=======> Check URLs for response code"
	grep -Eiho "https?://[^\"\\'> ]+" *.* | xargs -P10 -I{} \
		curl -o /dev/null -sw "[%{http_code}] %{url}\n" '{}'

install: all
	mkdir -p ${DESTDIR}${PREFIX}/sbin
	mkdir -p ${DESTDIR}${MANPREFIX}/man8
	cp -f start-stop-daemon   ${DESTDIR}${PREFIX}/sbin/
	cp -f start-stop-daemon.8 ${DESTDIR}${MANPREFIX}/man8/
	chmod 0755 ${DESTDIR}${PREFIX}/sbin/start-stop-daemon
	chmod 0644 ${DESTDIR}${MANPREFIX}/man8/start-stop-daemon.8

uninstall:
	rm -f ${DESTDIR}${PREFIX}/start-stop-daemon
	rm -f ${DESTDIR}${MANPREFIX}/man8/start-stop-daemon.8

clean:
	rm -f start-stop-daemon start-stop-daemon.o start-stop-daemon.8

.PHONY: all install uninstall clean
