# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Web development framework"
HOMEPAGE="http://hackage.haskell.org/package/kibro"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cgi:=[profile?]
		dev-haskell/configfile:=[profile?]
		dev-haskell/data-default:=[profile?]
		dev-haskell/fastcgi:=[profile?]
		dev-haskell/mtl:=[profile?]
		dev-haskell/random:=[profile?]
		dev-haskell/regex-compat:=[profile?]
		dev-haskell/regexpr:=[profile?]
		dev-haskell/safe:=[profile?]
		dev-haskell/strict:=[profile?]
		dev-haskell/xhtml:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

src_prepare() {
	epatch "${FILESDIR}"/${P}-base-4.patch
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch

	cabal_chdeps \
		'base==3.*' 'base == 4.*' \
		',haskell98' ' '
}
