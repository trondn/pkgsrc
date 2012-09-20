BUILDLINK_TREE+=	couchbase-geocouch

.if !defined(COUCHBASE-GEOCOUCH_BUILDLINK3_MK)
COUCHBASE-GEOCOUCH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.couchbase-geocouch+=	couchbase-geocouch>=2.0.0
BUILDLINK_ABI_DEPENDS.couchbase-geocouch+=	couchbase-geocouch>=2.0.0
BUILDLINK_PKGSRCDIR.couchbase-geocouch?=	../../databases/couchbase-geocouch
.endif # COUCHBASE-GEOCOUCH_BUILDLINK3_MK

BUILDLINK_TREE+=	-couchbase-geocouch
