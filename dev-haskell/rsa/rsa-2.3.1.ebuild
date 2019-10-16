# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: -oldbase,-buildtestexecutable

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="RSA"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Implementation of RSA, using the padding schemes of PKCS#1 v2.1"
HOMEPAGE="http://hackage.haskell.org/package/RSA"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/crypto-api-0.10:=[profile?] <dev-haskell/crypto-api-0.14:=[profile?]
	>=dev-haskell/crypto-pubkey-types-0.2:=[profile?] <dev-haskell/crypto-pubkey-types-0.6:=[profile?]
	>=dev-haskell/sha-1.6.4.1:=[profile?] <dev-haskell/sha-2.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/crypto-pubkey-types-0.4 <dev-haskell/crypto-pubkey-types-0.6
		>=dev-haskell/drbg-0.5.2 <dev-haskell/drbg-0.7
		>=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-3
		>=dev-haskell/tagged-0.2 <dev-haskell/tagged-0.9
		>=dev-haskell/test-framework-0.8.0.3 <dev-haskell/test-framework-0.10
		>=dev-haskell/test-framework-quickcheck2-0.3.0.2 <dev-haskell/test-framework-quickcheck2-0.5 )
"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}"/${P}-p1-ghc-8.8.patch
		 "${FILESDIR}"/${P}-p2-ghc-8.8.patch
		 "${FILESDIR}"/${P}-p3-ghc-8.8.patch)

src_configure() {
	haskell-cabal_src_configure \
		--flag=-buildtestexecutable \
		--flag=-oldbase
}
