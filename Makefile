.PHONY: all
all: install

.PHONY: install
install: /etc/udev/rules.d/keyfile.rules

/etc/udev/rules.d/keyfile.rules: install/keyfile.rules.template
	sed 's|/PATH/TO|'"$$(readlink -f .)"'|g' $< >$@
