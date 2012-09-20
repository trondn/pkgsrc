DISTNAME=	libcouchstore-2.0.0r_11_g772f66a
PKGNAME=        couchbase-libcouchstore-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/couchstore/libcouchstore-2.0.0r_11_g772f66a.tar.gz

OWNER=		trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	Library for handling Couchbase .couch files
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=

.include "../../mk/bsd.prefs.mk"

.include "../../devel/snappy/buildlink3.mk"
#BUILDLINK_API_DEPENDS.snappy+=	snappy>=1.0.5
.include "../../mk/bsd.pkg.mk"
