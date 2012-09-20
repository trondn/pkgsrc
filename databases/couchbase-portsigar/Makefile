DISTNAME=	sigar_port-1.0
PKGNAME=        couchbase-portsigar-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/portsigar/sigar_port-1.0.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	An internal library used by the couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

#CONFIGURE_ARGS+= --disable-static --enable-shared

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../databases/couchbase-sigar/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
