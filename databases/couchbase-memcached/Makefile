DISTNAME=	memcached-1.4.4_599_g06ab906
PKGNAME=        couchbase-memcached-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/memcached/memcached-1.4.4_599_g06ab906.tar.gz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.memcached.org/
COMMENT=	High-performance distributed memory object caching system
LICENSE=	2-clause-bsd

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake perl
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

CONFIGURE_ARGS+=	--with-libevent=${BUILDLINK_PREFIX.libevent} \
			--disable-bundled-libevent \
			--enable-isasl

.include "../../mk/bsd.prefs.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
