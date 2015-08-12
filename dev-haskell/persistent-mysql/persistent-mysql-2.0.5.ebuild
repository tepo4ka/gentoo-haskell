# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Backend for the persistent library using MySQL database server"
HOMEPAGE="http://www.yesodweb.com/book/persistent"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-0.5:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/conduit-0.5.3:=[profile?]
	>=dev-haskell/monad-control-0.2:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	>=dev-haskell/mysql-0.1.1.3:=[profile?] <dev-haskell/mysql-0.2:=[profile?]
	>=dev-haskell/mysql-simple-0.2.2.3:=[profile?] <dev-haskell/mysql-simple-0.3:=[profile?]
	>=dev-haskell/persistent-2.0.5:=[profile?] <dev-haskell/persistent-2.1:=[profile?]
	>=dev-haskell/resourcet-0.4.10:=[profile?]
	>=dev-haskell/text-0.11.0.6:=[profile?]
	>=dev-haskell/transformers-0.2.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
