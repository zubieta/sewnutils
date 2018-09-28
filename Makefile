.PHONY: install uninstall
PROG ?= colors
PREFIX ?= /usr
DESTDIR ?= $(PREFIX)/bin

all: install

install:
	@ln -vfs $(shell pwd)/colors.sh $(DESTDIR)/$(PROG)
	@echo "$(PROG) was installed succesfully"
	@echo

uninstall:
	@rm -vf $(DESTDIR)/$(PROG)

