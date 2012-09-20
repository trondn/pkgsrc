BUILDLINK_TREE+=	couchbase-sigar

.if !defined(COUCHBASE-SIGAR_BUILDLINK3_MK)
COUCHBASE-SIGAR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-sigar+=	couchbase-sigar>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-sigar+=	couchbase-sigar>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-sigar?=	../../databases/couchbase-sigar
.endif # COUCHBASE-SIGAR_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-sigar
