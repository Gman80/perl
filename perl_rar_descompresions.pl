#!/usr/bin/perl

use warnings;
use strict;

my @list_file = ();
my $dir_in;
my $dir_to_path = '/path/to/dir';

opendir $dir_in, $dir_to_path or die "Cannot open $dir_to_path: $!";
    foreach my $in_file (readdir $dir_in) {
                push (@list_file, $in_file) if ($in_file =~ /\.rar$/);
           }
      @list_file = sort @list_file;
            foreach my $i (@list_file) {
               my $out_file = $dir_to_path.'/'.$i;
                $out_file =~ /\.rar$/;
                system 'rar', 'x', $out_file;
            }
            closedir $dir_in;
