DISTNAME=	libcouchbase-2.0.0
CATEGORIES=	devel
MASTER_SITES=	-http://packages.couchbase.com/clients/c/libcouchbase-2.0.0.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/develop/c/next
COMMENT=	C/C++ client library to access a Couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake unzip
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=	--disable-couchbasemock --disable-static

.include "../../mk/bsd.prefs.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
