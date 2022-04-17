# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Pandoc-style document templates"
HOMEPAGE="https://github.com/jgm/doctemplates#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/doclayout-0.4:=[profile?] <dev-haskell/doclayout-0.5:=[profile?]
	>=dev-haskell/hsyaml-0.2:=[profile?] <dev-haskell/hsyaml-0.3:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/text-conversions:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/glob
		dev-haskell/tasty
		dev-haskell/tasty-golden
		dev-haskell/tasty-hunit
		dev-haskell/temporary )
"
