# $NetBSD: Makefile,v 1.35 2011/11/01 06:01:45 sbd Exp $

DISTNAME=	ruby-gd-0.8.0
PKGNAME=	${RUBY_PKGPREFIX}-${DISTNAME:S/ruby-//}
PKGREVISION=	7
CATEGORIES=	graphics

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://rubyforge.org/projects/ruby-gd/
COMMENT=	Ruby extension to drive the GD library
LICENSE=	ruby-license

GEM_CLEANBUILD=		Makefile *.o GD.${RUBY_DLEXT} mkmf.log

CONFIGURE_ARGS+=	--with-gd-dir=${BUILDLINK_PREFIX.gd:Q}
CONFIGURE_ARGS+=	--with-jpeg
CONFIGURE_ARGS+=	--with-jpeg-dir=${JPEGBASE:Q}
CONFIGURE_ARGS+=	--with-freetype
CONFIGURE_ARGS+=	--with-freetype-dir=${BUILDLINK_PREFIX.freetype2:Q}
CONFIGURE_ARGS+=	--enable-gd2_0

.include "../../lang/ruby/gem.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../graphics/gd/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
