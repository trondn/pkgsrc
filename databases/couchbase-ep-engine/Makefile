DISTNAME=	ep-engine-2.0.0r_34_g8ddd932
PKGNAME=        couchbase-ep-engine-2.0.0
CATEGORIES=	databases
MASTER_SITES=	http://10.0.0.3/couchbase/

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	An engine that provides multi tenancy
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+= --enable-system-libsqlite3
# CONFIGURE_ENV+=	ac_cv_safe_to_use_wconversion_=no
# CONFIGURE_ENV+=	ac_cv_warnings_as_errors=no 
# CONFIGURE_ENV+=	ac_cv_safe_to_use_Wconversion_=no

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../databases/couchbase-memcached/buildlink3.mk"
BUILDLINK_API_DEPENDS.couchbase-memcached+=	couchbase-memcached>=2.0.0

.include "../../databases/sqlite/buildlink3.mk"
BUILDLINK_API_DEPENDS.sqlite+=	sqlite>=2.8.0

.include "../../mk/bsd.pkg.mk"

CHECK_INTERPRETER_SKIP=	lib/python/*
