#! /usr/bin/perl
use strict;

my %name_database=(
    "fred"=>"flintstone",
    "barney"=>"rubble",
    "wilma"=>"flintstone",
    );

chomp(my $name=<STDIN>);
if(exists $name_database{$name}){
    print $name."'s familyname is ".$name_database{$name}."\n";
}
