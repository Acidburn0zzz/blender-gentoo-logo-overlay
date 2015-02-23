# Copyright 1999-2004 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-gfx/blender/Attic/blender-2.26.ebuild,v 1.8 2004/10/28 06:50:26 lu_zero dead $

EAPI="5"

inherit autotools eutils flag-o-matic
replace-flags -march=pentium4 -march=pentium3

IUSE=""

S=${WORKDIR}/${P}
DESCRIPTION="3D Creation/Animation/Publishing System"
HOMEPAGE="http://www.blender.org/"
SRC_URI="http://download.blender.org/source/${P}.tar.bz2"

SLOT="0"
LICENSE="|| ( GPL-2 BL )"
KEYWORDS="~x86 ~ppc"

DEPEND="virtual/x11
	>=media-libs/openal-20020127
	>=media-libs/libsdl-1.2
	>=media-libs/libvorbis-1.0
	>=dev-libs/openssl-0.9.6"

src_prepare() {
	epatch "${FILESDIR}"/${P}-compile-*.patch
	eautoreconf
}
