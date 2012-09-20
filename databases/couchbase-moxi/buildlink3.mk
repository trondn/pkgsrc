BUILDLINK_TREE+=	couchbase-moxi

.if !defined(COUCHBASE-MOXI_BUILDLINK3_MK)
COUCHBASE-MOXI_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-moxi+=	couchbase-moxi>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-moxi+=	couchbase-moxi>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-moxi?=	../../databases/couchbase-moxi
.endif # COUCHBASE-MOXI_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-moxi
