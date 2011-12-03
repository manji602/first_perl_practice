#!/usr/bin/perl
use strict;

my $val_1=<STDIN>;
chomp(my $val_2=<STDIN>);

print $val_1 x $val_2;
