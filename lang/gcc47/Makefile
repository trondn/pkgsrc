# $NetBSD: Makefile,v 1.5 2012/07/23 12:47:55 jperkin Exp $

PKGNAME=	${GCC_PKGNAME}-${GCC_DIST_VERSION}
COMMENT=	The GNU Compiler Collection (GCC)
PKGREVISION=	4

DEPENDS+=	${GCC_PKGNAME}-compiler>=${GCC_DIST_VERSION}:../../lang/gcc47-compiler
DEPENDS+=	${GCC_PKGNAME}-runtime>=${GCC_DIST_VERSION}:../../lang/gcc47-runtime

META_PACKAGE=	yes

.include "Makefile.common"

.include "../../mk/bsd.pkg.mk"
