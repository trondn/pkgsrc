BUILDLINK_TREE+=	couchbase-ns_server

.if !defined(COUCHBASE-NS_SERVER_BUILDLINK3_MK)
COUCHBASE-NS_SERVER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-ns_server+=	couchbase-ns_server>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-ns_server+=	couchbase-ns_server>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-ns_server?=	../../databases/couchbase-ns_server
.endif # COUCHBASE-NS_SERVER_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-ns_server
