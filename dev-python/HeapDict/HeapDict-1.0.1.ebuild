# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Heap dictionary in Python"
HOMEPAGE="
	https://github.com/DanielStutzbach/heapdict
"
SRC_URI="https://files.pythonhosted.org/packages/5a/9b/d8963ae7e388270b695f3b556b6dc9adb70ae9618fba09aa1e7b1886652d/HeapDict-1.0.1.tar.gz"

LICENSE="3-BSD"
SLOT="0"
KEYWORDS="amd64"

RDEPEND=""
BDEPEND=""

distutils_enable_tests pytest
