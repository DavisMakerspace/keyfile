NAME=sentry-usbkey

BINDIR=usr/bin
ETCDIR=etc/$NAME
LIBDIR=usr/lib/$NAME
UDEVRULEDIR=usr/lib/udev/rules.d

do_install() {
  for x in LIBDIR BINDIR ETCDIR UDEVRULEDIR; do
    install -d "$DESTDIR/${!x}"
  done
  install -m644 config "$DESTDIR/$ETCDIR/config"
  install -m644 map "$DESTDIR/$ETCDIR/map"
  install -m755 $NAME "$DESTDIR/$BINDIR/$NAME"
  install -m755 $NAME-udev "$DESTDIR/$LIBDIR/$NAME-udev"
  install -m644 $NAME.rules "$DESTDIR/$UDEVRULEDIR/$NAME.rules"
}

post_install() {
  udevadm control --reload
}

post_remove() {
  udevadm control --reload
}
