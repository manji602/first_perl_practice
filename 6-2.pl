#! /usr/bin/perl
use strict;

chomp(my @word=<STDIN>);
print "123456789012345678901234567890\n";
foreach(@word){
    printf "%20s\n",$_;
}

