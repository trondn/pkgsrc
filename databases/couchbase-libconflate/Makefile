DISTNAME=	libconflate-1.8.1r_12_gbd6bf11
PKGNAME=        couchbase-libconflate-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/libconflate/libconflate-1.8.1r_12_gbd6bf11.tar.gz

OWNER=		trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	Internal library used by the couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c
USE_LIBTOOL=	yes

CONFIGURE_ARGS+= --without-check

.include "../../www/curl/buildlink3.mk"

.include "../../mk/bsd.prefs.mk"
.include "../../mk/bsd.pkg.mk"
