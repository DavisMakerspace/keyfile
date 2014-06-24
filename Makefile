.PHONY: all
all: install

.PHONY: install
install: /etc/udev/rules.d/usbkey.rules

/etc/udev/rules.d/usbkey.rules: install/usbkey.rules.template
	sed 's|/PATH/TO|'"$$(readlink -f .)"'|g' $< >$@
