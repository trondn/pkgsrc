# $NetBSD: Makefile,v 1.5 2012/05/11 11:31:44 sno Exp $
#

DISTNAME=	IO-AIO-4.15
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	parallel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=IO/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/IO-AIO/
COMMENT=	Perl 5 module implementing asynchronous input/output
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

# Note: libeio is bundle with the distribution tarball.
# Its configure script is run via  Makefile.PL
# with all perl configuration settings, id est
# the Config module, set in its environment

USE_LANGUAGES=	c
PERL5_PACKLIST=	auto/IO/AIO/.packlist

DEPENDS+=	p5-common-sense-[0-9]*:../../devel/p5-common-sense

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
