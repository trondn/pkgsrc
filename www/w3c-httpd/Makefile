# $NetBSD: Makefile,v 1.25 2011/03/27 16:52:29 joerg Exp $

DISTNAME=	w3c-httpd-3.0A
PKGREVISION=	1
CATEGORIES=	www
MASTER_SITES=	ftp://ftp.w3.org/pub/httpd/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.w3.org/Daemon/
COMMENT=	WWW server from the W3 Consortium (W3C)

PKG_DESTDIR_SUPPORT=	user-destdir
MAKE_JOBS_SAFE=		no

WRKSRC=		${WRKDIR}
BUILD_TARGET=	build-all
# prevent conflict with directory All on non-case-sensitive file systems
USE_TOOLS+=	csh

.include "../../mk/bsd.prefs.mk"
.if (${OPSYS} == "FreeBSD") || (${OPSYS} == "DragonFly" )
OSNAME= freebsd
.elif (${OPSYS} == "Darwin")
OSNAME=darwin
CPPFLAGS+=	-Dunix
.elif (${OPSYS} == "IRIX")
OSNAME=sgi
.elif (${OPSYS} == "OSF1")
OSNAME=osf1
.elif (${OPSYS} == "Linux")
OSNAME=linux
.else
#       covers OpenBSD, too
OSNAME= netbsd
.endif

CFLAGS+=	${CPPFLAGS}

SUBST_CLASSES+=		strcasestr
SUBST_STAGE.strcasestr=	post-patch
SUBST_FILES.strcasestr=	Daemon/Implementation/HTWild.c \
	Library/Implementation/HTString.c \
	Library/Implementation/HTString.h \
	Library/Implementation/HTString.h
SUBST_SED.strcasestr=	-e 's,\([[:blank:]]\)\(strcasestr\),\1x\2,g'

EGDIR=			${PREFIX}/share/examples/w3c-httpd
INSTALLATION_DIRS=	bin etc/w3c-httpd sbin share/w3c-httpd share/examples/w3c-httpd

.for f in all.conf caching.conf httpd.conf prot.conf proxy.conf
CONF_FILES+=	${EGDIR:Q}/${f:Q}	${PKG_SYSCONFDIR}/${f:Q}
.endfor

post-extract:
	cd ${WRKSRC}/All && ${MKDIR} darwin && \
	${CP} freebsd/Makefile.include darwin/

pre-configure:
.if !defined(MD5_PW)
	@${ECHO} ""
	@${ECHO} "Defaulting to DES encrypted passwords."
	@${ECHO} "Set the environment variable MD5_PW if you want MD5 encrypted passwords."
	@${ECHO} ""
.else
	@${ECHO} "CFLAGS += -DMD5_PW" >> ${WRKDIR:Q}/All/${OSNAME:Q}/Makefile.include
.endif

do-install:
	${CP} -R ${WRKSRC}/server_root/icons ${DESTDIR}${PREFIX}/share/w3c-httpd
	${CP} ${WRKSRC}/server_root/config/*.conf ${DESTDIR}${EGDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/Daemon/${OSNAME}/httpd ${DESTDIR}${PREFIX}/sbin/w3c-httpd
	${INSTALL_PROGRAM} ${WRKSRC}/Daemon/${OSNAME}/htadm ${DESTDIR}${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/Daemon/${OSNAME}/htimage ${DESTDIR}${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/Daemon/${OSNAME}/cgiparse ${DESTDIR}${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/Daemon/${OSNAME}/cgiutils ${DESTDIR}${PREFIX}/sbin

.include "../../mk/bsd.pkg.mk"
