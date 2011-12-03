#! /usr/bin/perl
use strict;

chomp(my $_=<STDIN>);

if(/(\b\w+\b)\s\1/){
#/\b(/w+)(\s+\1)+\b(answer)
    print "match!!\n";
}

