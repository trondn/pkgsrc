# $NetBSD: Makefile,v 1.12 2012/09/14 12:19:31 drochner Exp $
#

DISTNAME=	pdf2djvu_0.7.13
PKGNAME=	${DISTNAME:S/_/-/}
PKGREVISION=	1
CATEGORIES=	print
MASTER_SITES=	http://pdf2djvu.googlecode.com/files/

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://code.google.com/p/pdf2djvu/
COMMENT=	pdf2djvu creates DjVu files from PDF files
LICENSE=	gnu-gpl-v2

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	djvulibre-tools-[0-9]*:../../graphics/djvulibre-tools

WRKSRC=			${WRKDIR}/${PKGNAME_NOREV}
GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c++ c
USE_TOOLS+=		pkg-config gmake intltool msgfmt xgettext gsed:run
TOOLS_DEPENDS.gsed=	gsed>=4.2:../../textproc/gsed
CONFIGURE_ARGS+=	--localedir=${PREFIX}/${PKGLOCALEDIR}/locale

.include "../../mk/bsd.prefs.mk"
.if !empty(MACHINE_PLATFORM:MNetBSD-5*)
BUILDLINK_TRANSFORM+=	rm:-Werror=overloaded-virtual
.endif

.include "../../graphics/djvulibre-lib/buildlink3.mk"
.include "../../print/poppler/buildlink3.mk"
.include "../../print/poppler-includes/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../graphics/GraphicsMagick/buildlink3.mk"
.include "../../devel/pstreams/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
