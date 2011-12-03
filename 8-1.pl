#! /usr/bin/perl
use strict;

chomp(my $input=<STDIN>);

if($input==/(fred|wilma)\s*flintstone/){
    print "match!!\n";
}

