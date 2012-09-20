DISTNAME=	libsigar-1.6.2
PKGNAME=        couchbase-sigar-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/sigar/libsigar-1.6.2.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	An internal library used by the couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+= --disable-static --enable-shared

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../mk/bsd.pkg.mk"
