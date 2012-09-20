DISTNAME=	ep-engine-2.0.0r_109_g10b593c
PKGNAME=        couchbase-ep-engine-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/ep-engine/ep-engine-2.0.0r_109_g10b593c.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	An internal library used by the couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+= --disable-static --enable-shared
# CONFIGURE_ENV+=	ac_cv_safe_to_use_wconversion_=no
# CONFIGURE_ENV+=	ac_cv_warnings_as_errors=no
# CONFIGURE_ENV+=	ac_cv_safe_to_use_Wconversion_=no

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../databases/couchbase-memcached/buildlink3.mk"
#BUILDLINK_API_DEPENDS.couchbase-memcached+=	couchbase-memcached>=2.0.0

.include "../../databases/couchbase-libcouchstore/buildlink3.mk"
#BUILDLINK_API_DEPENDS.couchbase-libcouchstore+=	couchbase-libcouchstore>=2.0.0


.include "../../mk/bsd.pkg.mk"

CHECK_INTERPRETER_SKIP=	lib/python/*
