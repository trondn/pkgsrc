BUILDLINK_TREE+=	couchbase-libconflate

.if !defined(COUCHBASE-LIBCONFLATE_BUILDLINK3_MK)
COUCHBASE-LIBCONFLATE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-libconflate+=	couchbase-libconflate>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-libconflate+=	couchbase-libconflate>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-libconflate?=	../../databases/couchbase-libconflate
BUILDLINK_LDADD.couchbase-libconflate+=		-lconflate
.endif # COUCHBASE-LIBCONFLATE_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-libconflate
