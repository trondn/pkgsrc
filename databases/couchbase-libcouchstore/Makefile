DISTNAME=	libcouchstore-2.0.0r
PKGNAME=        couchbase-libcouchstore-2.0.0
CATEGORIES=	databases
MASTER_SITES=	http://10.0.0.3/couchbase/

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
BUILDLINK_API_DEPENDS.snappy+=	snappy>=1.0.5

.include "../../mk/bsd.pkg.mk"
