# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Functions to desugar Template Haskell"
HOMEPAGE="http://www.cis.upenn.edu/~eir/packages/th-desugar"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.1:=[profile?]
	>=dev-haskell/syb-0.4:=[profile?]
	>=dev-haskell/th-expand-syns-0.3.0.6:=[profile?]
	>=dev-haskell/th-lift-0.6.1:=[profile?]
	>=dev-haskell/th-orphans-0.9.1:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/hspec-1.3
		>=dev-haskell/hunit-1.2 )
"
