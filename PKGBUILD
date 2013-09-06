pkgname=sentry-usbkey-git
_pkgname=sentry-usbkey
pkgver=automatic
pkgver=$(git --git-dir="$startdir"/.git describe --dirty=-modded | sed 's/-/_/g')
pkgrel=1
pkgdesc='Authenticate to sentry using usb keys'
url="http://github.com/DavisMakerspace/$_pkgname"
arch=(any)
license=(unknown)
depends=(bash systemd jshon)
makedepends=()
provides=($_pkgname)
install=install.sh
backup=(etc/$_pkgname/config etc/$_pkgname/map)
source=()
md5sums=()

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
