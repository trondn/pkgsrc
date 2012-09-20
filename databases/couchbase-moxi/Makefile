DISTNAME=	moxi-1.8.1
PKGNAME=        couchbase-moxi-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/moxi/moxi-1.8.1.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	An internal library used by the couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+= --without-check

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../databases/couchbase-libvbucket/buildlink3.mk"
.include "../../devel/libmemcached/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

#CHECK_INTERPRETER_SKIP=	lib/python/*
