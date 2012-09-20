DISTNAME=	libvbucket-1.8.0.4_3_g00d3763
PKGNAME=        couchbase-libvbucket-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/trondn/libvbucket/downloads/libvbucket-1.8.0.4_3_g00d3763.tar.gz

OWNER=		trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	C library to map between virtual buckets and servers
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=

.include "../../mk/bsd.prefs.mk"
.include "../../mk/bsd.pkg.mk"
