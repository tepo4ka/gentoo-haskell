# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="CAES Language for Synchronous Hardware - Prelude library"
HOMEPAGE="https://clash-lang.org/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+benchmarks +large-tuples multiple-hidden strict-mapsignal super-strict"

RDEPEND=">=dev-haskell/bifunctors-5.4.0:=[profile?] <dev-haskell/bifunctors-6.0:=[profile?]
	>=dev-haskell/constraints-0.9:=[profile?] <dev-haskell/constraints-1.0:=[profile?]
	>=dev-haskell/data-binary-ieee754-0.4.4:=[profile?] <dev-haskell/data-binary-ieee754-0.6:=[profile?]
	>=dev-haskell/data-default-class-0.1.2:=[profile?] <dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-haskell/ghc-typelits-extra-0.3.3:=[profile?] <dev-haskell/ghc-typelits-extra-0.5:=[profile?]
	>=dev-haskell/ghc-typelits-knownnat-0.7.2:=[profile?] <dev-haskell/ghc-typelits-knownnat-0.8:=[profile?]
	>=dev-haskell/ghc-typelits-natnormalise-0.7.2:=[profile?] <dev-haskell/ghc-typelits-natnormalise-0.8:=[profile?]
	>=dev-haskell/half-0.2.2.3:=[profile?] <dev-haskell/half-1.0:=[profile?]
	>=dev-haskell/hashable-1.2.1.0:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/interpolate-0.2:=[profile?] <dev-haskell/interpolate-0.3:=[profile?]
	>=dev-haskell/lens-4.10:=[profile?] <dev-haskell/lens-4.20:=[profile?]
	>=dev-haskell/quickcheck-2.7:2=[profile?] <dev-haskell/quickcheck-2.15:2=[profile?]
	>=dev-haskell/recursion-schemes-5.1:=[profile?] <dev-haskell/recursion-schemes-5.3:=[profile?]
	>=dev-haskell/reflection-2:=[profile?] <dev-haskell/reflection-2.2:=[profile?]
	>=dev-haskell/singletons-1.0:=[profile?] <dev-haskell/singletons-3.0:=[profile?]
	>=dev-haskell/text-0.11.3.1:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-show-3.8:=[profile?] <dev-haskell/text-show-3.10:=[profile?]
	>=dev-haskell/th-abstraction-0.2.10:=[profile?] <dev-haskell/th-abstraction-0.5.0:=[profile?]
	>=dev-haskell/th-lift-0.7.0:=[profile?] <dev-haskell/th-lift-0.9:=[profile?]
	>=dev-haskell/th-orphans-0.13.1:=[profile?] <dev-haskell/th-orphans-1.0:=[profile?]
	>=dev-haskell/type-errors-0.2.0.0:=[profile?] <dev-haskell/type-errors-0.3:=[profile?]
	>=dev-haskell/uniplate-1.6.12:=[profile?] <dev-haskell/uniplate-1.7:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-1.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	>=dev-haskell/cabal-doctest-1.0.1 <dev-haskell/cabal-doctest-1.1
	test? ( >=dev-haskell/doctest-0.9.1 <dev-haskell/doctest-0.18
			dev-haskell/hedgehog
			>=dev-haskell/hint-0.7 <dev-haskell/hint-0.10
			>=dev-haskell/quickcheck-classes-base-0.6 <dev-haskell/quickcheck-classes-base-1.0
			>=dev-haskell/tasty-1.2 <dev-haskell/tasty-1.5
			dev-haskell/tasty-hedgehog
			dev-haskell/tasty-hunit
			dev-haskell/tasty-quickcheck
			>=dev-haskell/doctest-0.9.1 <dev-haskell/doctest-0.18
		)
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag benchmarks benchmarks) \
		$(cabal_flag test doctests) \
		$(cabal_flag large-tuples large-tuples) \
		$(cabal_flag multiple-hidden multiple-hidden) \
		$(cabal_flag strict-mapsignal strict-mapsignal) \
		$(cabal_flag super-strict super-strict) \
		$(cabal_flag test unittests)
}
