# $NetBSD: Makefile,v 1.34 2012/06/01 16:32:41 cheusov Exp $

DISTNAME=	patch-2.5.9
PKGREVISION=	2
CATEGORIES=	devel
# We keep an uncompressed tar archive of the sources on
# ${MASTER_SITE_LOCAL} so that we won't need gzcat to extract the
# sources, which could potentially cause a circular dependency on
# archivers/gzip-base.
#
#MASTER_SITES=   ${MASTER_SITE_GNU:=patch/}
MASTER_SITES=	${MASTER_SITE_LOCAL}
EXTRACT_SUFX=	.tar

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/patch/patch.html
COMMENT=	Patch files using diff output
LICENSE=	gnu-gpl-v2

PKG_INSTALLATION_TYPES=	overwrite pkgviews
PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes

.include "../../mk/bsd.prefs.mk"

CONFIGURE_ARGS+=	--program-prefix=g

INSTALL_MAKE_FLAGS=	bindir=${DESTDIR}${PREFIX}/bin \
			man1dir=${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

INSTALLATION_DIRS=	gnu/bin gnu/man/man1

do-patch:
	${MV} ${WRKSRC}/pch.c ${WRKSRC}/pch.c.orig
	${AWK} '/#include <pch.h>/{print $$0 "\n#include <sys/param.h>";next;}\
		/^#if HAVE_SETMODE_DOS/					\
		{gsub(/^#if HAVE_SETMODE_DOS/,"#if defined(HAVE_SETMODE_DOS) \\&\\& !(defined(BSD) \\&\\& BSD >= 199306) \\&\\& !defined(__INTERIX)");print $$0; next; } \
		{print $$0;}'						\
		< ${WRKSRC}/pch.c.orig 					\
		> ${WRKSRC}/pch.c

SYMLINKS	= bin/gpatch gnu/bin/patch \
		man/man1/gpatch.1 gnu/man/man1/patch.1
post-install:
.for o n in ${SYMLINKS}
	${LN} -sf ${PREFIX}/${o} ${DESTDIR}${PREFIX}/${n}
.endfor

.include "../../mk/bsd.pkg.mk"
