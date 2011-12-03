#! /usr/bin/perl
use strict;

chomp(my @lines=<STDIN>);

foreach(sort(@lines)){
    print $_." ";
    #print $_."\n";
}

