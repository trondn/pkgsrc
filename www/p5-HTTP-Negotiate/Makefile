# $NetBSD: Makefile,v 1.5 2012/04/22 12:50:00 wiz Exp $

DISTNAME=	HTTP-Negotiate-6.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/HTTP-Negotiate/
COMMENT=	Negotiate HTTP service parameters
LICENSE=	${PERL5_LICENSE}

CONFLICTS+=	p5-libwww<6.00

PKG_DESTDIR_SUPPORT=	user-destdir

DEPENDS+=	p5-HTTP-Message>=6.02:../../www/p5-HTTP-Message

PERL5_PACKLIST=		auto/HTTP/Negotiate/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
