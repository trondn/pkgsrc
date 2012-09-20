BUILDLINK_TREE+=	couchbase-libvbucket

.if !defined(COUCHBASE-LIBVBUCKET_BUILDLINK3_MK)
COUCHBASE-LIBVBUCKET_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-libvbucket+=	couchbase-libvbucket>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-libvbucket+=	couchbase-libvbucket>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-libvbucket?=	../../databases/couchbase-libvbucket
BUILDLINK_LDADD.couchbase-libvbucket+=		-lvbucket
.endif # COUCHBASE-LIBVBUCKET_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-libvbucket
