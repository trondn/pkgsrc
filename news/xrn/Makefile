# $NetBSD: Makefile,v 1.18 2012/05/03 09:55:31 obache Exp $
#

DISTNAME=	9.01
PKGNAME=	xrn-9.01
PKGREVISION=	4
CATEGORIES=	news x11
MASTER_SITES=	ftp://sipb.mit.edu/pub/xrn/
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.mit.edu/people/jik/software/xrn.html
COMMENT=	Usenet News reader for the X window system

PKG_DESTDIR_SUPPORT=	user-destdir

WRKSRC=		${WRKDIR}
DIST_SUBDIR=	xrn

USE_TOOLS+=	lex yacc
USE_IMAKE=	yes

INSTALLATION_DIRS+=	share/doc/xrn

pre-install:
	for f in COMMON-PROBLMS COPYRIGHT CREDITS ChangeLog; do		\
		${INSTALL_DATA} ${WRKSRC}/$$f ${DESTDIR}${PREFIX}/share/doc/xrn;	\
	done

.include "../../x11/libXaw/buildlink3.mk"
.include "../../x11/libXt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
