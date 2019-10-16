# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="STM-specialised Hash Array Mapped Trie"
HOMEPAGE="https://github.com/nikita-volkov/stm-hamt"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/deferred-folds-0.9:=[profile?] <dev-haskell/deferred-folds-0.10:=[profile?]
	>=dev-haskell/focus-1:=[profile?] <dev-haskell/focus-1.1:=[profile?]
	<dev-haskell/hashable-2:=[profile?]
	>=dev-haskell/list-t-1.0.1:=[profile?] <dev-haskell/list-t-1.1:=[profile?]
	>=dev-haskell/primitive-0.7:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/primitive-extras-0.8:=[profile?] <dev-haskell/primitive-extras-0.9:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/quickcheck-2.8.1 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.11 <dev-haskell/quickcheck-instances-0.4
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-0.12 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.9 <dev-haskell/tasty-quickcheck-0.11 )
"
