# Copyright 2021 Agnostiq Inc.
#
# This file is part of Covalent.
#
# Licensed under the GNU Affero General Public License 3.0 (the "License").
# A copy of the License may be obtained with this software package or at
#
#      https://www.gnu.org/licenses/agpl-3.0.en.html
#
# Use of this file is prohibited except in compliance with the License. Any
# modifications or derivative works of this file must retain this copyright
# notice, and modified files must contain a notice indicating that they have
# been altered from the originals.
#
# Covalent is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE. See the License for more details.
#
# Relief from the License may be granted by purchasing a commercial license.

EAPI="8"

DISTUTILS_USE_PEP517=setuptools
PYTHON_FULLY_TESTED=( python3_8 )
PYTHON_COMPAT=( python3_{8..10} )
inherit distutils-r1

DESCRIPTION="Covalent Workflow Tool"
HOMEPAGE="https://github.com/AgnostiqHQ/covalent"
SRC_URI="https://files.pythonhosted.org/packages/c0/df/4d5504e77dfe31a5e4b5244d1258666922ae433f1c1d92d39c9db9af8e9c/${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="amd64 arm64"
IUSE="aws doc systemd test"

DEPEND=">=dev-python/setuptools-62.3.3[${PYTHON_USEDEP}]"
RDEPEND="
=dev-python/aiofiles-0.8.0-r1[${PYTHON_USEDEP}]
=dev-python/aiohttp-3.8.1-r1[${PYTHON_USEDEP}]
=dev-python/alembic-1.8.1[${PYTHON_USEDEP}]
=dev-python/bidict-0.22.0[${PYTHON_USEDEP}]
=dev-python/click-8.1.3[${PYTHON_USEDEP}]
=dev-python/cloudpickle-2.1.0[${PYTHON_USEDEP}]
=dev-python/dask-2022.6.0[${PYTHON_USEDEP}]
=dev-python/fastapi-0.79.0[${PYTHON_USEDEP}]
=dev-python/furl-2.1.3[${PYTHON_USEDEP}]
=dev-python/networkx-2.8.5[${PYTHON_USEDEP}]
=dev-python/psutil-5.9.1[${PYTHON_USEDEP}]
=dev-python/pydantic-1.9.1[${PYTHON_USEDEP}]
dev-python/python-engineio[${PYTHON_USEDEP}]
=dev-python/requests-2.28.1[${PYTHON_USEDEP}]
=dev-python/simplejson-3.17.6[${PYTHON_USEDEP}]
=dev-python/python-socketio-5.7.1[${PYTHON_USEDEP}]
=dev-python/sqlalchemy-1.4.39[${PYTHON_USEDEP}]
=dev-python/toml-0.10.2-r1[${PYTHON_USEDEP}]
=dev-python/uvicorn-0.18.2[${PYTHON_USEDEP}]
=dev-python/werkzeug-2.2.2[${PYTHON_USEDEP}]
>=net-misc/rsync-3.2.3-r4
"
RESTRICT="mirror"

src_install() {
	distutils-r1_src_install
	newinitd ${FILESDIR}/covalent.initd covalent
	newconfd ${FILESDIR}/covalent.confd covalent
}
