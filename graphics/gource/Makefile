# $NetBSD: Makefile,v 1.8 2012/08/29 11:22:14 obache Exp $
#

DISTNAME=	gource-0.38
PKGREVISION=	2
CATEGORIES=	graphics
MASTER_SITES=	http://gource.googlecode.com/files/

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://code.google.com/p/gource/
COMMENT=	software version control visualization
LICENSE=	gnu-gpl-v3

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_LANGUAGES=	c c++

CONFIGURE_ARGS=	--with-boost=${BUILDLINK_PREFIX.boost-libs}

.include "../../devel/SDL/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../graphics/SDL_image/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glew/buildlink3.mk"
.include "../../graphics/glm/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
