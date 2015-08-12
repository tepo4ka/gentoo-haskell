# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Various cryptographic hashes for bytestrings; CRC32 and Adler32 for now"
HOMEPAGE="http://hackage.haskell.org/package/digest"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="alpha amd64 ia64 ppc ppc64 sparc x86 ~x86-fbsd"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:=
		sys-libs/zlib"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
