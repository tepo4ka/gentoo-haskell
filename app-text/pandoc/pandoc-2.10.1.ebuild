# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999
#hackport: flags: -static

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conversion between markup formats"
HOMEPAGE="https://pandoc.org"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="embed-data-files optimize trypandoc"

RESTRICT=test # fails

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/aeson-pretty-0.8.5:=[profile?] <dev-haskell/aeson-pretty-0.9:=[profile?]
	>=dev-haskell/attoparsec-0.12:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base-compat-0.9:=[profile?]
	>=dev-haskell/base64-bytestring-0.1:=[profile?] <dev-haskell/base64-bytestring-1.2:=[profile?]
	>=dev-haskell/blaze-html-0.9:=[profile?] <dev-haskell/blaze-html-0.10:=[profile?]
	>=dev-haskell/blaze-markup-0.8:=[profile?] <dev-haskell/blaze-markup-0.9:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/commonmark-0.1.0.1:=[profile?] <dev-haskell/commonmark-0.2:=[profile?]
	>=dev-haskell/commonmark-extensions-0.2:=[profile?] <dev-haskell/commonmark-extensions-0.3:=[profile?]
	>=dev-haskell/commonmark-pandoc-0.2:=[profile?] <dev-haskell/commonmark-pandoc-0.3:=[profile?]
	>=dev-haskell/connection-0.3.1:=[profile?]
	>=dev-haskell/data-default-0.4:=[profile?] <dev-haskell/data-default-0.8:=[profile?]
	>=dev-haskell/doclayout-0.3:=[profile?] <dev-haskell/doclayout-0.4:=[profile?]
	>=dev-haskell/doctemplates-0.8.2:=[profile?] <dev-haskell/doctemplates-0.9:=[profile?]
	>=dev-haskell/emojis-0.1:=[profile?] <dev-haskell/emojis-0.2:=[profile?]
	>=dev-haskell/exceptions-0.8:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/glob-0.7:=[profile?] <dev-haskell/glob-0.11:=[profile?]
	>=dev-haskell/haddock-library-1.8:=[profile?] <dev-haskell/haddock-library-1.10:=[profile?]
	>=dev-haskell/hslua-1.1:=[profile?] <dev-haskell/hslua-1.2:=[profile?]
	>=dev-haskell/hslua-module-system-0.2:=[profile?] <dev-haskell/hslua-module-system-0.3:=[profile?]
	>=dev-haskell/hslua-module-text-0.2.1:=[profile?] <dev-haskell/hslua-module-text-0.3:=[profile?]
	>=dev-haskell/hsyaml-0.2:=[profile?] <dev-haskell/hsyaml-0.3:=[profile?]
	>=dev-haskell/http-4000.0.5:=[profile?] <dev-haskell/http-4000.4:=[profile?]
	>=dev-haskell/http-client-0.4.30:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-client-tls-0.2.4:=[profile?] <dev-haskell/http-client-tls-0.4:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/ipynb-0.1:=[profile?] <dev-haskell/ipynb-0.2:=[profile?]
	>=dev-haskell/jira-wiki-markup-1.3.2:=[profile?] <dev-haskell/jira-wiki-markup-1.4:=[profile?]
	>=dev-haskell/juicypixels-3.1.6.1:=[profile?] <dev-haskell/juicypixels-3.4:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/pandoc-types-1.21:=[profile?] <dev-haskell/pandoc-types-1.22:=[profile?]
	>=dev-haskell/parsec-3.1:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/random-1:=[profile?] <dev-haskell/random-1.2:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/sha-1.6:=[profile?] <dev-haskell/sha-1.7:=[profile?]
	>=dev-haskell/skylighting-0.8.5:=[profile?] <dev-haskell/skylighting-0.9:=[profile?]
	>=dev-haskell/skylighting-core-0.8.5:=[profile?] <dev-haskell/skylighting-core-0.9:=[profile?]
	>=dev-haskell/split-0.2:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/syb-0.1:=[profile?] <dev-haskell/syb-0.8:=[profile?]
	>=dev-haskell/tagsoup-0.14.6:=[profile?] <dev-haskell/tagsoup-0.15:=[profile?]
	>=dev-haskell/temporary-1.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/texmath-0.12.0.2:=[profile?] <dev-haskell/texmath-0.13:=[profile?]
	>=dev-haskell/text-1.1.1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/text-conversions-0.3:=[profile?] <dev-haskell/text-conversions-0.4:=[profile?]
	>=dev-haskell/unicode-transforms-0.3:=[profile?] <dev-haskell/unicode-transforms-0.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/xml-1.3.12:=[profile?] <dev-haskell/xml-1.4:=[profile?]
	>=dev-haskell/zip-archive-0.2.3.4:=[profile?] <dev-haskell/zip-archive-0.5:=[profile?]
	>=dev-haskell/zlib-0.5:=[profile?] <dev-haskell/zlib-0.7:=[profile?]
	>=dev-lang/ghc-8.0.1:=
	embed-data-files? ( >=dev-haskell/file-embed-0.0:=[profile?] <dev-haskell/file-embed-0.1:=[profile?] )
	trypandoc? ( >=dev-haskell/wai-0.3:=[profile?]
			dev-haskell/wai-extra:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2
	test? ( >=dev-haskell/diff-0.2 <dev-haskell/diff-0.5
		>=dev-haskell/executable-path-0.0 <dev-haskell/executable-path-0.1
		>=dev-haskell/quickcheck-2.4 <dev-haskell/quickcheck-2.15
		>=dev-haskell/tasty-0.11 <dev-haskell/tasty-1.4
		>=dev-haskell/tasty-golden-2.3 <dev-haskell/tasty-golden-2.4
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-lua-0.2 <dev-haskell/tasty-lua-0.3
		>=dev-haskell/tasty-quickcheck-0.8 <dev-haskell/tasty-quickcheck-0.11 )
"

src_prepare() {
	default
	# optimisations require ~16GB of memory on ghc-8.8.3
	use optimize || HCFLAGS+=' -O0'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag embed-data-files embed_data_files) \
		--flag=-static \
		$(cabal_flag trypandoc trypandoc)
}

src_install() {
	haskell-cabal_src_install

	doman "${S}/man/${PN}.1"
}
