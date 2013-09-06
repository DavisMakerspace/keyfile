pkgname=sentry-usbkey-git
pkgver=automatic
pkgver=$(git --git-dir="$startdir"/.git describe --dirty=-modded | sed 's/-/_/g')
pkgrel=1
pkgdesc='Authenticate to sentry using usb keys'
url='http://github.com/DavisMakerspace/sentry-usbkey'
arch=(any)
license=(unknown)
depends=(bash systemd jshon)
makedepends=()
provides=(sentry-usbkey)
source=()
md5sums=()
install=install.sh

prepare() {
  cd "$startdir"
  git checkout-index -a -f --prefix="$srcdir/"
}

build() {
  true
}

check() {
  true
}

package() {
  cd "$srcdir"
  DESTDIR=$pkgdir ./install
}
