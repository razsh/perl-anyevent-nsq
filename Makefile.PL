use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'AnyEvent::NSQ',
    DISTVNAME        => 'AnyEvent-NSQ-0.02',
    AUTHOR           => q{Pedro Melo <melo@cpan.org>},
    LICENSE          => 'Artistic_2_0',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.10.1,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0
    },
    BUILD_REQUIRES => {
        'Test::More' => '0.98'
    },
    PREREQ_PM => {
        'AnyEvent' => '7.09'
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'AnyEvent-NSQ*' },
);
