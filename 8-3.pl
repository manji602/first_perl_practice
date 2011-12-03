#! /usr/bin/perl
use strict;

chomp(my $_=<STDIN>);

if(/\^$[A-Za-z_]\w*$/){
    print "match!!\n";
}

