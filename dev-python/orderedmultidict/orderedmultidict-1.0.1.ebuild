# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python2_{6,7} python3_{4..10} )
inherit distutils-r1

DESCRIPTION="A multivalue dictionary that helps power furl"
HOMEPAGE="https://github.com/gruns/orderedmultidict"
SRC_URI="https://files.pythonhosted.org/packages/53/4e/3823a27d764bb8388711f4cb6f24e58453e92d6928f4163fdb01e3a3789f/orderedmultidict-1.0.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm64"

DEPEND=">=dev-python/six-1.16.0"
RDEPEND="${DEPEND}"
BDEPEND=""

RESTRICT="mirror"
