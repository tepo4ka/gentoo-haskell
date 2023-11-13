# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite circular depends
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"
inherit haskell-cabal

DESCRIPTION="Monadic parser combinators"
HOMEPAGE="https://github.com/haskell/parsec"

LICENSE="BSD-2"
SLOT="0/${PV}"
#keep in sync with ghc-9.4
#KEYWORDS="~amd64"

RESTRICT=test # circular dependencies: dev-haskell/base-orphans->cabal->parsec[test]->test-framework-hunit->test-framework->base-orphans

RDEPEND="
	>=dev-lang/ghc-9.2.4:=
"
DEPEND="${RDEPEND}
"
#	test? (
#		>=dev-haskell/tasty-1.4 <dev-haskell/tasty-1.5
#		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
#	)

CABAL_CORE_LIB_GHC_PV="9.4.7 9.4.8 9.6.2"
