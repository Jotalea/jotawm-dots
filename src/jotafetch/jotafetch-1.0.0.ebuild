# Copyright 2026 Jotalea
# Distributed under the terms of the MIT License

EAPI=8

DESCRIPTION="A neofetch-like utility made by Jotalea"
HOMEPAGE="https://github.com/jotalea/jotafetch"
SRC_URI="https://github.com/jotalea/jotafetch/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="app-shells/bash"

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
}
