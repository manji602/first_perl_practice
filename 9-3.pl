#! /usr/bin/perl
use strict;

my $what='fred|barney';
my %item_list;

while(<>){
    if(/^=item(\s+)([A-Za-z_][A-Za-z_0-9]*)/){
	$item_list{$2}++;
    }
}
foreach(sort keys %item_list){
    if($item_list{$_}>=3){
	print $_."\n";
    }
}
