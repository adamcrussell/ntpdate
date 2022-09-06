default:
	@echo "Nothing to make, run 'make install' for installation"

install:
	mkdir -p $(DESTDIR)/{etc/cron.daily,usr/{sbin,share/man/{.,de}/man1}}
	install -m 755 ntpdate $(DESTDIR)/usr/sbin/ntpdate
	install -m 755 ntpdate.cron $(DESTDIR)/etc/cron.daily/ntpdate
	install -m 644 ntpdate.en.1.gz $(DESTDIR)/usr/share/man/man1/ntpdate.1.gz
	install -m 644 ntpdate.de.1.gz $(DESTDIR)/usr/share/man/de/man1/ntpdate.1.gz
