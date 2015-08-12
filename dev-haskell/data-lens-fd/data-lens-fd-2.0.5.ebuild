# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Lenses"
HOMEPAGE="http://github.com/roconnor/data-lens-fd/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+derivedatatypeable"

RDEPEND=">=dev-haskell/comonad-4.0:=[profile?] <dev-haskell/comonad-4.3:=[profile?]
	>=dev-haskell/data-lens-2.10.4:=[profile?] <dev-haskell/data-lens-2.11:=[profile?]
	>=dev-haskell/mtl-2.0.1.0:=[profile?] <=dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag derivedatatypeable derivedatatypeable)
}
