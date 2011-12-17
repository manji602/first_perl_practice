#! /usr/bin/perl
use strict;
use warnings;

my %last_name=qw{
 fred flintstone Wilma Flintstone Barney Rubble
 betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};
my @sort_name=sort{"\L$last_name{$a}" cmp "\L$last_name{$b}" or $a cmp $b} keys %last_name;
foreach(@sort_name){
    print $last_name{$_}." ".$_."\n";
}

