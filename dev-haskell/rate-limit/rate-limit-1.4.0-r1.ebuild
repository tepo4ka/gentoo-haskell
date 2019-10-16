# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A basic library for rate-limiting IO actions"
HOMEPAGE="https://github.com/acw/rate-limit"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/stm-2.4:=[profile?]
	>=dev-haskell/time-units-1.0:=[profile?] <dev-haskell/time-units-2.0:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_prepare() {
	default

	cabal_chdeps \
		'stm        >= 2.4     && < 2.5' 'stm        >= 2.4' \
		'time       >= 1.5.0.1 && < 1.9' 'time       >= 1.5.0.1'
}
