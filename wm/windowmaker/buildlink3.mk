# $NetBSD: buildlink3.mk,v 1.25 2012/02/06 12:41:50 wiz Exp $

BUILDLINK_TREE+=	windowmaker

.if !defined(WINDOWMAKER_BUILDLINK3_MK)
WINDOWMAKER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.windowmaker+=		windowmaker>=0.80.2nb3
BUILDLINK_ABI_DEPENDS.windowmaker+=	windowmaker>=0.92.0nb18
BUILDLINK_PKGSRCDIR.windowmaker?=	../../wm/windowmaker

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/jpeg.buildlink3.mk"
.include "../../mk/giflib.buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXpm/buildlink3.mk"
.endif # WINDOWMAKER_BUILDLINK3_MK

BUILDLINK_TREE+=	-windowmaker
