#! /usr/bin/perl
use strict;

chomp(my $input=<STDIN>);

if($input==/(fred)+/){
    print "fred is here\n";
}

