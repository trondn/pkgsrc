# $NetBSD: Makefile,v 1.3 2012/05/17 10:37:43 obache Exp $

DISTNAME=	Unicode-LineBreak-2012.02
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	perl5 textproc
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Unicode/}

MAINTAINER=	bouyer@NetBSD.org
COMMENT=	Text::LineFold, Unicode::GCString and Unicode::LineBreak
HOMEPAGE=	http://search.cpan.org/dist/Unicode-LineBreak/
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-MIME-Charset>=1.006.2:../../mail/p5-MIME-Charset

PKG_DESTDIR_SUPPORT=	user-destdir

MAKE_PARAMS+=	--with-bundled-sombok
MAKE_PARAMS+=	--disable-libthai
MAKE_JOBS_SAFE=	no

USE_LANGUAGES=		c

PERL5_PACKLIST=		auto/Unicode/LineBreak/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
