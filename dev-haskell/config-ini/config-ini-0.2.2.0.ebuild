# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999
#hackport: flags: -enable-doctests

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A library for simple INI-based configuration files"
HOMEPAGE="https://github.com/aisamanra/config-ini"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # hangs up

RDEPEND=">=dev-haskell/megaparsec-6:=[profile?] <dev-haskell/megaparsec-7:=[profile?]
	>=dev-haskell/text-1.2.2:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/doctest
		dev-haskell/hedgehog
		dev-haskell/ini
		dev-haskell/microlens )
"

src_configure() {
	haskell-cabal_src_configure \
		--flags=-enable-doctests
}
