# $NetBSD: Makefile,v 1.14 2012/09/15 10:06:41 obache Exp $
#

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../meta-pkgs/xfce4/Makefile.common"

XFCE4_VERSION=	0.5.1

DISTNAME=	xfce4-timer-plugin-${XFCE4_VERSION}
PKGREVISION=	12
CATEGORIES=	time
MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-timer-plugin/
COMMENT=	Xfce4 timer plugin

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
