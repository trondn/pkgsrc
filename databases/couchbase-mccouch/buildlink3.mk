BUILDLINK_TREE+=	couchbase-mccouch

.if !defined(COUCHBASE-MCCOUCH_BUILDLINK3_MK)
COUCHBASE-MCCOUCH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-mccouch+=	couchbase-mccouch>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-mccouch+=	couchbase-mccouch>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-mccouch?=	../../databases/couchbase-mccouch
.endif # COUCHBASE-MCCOUCH_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-mccouch
