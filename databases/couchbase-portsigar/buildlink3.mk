BUILDLINK_TREE+=	couchbase-portsigar

.if !defined(COUCHBASE-PORTSIGAR_BUILDLINK3_MK)
COUCHBASE-PORTSIGAR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-portsigar+=	couchbase-portsigar>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-portsigar+=	couchbase-portsigar>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-portsigar?=	../../databases/couchbase-portsigar
.endif # COUCHBASE-PORTSIGAR_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-portsigar
