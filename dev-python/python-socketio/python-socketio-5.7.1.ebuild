# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Python implementation of the Socket.IO_ realtime client and server."
HOMEPAGE="https://github.com/miguelgrinberg/python-socketio"
SRC_URI="https://files.pythonhosted.org/packages/ea/2a/47890243ca73960901ca1b298bf4b02469433fce483f7700e93f47be5a75/python-socketio-5.7.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"

DEPEND=">=dev-python/setuptools-62.3.3 >=dev-python/wheel-0.37.1-r1"
RDEPEND="${DEPEND}"
BDEPEND=""

RESTRICT="mirror"
