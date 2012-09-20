BUILDLINK_TREE+=	couchbase-libcouchstore

.if !defined(COUCHBASE-LIBCOUCHSTORE_BUILDLINK3_MK)
COUCHBASE-LIBCOUCHSTORE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-libcouchstore+=	couchbase-libcouchstore>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-libcouchstore+=	couchbase-libcouchstore>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-libcouchstore?=	../../databases/couchbase-libcouchstore
BUILDLINK_LDADD.couchbase-libcouchstore+=		-lcouchstore
.endif # COUCHBASE-LIBCOUCHSTORE_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-libcouchstore
