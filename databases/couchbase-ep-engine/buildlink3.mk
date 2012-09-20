BUILDLINK_TREE+=	couchbase-ep-engine

.if !defined(COUCHBASE-EP-ENGINE_BUILDLINK3_MK)
COUCHBASE-EP-ENGINE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-ep-engine+=	couchbase-ep-engine>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-ep-engine+=	couchbase-ep-engine>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-ep-engine?=	../../databases/couchbase-ep-engine
.endif # COUCHBASE-EP-ENGINE_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-ep-engine
