# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

KDE_TEST="forceoptional"
VIRTUALX_REQUIRED="test"
inherit kde5

DESCRIPTION="Library for providing abstractions to get the developer's purposes fulfilled"
SRC_URI="mirror://kde/stable/${PN}/${P}.tar.xz"

LICENSE="LGPL-2.1+"
KEYWORDS="amd64 ~arm x86"
IUSE=""

# drop qtgui subslot operator when QT_MINIMAL >= 5.6.0
DEPEND="
	$(add_frameworks_dep kcoreaddons)
	$(add_frameworks_dep ki18n)
	$(add_frameworks_dep kio)
	$(add_kdeapps_dep kaccounts-integration)
	$(add_qt_dep qtdeclarative)
	$(add_qt_dep qtgui '' '' '5=')
	$(add_qt_dep qtnetwork)
	$(add_qt_dep qtwidgets)
	net-libs/accounts-qt
"
RDEPEND="${DEPEND}"

# requires running environment
RESTRICT="test"
