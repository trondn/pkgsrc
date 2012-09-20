DISTNAME=	apache-couchdb-1.2.0a-69032c6-git
PKGNAME=        couchbase-couchdb-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/couchdb/apache-couchdb-1.2.0a-69032c6-git.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	Internal component of Couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

CONFIGURE_ARGS+= --disable-v8

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++ erl
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../lang/erlang/buildlink3.mk"
.include "../../textproc/icu/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.include "../../devel/snappy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
