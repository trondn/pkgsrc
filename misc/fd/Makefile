# $NetBSD: Makefile,v 1.28 2011/12/17 10:16:12 sbd Exp $
#

DISTNAME=	FD-3.00j
PKGNAME=	${DISTNAME:tl}
PKGREVISION=	1
CATEGORIES=	misc shells
MASTER_SITES=	http://hp.vector.co.jp/authors/VA012337/soft/fd/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://hp.vector.co.jp/authors/VA012337/soft/fd/
COMMENT=	File and directory management tool

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_FLAGS+=	CONFDIR=${PKG_SYSCONFDIR}
MAKE_FLAGS+=	PREFIX=${PREFIX}

.include "../../mk/bsd.prefs.mk"

MANLANG?=	ja_JP.eucJP
MAKE_ENV+=	LANGDIR=${MANLANG:Q} DATADIR=${DATADIR}
PLIST_SUBST+=	FD_CONFIG=${FD_CONFIG:Q} MANLANG=${MANLANG:Q}

DATADIR=	${PREFIX}/share/fd
DOCDIR=		${PREFIX}/share/doc/fd
EXAMPLESDIR=	${PREFIX}/share/examples/fd

CFLAGS+=	-DUSEMANLANG -DUSEDATADIR
DESTDIR_VARNAME=	BUILD

DOCS=		FAQ LICENSES HISTORY README TECHKNOW ToAdmin

.include "options.mk"

CONF_FILES+=	${EXAMPLESDIR}/${FD_CONFIG} ${PKG_SYSCONFDIR}/${FD_CONFIG}

.if !empty(PKG_OPTIONS:Mfd-small)
USE_TOOLS+=	patch

post-configure:
	${RUN}cd ${WRKSRC}; ${PATCH} -R < _fdrc.dif
.endif

post-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${DOCDIR}/ja
	${RUN}cd ${WRKSRC}; \
	for i in ${DOCS}; do \
		${INSTALL_DATA} ${WRKSRC}/$${i}.eng ${DESTDIR}${DOCDIR}/$${i}; \
		${INSTALL_DATA} ${WRKSRC}/$${i} ${DESTDIR}${DOCDIR}/ja; \
	done
	${INSTALL_DATA_DIR} ${DESTDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/_fdrc ${DESTDIR}${EXAMPLESDIR}/${FD_CONFIG}

.include "../../mk/termcap.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
