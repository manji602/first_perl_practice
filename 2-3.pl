#!/usr/bin/perl
use strict;

my $radius=<STDIN>;
if($radius<0){ $radius=0; }
my $pi=3.141592;

print 2*$pi*$radius."\n";
