.POSIX:

include config.mk

all: start-stop-daemon start-stop-daemon.8

start-stop-daemon.8: start-stop-daemon.8.scdoc
	scdoc < start-stop-daemon.8.scdoc > $@

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/sbin
	mkdir -p $(DESTDIR)$(MANPREFIX)/man8
	cp -f start-stop-daemon $(DESTDIR)$(PREFIX)/sbin/
	cp -f start-stop-daemon.8 $(DESTDIR)$(MANPREFIX)/man8/
	chmod 0755 $(DESTDIR)$(PREFIX)/sbin/start-stop-daemon
	chmod 0644 $(DESTDIR)$(MANPREFIX)/man8/start-stop-daemon.8

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/sbin/start-stop-daemon
	rm -f $(DESTDIR)$(MANPREFIX)/man8/start-stop-daemon.8

clean:
	rm -f start-stop-daemon start-stop-daemon.8

release:
	git tag -a v$(VERSION) -m v$(VERSION)

.PHONY: all install uninstall clean release
