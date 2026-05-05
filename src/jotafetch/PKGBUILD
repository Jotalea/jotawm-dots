pkgname=jotafetch
pkgver=1.0.0
pkgrel=1
pkgdesc="A neofetch-like utility made by Jotalea"
arch=('any')
url="https://github.com/jotalea/jotafetch"
license=('MIT')
depends=('bash')
source=("$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz")
sha256sums=('SKIP')

package() {
  cd "$pkgname-$pkgver"
  make DESTDIR="$pkgdir" PREFIX=/usr install
}
