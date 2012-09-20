BUILDLINK_TREE+=	couchbase-couchdb

.if !defined(COUCHBASE-COUCHDB_BUILDLINK3_MK)
COUCHBASE-COUCHDB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-couchdb+=	couchbase-couchdb>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-couchdb+=	couchbase-couchdb>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-couchdb?=	../../databases/couchbase-couchdb
.endif # COUCHBASE-COUCHDB_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-couchdb
