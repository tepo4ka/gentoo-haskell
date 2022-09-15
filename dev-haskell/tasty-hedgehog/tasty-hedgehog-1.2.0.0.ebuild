# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Integration for tasty and hedgehog"
HOMEPAGE="https://github.com/qfpl/tasty-hedgehog"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/hedgehog-1.0.2:=[profile?] <dev-haskell/hedgehog-1.1.2:=[profile?]
	>=dev-haskell/tagged-0.8:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/tasty-0.11:=[profile?] <dev-haskell/tasty-1.5:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/tasty-expected-failure-0.11 <dev-haskell/tasty-expected-failure-0.13 )
"