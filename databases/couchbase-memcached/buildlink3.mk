BUILDLINK_TREE+=	couchbase-memcached

.if !defined(COUCHBASE-MEMCACHED_BUILDLINK3_MK)
COUCHBASE-MEMCACHED_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-memcached+=	couchbase-memcached>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-memcached+=	couchbase-memcached>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-memcached?=	../../databases/couchbase-memcached
.endif # COUCHBASE-MEMCACHED_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-memcached
