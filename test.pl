use FASTX::Reader;
my $nucleotidic_seq = FASTX::Seq->new(
            -seq => 'ATGATGGGGTTT', #$f->seq->seq,
            -id => 'cool', #s('ID'))[0],
      );

my $orf =  $nucleotidic_seq->translate(11);
print $orf->seq;
