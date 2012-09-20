DISTNAME=	bucket_engine-2.0.0r_10_g70b3624
PKGNAME=        couchbase-bucket_engine-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/bucket_engine/bucket_engine-2.0.0r_10_g70b3624.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	An engine that provides multi tenancy
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../databases/couchbase-memcached/buildlink3.mk"
.include "../../databases/couchbase-ep-engine/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
