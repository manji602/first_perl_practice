#! /usr/bin/perl
use strict;

chomp(my @lines=<STDIN>);
my @lines_reverse=reverse(@lines);
print @lines_reverse;

