# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999
#hackport: flags: -disable-git-info,-hide-dependency-versions,-integration-tests,-static

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="The Haskell Tool Stack"
HOMEPAGE="http://haskellstack.org"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # installs packages from network

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?] <dev-haskell/aeson-1.1:=[profile?]
	>=dev-haskell/annotated-wl-pprint-0.7.0:=[profile?] <dev-haskell/annotated-wl-pprint-0.8:=[profile?]
	>=dev-haskell/ansi-terminal-0.6.2.3:=[profile?] <dev-haskell/ansi-terminal-0.7:=[profile?]
	>=dev-haskell/async-2.0.2:=[profile?] <dev-haskell/async-2.2:=[profile?]
	>=dev-haskell/attoparsec-0.12.1.5:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base-compat-0.6:=[profile?] <dev-haskell/base-compat-0.10:=[profile?]
	>=dev-haskell/base16-bytestring-0.1.1.6:=[profile?] <dev-haskell/base16-bytestring-0.2:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/binary-tagged-0.1.1:=[profile?] <dev-haskell/binary-tagged-0.2:=[profile?]
	>=dev-haskell/blaze-builder-0.4.0.2:=[profile?] <dev-haskell/blaze-builder-0.5:=[profile?]
	>=dev-haskell/byteable-0.1.1:=[profile?] <dev-haskell/byteable-0.2:=[profile?]
	>=dev-haskell/cabal-1.18.1.5:=[profile?] <dev-haskell/cabal-1.25:=[profile?]
	>=dev-haskell/clock-0.7.2:=[profile?] <dev-haskell/clock-0.8:=[profile?]
	>=dev-haskell/conduit-1.2.8:=[profile?] <dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/conduit-extra-1.1.7.1:=[profile?] <dev-haskell/conduit-extra-1.2:=[profile?]
	>=dev-haskell/cryptohash-0.11.6:=[profile?] <dev-haskell/cryptohash-0.12:=[profile?]
	>=dev-haskell/cryptohash-conduit-0.1.1:=[profile?] <dev-haskell/cryptohash-conduit-0.2:=[profile?]
	>=dev-haskell/either-4.4.1.1:=[profile?] <dev-haskell/either-4.5:=[profile?]
	>=dev-haskell/errors-2.1.2:=[profile?] <dev-haskell/errors-2.2:=[profile?]
	>=dev-haskell/exceptions-0.8.0.2:=[profile?] <dev-haskell/exceptions-0.9:=[profile?]
	>=dev-haskell/extra-1.4.10:=[profile?] <dev-haskell/extra-1.6:=[profile?]
	>=dev-haskell/fast-logger-2.3.1:=[profile?] <dev-haskell/fast-logger-2.5:=[profile?]
	>=dev-haskell/file-embed-0.0.10:=[profile?] <dev-haskell/file-embed-0.1:=[profile?]
	>=dev-haskell/filelock-0.1.0.1:=[profile?] <dev-haskell/filelock-0.2:=[profile?]
	>=dev-haskell/fsnotify-0.2.1:=[profile?] <dev-haskell/fsnotify-0.3:=[profile?]
	>=dev-haskell/generic-deriving-1.10.5:=[profile?] <dev-haskell/generic-deriving-1.12:=[profile?]
	>=dev-haskell/gitrev-1.1:=[profile?] <dev-haskell/gitrev-1.3:=[profile?]
	>=dev-haskell/hashable-1.2.3.2:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/hastache-0.6.1:=[profile?] <dev-haskell/hastache-0.7:=[profile?]
	>=dev-haskell/hit-0.6.3:=[profile?] <dev-haskell/hit-0.7:=[profile?]
	>=dev-haskell/hpack-0.14.0:=[profile?] <dev-haskell/hpack-0.16:=[profile?]
	>=dev-haskell/http-client-0.5.3.3:=[profile?] <dev-haskell/http-client-0.6:=[profile?]
	>=dev-haskell/http-client-tls-0.3.3:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-conduit-2.2.3:=[profile?] <dev-haskell/http-conduit-2.3:=[profile?]
	>=dev-haskell/http-types-0.8.6:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
	>=dev-haskell/lifted-async-0.9.0:=[profile?] <dev-haskell/lifted-async-0.10:=[profile?]
	>=dev-haskell/lifted-base-0.2.3.8:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/microlens-0.3.0.0:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-haskell/monad-control-1.0.1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/monad-logger-0.3.13.1:=[profile?] <dev-haskell/monad-logger-0.4:=[profile?]
	>=dev-haskell/monad-unlift-0.2.0:=[profile?] <dev-haskell/monad-unlift-0.3:=[profile?]
	>=dev-haskell/mtl-2.1.3.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/open-browser-0.2.1:=[profile?] <dev-haskell/open-browser-0.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.13:=[profile?]
	>=dev-haskell/optparse-simple-0.0.3:=[profile?] <dev-haskell/optparse-simple-0.1:=[profile?]
	>=dev-haskell/path-0.5.9:=[profile?] <dev-haskell/path-0.6:=[profile?]
	>=dev-haskell/path-io-1.1.0:=[profile?] <dev-haskell/path-io-2.0.0:=[profile?]
	>=dev-haskell/persistent-2.1.2:=[profile?] <dev-haskell/persistent-2.7:=[profile?]
	>=dev-haskell/persistent-template-2.1.1:=[profile?] <dev-haskell/persistent-template-2.6:=[profile?]
	>=dev-haskell/pid1-0.1:=[profile?] <dev-haskell/pid1-0.2:=[profile?]
	>=dev-haskell/project-template-0.2:=[profile?] <dev-haskell/project-template-0.3:=[profile?]
	>=dev-haskell/regex-applicative-text-0.1.0.1:=[profile?] <dev-haskell/regex-applicative-text-0.2:=[profile?]
	>=dev-haskell/resourcet-1.1.4.1:=[profile?] <dev-haskell/resourcet-1.2:=[profile?]
	>=dev-haskell/retry-0.6:=[profile?] <dev-haskell/retry-0.8:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/safe-exceptions-0.1.4.0:=[profile?] <dev-haskell/safe-exceptions-0.2:=[profile?]
	>=dev-haskell/semigroups-0.5:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/split-0.2.3.1:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/stm-2.4.4:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/store-0.2.1.0:=[profile?] <dev-haskell/store-0.4:=[profile?]
	>=dev-haskell/streaming-commons-0.1.10.0:=[profile?] <dev-haskell/streaming-commons-0.2:=[profile?]
	>=dev-haskell/tar-0.5.0.3:=[profile?] <dev-haskell/tar-0.6:=[profile?]
	>=dev-haskell/temporary-1.2.0.3:=[profile?] <dev-haskell/temporary-1.3:=[profile?]
	>=dev-haskell/text-1.2.0.4:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-binary-0.2.1.1:=[profile?] <dev-haskell/text-binary-0.3:=[profile?]
	>=dev-haskell/text-metrics-0.1:=[profile?] <dev-haskell/text-metrics-0.3:=[profile?]
	>=dev-haskell/tls-1.3.8:=[profile?] <dev-haskell/tls-1.4:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/unicode-transforms-0.1:=[profile?] <dev-haskell/unicode-transforms-0.3:=[profile?]
	>=dev-haskell/unix-compat-0.4.1.4:=[profile?] <dev-haskell/unix-compat-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5.1:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10.12.3:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-haskell/vector-binary-instances-0.2.3.2:=[profile?] <dev-haskell/vector-binary-instances-0.3:=[profile?]
	>=dev-haskell/yaml-0.8.20:=[profile?] <dev-haskell/yaml-0.9:=[profile?]
	>=dev-haskell/zip-archive-0.2.3.7:=[profile?] <dev-haskell/zip-archive-0.4:=[profile?]
	>=dev-haskell/zlib-0.5.4.2:=[profile?] <dev-haskell/zlib-0.7:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	>dev-haskell/persistent-sqlite-2.5.0.1:=[profile?] <dev-haskell/persistent-sqlite-2.7:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/attoparsec-0.13.1.0 <dev-haskell/attoparsec-0.14
		>=dev-haskell/conduit-extra-1.1.14 <dev-haskell/conduit-extra-1.2
		>=dev-haskell/cryptohash-0.11.9 <dev-haskell/cryptohash-0.12
		>=dev-haskell/exceptions-0.8.3 <dev-haskell/exceptions-0.9
		>=dev-haskell/hspec-2.2 <dev-haskell/hspec-2.4
		>=dev-haskell/monad-logger-0.3.20.1 <dev-haskell/monad-logger-0.4
		>=dev-haskell/mono-traversable-0.10.2 <dev-haskell/mono-traversable-0.11
		>=dev-haskell/neat-interpolation-0.3 <dev-haskell/neat-interpolation-0.4
		>=dev-haskell/quickcheck-2.8.2 <dev-haskell/quickcheck-2.10
		>=dev-haskell/resourcet-1.1.8.1 <dev-haskell/resourcet-1.2
		>=dev-haskell/smallcheck-1.1.1 <dev-haskell/smallcheck-1.2
		>=dev-haskell/temporary-1.2.0.4 <dev-haskell/temporary-1.3
		>=dev-haskell/text-1.2.2.1 <dev-haskell/text-1.3
		>=dev-haskell/th-reify-many-0.1.6 <dev-haskell/th-reify-many-0.2
		>=dev-haskell/vector-0.11.0.0 <dev-haskell/vector-0.12 )
"

PATCHES=("${FILESDIR}"/${P}-oa-0.14.patch)

src_prepare() {
	default

	cabal_chdeps \
		'directory >=1.2.1.0 && <1.3' 'directory >=1.2.1.0' \
		'optparse-applicative ==0.13.*' 'optparse-applicative >= 0.13'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-disable-git-info \
		--flag=-hide-dependency-versions \
		--flag=-integration-tests \
		--flag=-static
}
