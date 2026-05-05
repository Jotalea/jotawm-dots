PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
MANDIR ?= $(PREFIX)/share/man/man1

.PHONY: install uninstall

install:
	install -Dm755 jotafetch $(DESTDIR)$(BINDIR)/jotafetch
	install -Dm644 jotafetch.1 $(DESTDIR)$(MANDIR)/jotafetch.1

uninstall:
	rm -f $(DESTDIR)$(BINDIR)/jotafetch
	rm -f $(DESTDIR)$(MANDIR)/jotafetch.1
