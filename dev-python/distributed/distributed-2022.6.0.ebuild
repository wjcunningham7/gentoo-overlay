# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="A distributed task scheduler for Dask."
HOMEPAGE="
	https://github.com/dask/distributed
"
SRC_URI="https://files.pythonhosted.org/packages/b6/6d/3cd4bd08a48dab409392f428d5d4cdedabeabd68f55661de970f36405342/distributed-2022.6.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"

DEPEND=""
RDEPEND="
>=dev-python/click-6.6[${PYTHON_USEDEP}]
>=dev-python/cloudpickle-1.5.0[${PYTHON_USEDEP}]
=dev-python/dask-2022.6.0[${PYTHON_USEDEP}]
>=dev-python/jinja-3.1.2[${PYTHON_USEDEP}]
>=dev-python/locket-1.0.0[${PYTHON_USEDEP}]
>=dev-python/msgpack-0.6.0[${PYTHON_USEDEP}]
>=dev-python/packaging-20.0[${PYTHON_USEDEP}]
>=dev-python/psutil-5.0[${PYTHON_USEDEP}]
>=dev-python/pyyaml-6.0-r1[${PYTHON_USEDEP}]
>=dev-python/sortedcontainers-2.4.0[${PYTHON_USEDEP}]
>=dev-python/tblib-1.6.0[${PYTHON_USEDEP}]
>=dev-python/toolz-0.8.2[${PYTHON_USEDEP}]
>=www-servers/tornado-6.0.3[${PYTHON_USEDEP}]
<www-servers/tornado-6.2[${PYTHON_USEDEP}]
>=dev-python/urllib3-1.26.11[${PYTHON_USEDEP}]
>=dev-python/zict-0.1.3[${PYTHON_USEDEP}]
"
BDEPEND=""

distutils_enable_tests pytest
