# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Dependent finite maps (partial dependent products)"
HOMEPAGE="https://github.com/mokus0/dependent-map"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/constraints-extras-0.2.3.0:=[profile?] <dev-haskell/constraints-extras-0.4:=[profile?]
	>=dev-haskell/dependent-sum-0.6.1:=[profile?] <dev-haskell/dependent-sum-0.7:=[profile?]
	>=dev-lang/ghc-8.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"
