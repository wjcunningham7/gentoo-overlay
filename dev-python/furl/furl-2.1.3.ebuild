# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python2_7 python3_{4..10} )
inherit distutils-r1

DESCRIPTION="A small Python library that makes parsing and manipulating URLs easy"
HOMEPAGE="https://github.com/gruns/furl"
SRC_URI="https://files.pythonhosted.org/packages/2a/0a/31a43d63d25f045b88fe7d3267e9ec3ce3820572205a9342c1cdf2ad2ca3/furl-2.1.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm64"

DEPEND=">=dev-python/six-1.16.0 >=dev-python/orderedmultidict-1.0.1"
RDEPEND="${DEPEND}"
BDEPEND=""

RESTRICT="mirror"
