NAME = runit-services
SHELL = /bin/bash
INSTALL = /usr/bin/install
MSGFMT = /usr/bin/msgfmt
SED = /bin/sed
FIND = /usr/bin/find
DESTDIR =
BINDIR = /usr/bin
DOCDIR = /usr/share/doc/$(NAME)
SRVDIR = /etc/sv
RUNITSVDIR = /service

all:

install: all
	$(INSTALL) -d $(DESTDIR)$(BINDIR)
	$(INSTALL) -d $(DESTDIR)$(DOCDIR)
	$(INSTALL) -d $(DESTDIR)$(SRVDIR)
	$(INSTALL) -D -m 0755 rsvlog "$(DESTDIR)$(BINDIR)/rsvlog"
	$(INSTALL) -D -m 0644 COPYRIGHT "$(DESTDIR)$(DOCDIR)/COPYRIGHT"
	$(INSTALL) -D -m 0644 README.md "$(DESTDIR)$(DOCDIR)/README.md"
	for dir in etc/sv/*; do \
		cp -a "$$dir" "$(DESTDIR)$(SRVDIR)/"; \
	done

update-config:
	# update service directory checks
	$(FIND) "$(DESTDIR)$(SRVDIR)" -type f -name run -exec $(SED) -e "s,[[:space:]]/service, $(RUNITSVDIR),g" \
		 -e "s,\"/service,\"$(RUNITSVDIR),g" -i {} \;

uninstall:
	rm $(DESTDIR)$(BINDIR)/rsvlog
	rm -r $(DESTDIR)$(DOCDIR)
