DISTNAME=	mccouch-0.0.0-82-g88701cc
PKGNAME=        couchbase-mccouch-2.0.0
CATEGORIES=	databases
MASTER_SITES=	-https://github.com/downloads/trondn/mccouch/mccouch-0.0.0-82-g88701cc.tar.gz

MAINTAINER=	trond.norbye@gmail.com
HOMEPAGE=	http://www.couchbase.com/
COMMENT=	Internal component of Couchbase server
LICENSE=	apache-2.0

PKG_DESTDIR_SUPPORT=	user-destdir

USE_TOOLS+=	gmake
USE_LANGUAGES=	erl
USE_LIBTOOL=	yes

.include "../../mk/bsd.prefs.mk"
.include "../../lang/erlang/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
