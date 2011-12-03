#! /usr/bin/perl
use strict;

chomp(my @inputs=<STDIN>);

foreach(@inputs){
    if(/wilma.*fred|fred.*wilma/){
	print $_."\n";
    }
}

