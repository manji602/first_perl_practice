#! /usr/bin/perl
use strict;

chomp(my @lines=<STDIN>);
my @names=qw / fred betty barney dino wilma pebbles bamm-bamm /;
foreach(@lines){
    print $names[$_-1]." ";
}
print "\n";

