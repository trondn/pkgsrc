# $NetBSD: Makefile,v 1.1 2012/08/30 17:37:55 jakllsch Exp $

DISTNAME=	openafs-1.4.14-src
PKGNAME=	${DISTNAME:C/-src//}
CATEGORIES=	filesystems net sysutils
MASTER_SITES=	http://www.openafs.org/dl/openafs/1.4.14/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	gendalia@NetBSD.org
HOMEPAGE=	http://www.openafs.org/
COMMENT=	File system for sharing, scalability and transparent data migration
LICENSE=	ibm-public-license-1.0

PREV_PKGPATH=	net/openafs

PKG_DESTDIR_SUPPORT=	user-destdir

CONFLICTS+=	arla-[0-9]*
CONFLICTS+=	heimdal-[0-9]*
CONFLICTS+=	lwp-[0-9]*
CONFLICTS+=	rx-[0-9]*

MAKE_JOBS_SAFE=no

GNU_CONFIGURE=		yes
USE_TOOLS+=		lex
RCD_SCRIPTS+=		bosserver

.include "options.mk"

CONFIGURE_ARGS+=	--localstatedir=${VARBASE:Q}
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

USE_GNU_CONFIGURE_HOST= no

WRKSRC=		${WRKDIR}/${PKGNAME_NOREV}

PLIST_SRC+=		${.CURDIR}/PLIST
OWN_DIRS+=		${PKG_SYSCONFDIR}/openafs
OWN_DIRS_PERMS+=	${PKG_SYSCONFDIR}/openafs/server ${ROOT_USER} ${ROOT_GROUP} 775
OWN_DIRS_PERMS+=	${VARBASE}/openafs ${ROOT_USER} ${ROOT_GROUP} 770
OWN_DIRS+=		${VARBASE}/openafs/logs
OWN_DIRS_PERMS+=	${VARBASE}/openafs/db ${ROOT_USER} ${ROOT_GROUP} 700

FILES_SUBST+=		HOSTNAME_CMD=${HOSTNAME_CMD:Q}

BUILD_DEFS+= VARBASE

# attempt to future-proof configuration
pre-build:
	cd ${WRKSRC}/src/config && for i in 50 60 70 80 90; do	\
		${SED} -e 's|nbsd40|nbsd'$$i'|g' param.i386_nbsd40.h > param.i386_nbsd$$i.h; \
		${SED} -e 's|nbsd40|nbsd'$$i'|g' param.amd64_nbsd40.h > param.amd64_nbsd$$i.h; \
		${CP} param.nbsd40.h param.nbsd$$i.h; 			\
	done

.include "../../mk/bsd.pkg.mk"
