# $NetBSD: Makefile,v 1.67 2012/09/15 10:05:50 obache Exp $
#

DISTNAME=	kmplayer-0.11.3b
PKGREVISION=	4
CATEGORIES=	multimedia kde
MASTER_SITES=	http://kmplayer.kde.org/pkgs/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	markd@NetBSD.org
HOMEPAGE=	http://kmplayer.kde.org/
COMMENT=	KDE frontend to mplayer

BUILD_DEPENDS+=		automoc4>=0.9.87:../../devel/automoc4
DEPENDS+=		mplayer>=1.0rc3:../../multimedia/mplayer
DEPENDS+=		mencoder>=1.0rc3:../../multimedia/mencoder

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		msgfmt perl pkg-config
USE_LANGUAGES=		c c++

LDFLAGS.DragonFly+=	-lgmodule-2.0

.include "../../x11/gtk2/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../multimedia/xine-lib/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
