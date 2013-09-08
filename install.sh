NAME=sentry-usbkey

BINDIR=usr/bin
ETCDIR=etc/$NAME
LIBDIR=usr/lib/$NAME
VARDIR=var/lib/$NAME
UDEVRULEDIR=usr/lib/udev/rules.d

do_install() {
  for x in BINDIR ETCDIR LIBDIR VARDIR UDEVRULEDIR; do
    install -d "$DESTDIR/${!x}"
  done
  install -m644 config "$DESTDIR/$ETCDIR/config"
  install -m644 keys "$DESTDIR/$ETCDIR/keys"
  install -m755 $NAME-useradd "$DESTDIR/$BINDIR/$NAME-useradd"
  install -m755 $NAME-reqadd "$DESTDIR/$BINDIR/$NAME-reqadd"
  install -m755 $NAME-reqtry "$DESTDIR/$BINDIR/$NAME-reqtry"
  install -m755 $NAME-udev "$DESTDIR/$LIBDIR/$NAME-udev"
  install -m644 $NAME.rules "$DESTDIR/$UDEVRULEDIR/$NAME.rules"
}

post_install() {
  udevadm control --reload
}

post_remove() {
  udevadm control --reload
}
