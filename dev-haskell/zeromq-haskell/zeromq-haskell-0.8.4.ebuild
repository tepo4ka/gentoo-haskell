# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings to ZeroMQ 2.1.x"
HOMEPAGE="http://github.com/twittner/zeromq-haskell/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

RDEPEND=">=dev-lang/ghc-6.8.2
		<net-libs/zeromq-3"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/hunit
			>=dev-haskell/quickcheck-2.4
			>=dev-haskell/test-framework-0.4
			>=dev-haskell/test-framework-hunit-0.2
			>=dev-haskell/test-framework-quickcheck2-0.2
		)
		"

src_configure() {
	cabal_src_configure $(use test && use_enable test tests) #395351
}
