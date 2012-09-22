#!/usr/bin/env perl

package Apache::Log::Stats;

use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use Time::HiRes 'time';
use Data::Dumper;
use POSIX 'isatty';
use Compress::Zlib ;
use IO::Zlib;

sub new {
  my ( $class, %args ) = @_;

  my $self = {
    debug => 0,
    data => {},
    stats => {
      total_requests => 0,
      sqsum_requests => 0,
    },
    total => {},
    files => {},
    %args
  };

  return bless $self, $class;
}

sub run {
  my ( $self, $file ) = @_;

  # use stdin if no files supplied
  @ARGV = '-' unless @ARGV ;


  foreach my $file (@ARGV) {

    print "$file - ";
    my $fh = new IO::Zlib($file, "rb") or die "Could not open file.gz: $!\n";

    if (defined $fh) {

      my ($i, $cnt) = (0, 0);
      FILTER: while (my $line = $fh->getline()) {

        my $start = time;
        if ($i == 0) {
          my $start = time;
        }

        chomp($line);
        my ($host, $date, $method, $url, $version, $status, $bytes, $domain) = $line =~
              /^(\S+) - - \[(\d{2}+\/\S{3}\/\d{4}+:\d{2}:\d{2}:\d{2} [+-]\d{4})\] "(\S+) (\S+) (\S+)" (\S+) (\S+) (\S+).*/;

        next if (!defined($date));

        $self->{data}{$date}{cnt}++;
        $self->{stats}{total_requests}++;

        if (!defined($self->{stats}{max_requests}) || (defined($self->{stats}{max_requests}) && $self->{data}{$date}{cnt} > $self->{data}{ $self->{stats}{max_requests} }{cnt}) ) {
           $self->{stats}{max_requests} = $date;
        }
          
        if ($i % 1000 == 0) {
          my $diff = time - $start;
          STDOUT->printflush("$cnt in $diff\n") if ($self->{debug});
          $i=0;
        }

        $i++;
        $cnt++;

      };
      $fh->close;


      foreach my $item(keys $self->{data}) {
        $self->{stats}{sqsum_requests}+= $self->{data}{$item}{cnt} * $self->{data}{$item}{cnt};
        #  printf "%s -> %s\n", $item, $self->{data}{$item}{cnt};
      }

      #print Dumper(\%stats);

      my $num = scalar keys $self->{data};
      my $avg = ($num != 0)? ($self->{stats}{total_requests} / $num) : 0;
      my $var = ($num != 0)? ($self->{stats}{sqsum_requests} / $num - $avg * $avg) : 0;
      my $std = sqrt($var);

      $self->{stats}{total_requests} = $self->{stats}{total};
      $self->{stats}{avg_requests_per_second} = $avg;
      $self->{stats}{variance_requests_per_second} = $var;
      $self->{stats}{stddev_requests_per_second} = $std;
      $self->{stats}{max_requests_per_second} = (defined($self->{stats}{max_requests}) && defined($self->{data}{ $self->{stats}{max_requests} }{cnt})? $self->{data}{ $self->{stats}{max_requests} }{cnt} : 0);

      foreach my $s (keys $self->{stats}) {
        next if ($s eq 'max_requests');
        printf "%s: %s\t", $s, defined($self->{stats}{$s})? $self->{stats}{$s} : 0;
      }
      print "\n";

      $self->{files}{$file} = $self->{stats};

      $self->{data} = {};
      $self->{stats} = {
        total_requests => 0,
        sqsum_requests => 0,
      };

    }

  }

  print "Total:\t";

  foreach my $file (keys $self->{files}) {
    foreach my $item (keys $self->{files}{$file}) {
      next if ($item eq 'max_requests' || !defined($self->{files}{$file}{$item}));
      $self->{total}{$item} =0 if (!defined($self->{total}{$item}));
      $self->{total}{$item} += $self->{files}{$file}{$item};
    }
  }

  foreach my $s (keys $self->{total}) {
    next if ($s eq 'max_requests');
    printf "%s: %s\t", $s, defined($self->{total}{$s})? $self->{total}{$s} : 0;
  }
  print "\n";


}
1;

sub main {
  @ARGV = @_;  # set global ARGV for this package
  my $a = new Apache::Log::Stats;
  $a->run();
}

# ############################################################################
# Run the program.
# ############################################################################
if ( !caller ) { exit main(@ARGV); }

1;
