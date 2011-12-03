#! /usr/bin/perl
use strict;

chomp(my @inputs=<STDIN>);

foreach(@inputs){
    if(/(wilma)+/){
	print $_."\n";
    }
}

