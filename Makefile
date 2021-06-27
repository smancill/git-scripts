PREFIX ?= /usr/local

SCRIPTS := $(wildcard bin/git-*)

.PHONY: all
all:

.PHONY: install
install:
	install -d -m755 $(PREFIX)/bin
	install -m755 $(SCRIPTS) $(DESTDIR)$(PREFIX)/bin

.PHONY: uninstall
uninstall:
	rm -f $(SCRIPTS:%=$(DESTDIR)$(PREFIX)/%)
