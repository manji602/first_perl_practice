#! /usr/bin/perl
use strict;
use warnings;

my $home_dir="/Users/hashijun/";
chdir $home_dir or die "cannot chdir to $home_dir:$!";
system "ls -l";

