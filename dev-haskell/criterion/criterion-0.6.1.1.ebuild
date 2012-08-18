# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Robust, reliable performance measurement and analysis"
HOMEPAGE="https://github.com/bos/criterion"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.3.2.12[profile?]
		>=dev-haskell/deepseq-1.1.0.0[profile?]
		>=dev-haskell/hastache-0.1.5[profile?]
		>=dev-haskell/mtl-2[profile?]
		>=dev-haskell/mwc-random-0.8.0.3[profile?]
		>=dev-haskell/parsec-3.1.0[profile?]
		>=dev-haskell/statistics-0.10.0.0[profile?]
		dev-haskell/time[profile?]
		dev-haskell/transformers[profile?]
		>=dev-haskell/vector-0.7.1[profile?]
		>=dev-haskell/vector-algorithms-0.4[profile?]
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
