DISTNAME=	ns_server-2.0.0r-470-g44b914f
PKGNAME=        couchbase-ns_server-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/ns_server/ns_server-2.0.0r-470-g44b914f.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	Internal component of Couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

#CONFIGURE_ARGS+= --disable-v8

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++ erl
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../lang/erlang/buildlink3.mk"
.include "../../databases/couchbase-couchdb/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
