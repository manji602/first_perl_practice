#! /usr/bin/perl
use strict;

my @files=glob "*";

foreach(@files){
    my $origin_file=$_;
    my $readlink_file=readlink $origin_file;
    if($readlink_file){
	print "$origin_file -> $readlink_file\n";
    }
}

