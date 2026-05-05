# Contributor: Jotalea <jotalea@example.com>
# Maintainer: Jotalea <jotalea@example.com>
pkgname=jotafetch
pkgver=1.0.0
pkgrel=0
pkgdesc="A neofetch-like utility made by Jotalea"
url="https://github.com/jotalea/jotafetch"
arch="noarch"
license="MIT"
depends="bash"
source="$pkgname-$pkgver.tar.gz::$url/archive/refs/tags/v$pkgver.tar.gz"
builddir="$srcdir/$pkgname-$pkgver"

build() {
	return 0
}

package() {
	make DESTDIR="$pkgdir" PREFIX=/usr install
}

sha512sums="SKIP"
