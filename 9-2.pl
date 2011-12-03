#! /usr/bin/perl
use strict;

my $what='fred|barney';

while(<>){
    if(/^=item(\s+)([A-Za-z_][A-Za-z_0-9]*)/){
    print $2."\n";
    }
}

