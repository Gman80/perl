#!/usr/bin/perl
use warnings;
use strict;
#reconocimiento de archivos por extensión y cambio de extensión.
my @newfiles;
    foreach my $file (glob "*.*") {
        push (@newfiles, $file);
        my $convertfile = $newfiles[-1];
        $convertfile =~ s/\.old$/.new/;
        rename $file => $convertfile if ($file =~ /\.old$/);
        warn "Convert $file to $convertfile..!!!\n" if ($file =~ /\.old$/);
        warn "Exists $file, no convert!\n" if ($file =~ /\.new$/);
        warn "file $file no find (.old or .new)" unless ($file =~ /(\.old$|\.new$)/);
   }

