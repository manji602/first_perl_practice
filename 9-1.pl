#! /usr/bin/perl
use strict;

my $what='fred|barney';

chomp(my $input=<STDIN>);

if($input=~/$what{3}/){
    print "match!!\n";
}

