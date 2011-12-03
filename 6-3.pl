#! /usr/bin/perl
use strict;

print "enter the width of line:";
chomp(my $width=<STDIN>);

print "then enter word list.\n";

chomp(my @word=<STDIN>);
print "123456789012345678901234567890\n";
foreach(@word){
    printf "%${width}s\n",$_;
}

