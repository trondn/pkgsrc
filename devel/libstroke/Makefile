# $NetBSD: Makefile,v 1.25 2012/08/22 20:39:48 drochner Exp $
#

DISTNAME=		libstroke-0.5.1
PKGREVISION=		4
CATEGORIES=		devel
MASTER_SITES=		http://etla.net/libstroke/

MAINTAINER=		rh@NetBSD.org
HOMEPAGE=		http://etla.net/libstroke/
COMMENT=		Stroke translation library

PKG_INSTALLATION_TYPES= overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		YES
USE_LIBTOOL=		YES
USE_TOOLS+=		gmake

CONFIGURE_ENV+=		ac_cv_path_GTK_CONFIG=no

BUILDLINK_DEPMETHOD.libX11?=	build

.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
