COUCHBASE_VERSION=2.0
DISTNAME=	# empty
PKGNAME=	couchbase-server-${COUCHBASE_VERSION}
CATEGORIES+=	meta-pkgs devel
DISTFILES=	# empty
MASTER_SITES=	http://www.couchbase.com/

MAINTAINER=	trond.norbye@gmail.com
COMMENT=	Couchbase Server suite meta-package
LICENSE=	apache-2.0

META_PACKAGE=	yes

DEPENDS+=	couchbase-bucket_engine>=${COUCHBASE_VERSION}:../../databases/couchbase-bucket_engine
DEPENDS+=	couchbase-ep-engine>=${COUCHBASE_VERSION}:../../databases/couchbase-ep-engine
DEPENDS+=	couchbase-libconflate>=${COUCHBASE_VERSION}:../../databases/couchbase-libconflate
DEPENDS+=	couchbase-libcouchstore>=${COUCHBASE_VERSION}:../../databases/couchbase-libcouchstore
DEPENDS+=	couchbase-libvbucket>=${COUCHBASE_VERSION}:../../databases/couchbase-libvbucket
DEPENDS+=	couchbase-memcached>=${COUCHBASE_VERSION}:../../databases/couchbase-memcached
DEPENDS+=	couchbase-moxi>=${COUCHBASE_VERSION}:../../databases/couchbase-moxi
DEPENDS+=	couchbase-portsigar>=${COUCHBASE_VERSION}:../../databases/couchbase-portsigar
DEPENDS+=	couchbase-sigar>=${COUCHBASE_VERSION}:../../databases/couchbase-sigar
DEPENDS+=	couchbase-couchdb>=${COUCHBASE_VERSION}:../../databases/couchbase-couchdb
DEPENDS+= couchbase-geocouch>=${COUCHBASE_VERSION}:../../databases/couchbase-geocouch
DEPENDS+=	couchbase-mccouch>=${COUCHBASE_VERSION}:../../databases/couchbase-mccouch
DEPENDS+= couchbase-ns_server>=${COUCHBASE_VERSION}:../../databases/couchbase-ns_server

.include "../../mk/bsd.pkg.mk"
