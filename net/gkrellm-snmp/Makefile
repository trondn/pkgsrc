# $NetBSD: Makefile,v 1.37 2012/09/15 10:05:59 obache Exp $
#

DISTNAME=	gkrellm_snmp-0.21
PKGNAME=	${DISTNAME:S/_/-/}
PKGREVISION=	18
CATEGORIES=	net
MASTER_SITES=	http://triq.net/gkrellm/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://triq.net/gkrellm_snmp.html
COMMENT=	GKrellM plugin to display values collected from a SNMP agent

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=		pkg-config

INSTALLATION_DIRS=	lib/gkrellm2/plugins

.include "../../security/openssl/buildlink3.mk"
.include "../../sysutils/gkrellm/buildlink3.mk"
.include "../../net/net-snmp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
