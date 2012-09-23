use ExtUtils::MakeMaker;

WriteMakefile(
    NAME      => 'apache-log-stats',
    VERSION   => '2.1.3',
    EXE_FILES => [ <bin/*> ],
    MAN1PODS  => {
      'docs/apache-log-stats.pod' => 'blib/man1/apache-log-stats.1p',
      map {
         (my $name = $_) =~ s/^bin.//;
         $_ => "blib/man1/$name.1p";
      } <bin/*>
    },
    MAN3PODS     => {}, # man(3) pages are for C libs
    PREREQ_PM    => {
    },
);
