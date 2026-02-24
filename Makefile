enable-service:
	systemctl daemon-reload
	systemctl reenable p14s-wakeup-wifi-reset.service

disable-service:
	systemctl disable p14s-wakeup-wifi-reset.service || true

install:
	mkdir -p $(PREFIX)/usr/bin
	mkdir -p $(PREFIX)/usr/lib/systemd/system
	install -Dm755 p14s-wifi-reset $(PREFIX)/usr/bin/p14s-wifi-reset
	install -Dm644 p14s-wakeup-wifi-reset.service $(PREFIX)/usr/lib/systemd/system/p14s-wakeup-wifi-reset.service

remove: disable-service
	rm $(PREFIX)/usr/bin/p14s-wifi-reset || true
	rm $(PREFIX)/usr/lib/systemd/system/p14s-wakeup-wifi-reset.service || true

install-and-enable: install
	make enable-service
