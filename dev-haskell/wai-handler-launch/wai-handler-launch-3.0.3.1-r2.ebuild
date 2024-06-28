# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Launch a web app in the default browser"
HOMEPAGE="https://hackage.haskell.org/package/wai-handler-launch"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	dev-haskell/async:=[profile?]
	>=dev-haskell/http-types-0.7:=[profile?]
	>=dev-haskell/streaming-commons-0.2:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/warp-3.0:=[profile?] <dev-haskell/warp-3.5:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"