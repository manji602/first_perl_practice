#! /usr/bin/perl
use strict;
use warnings;

open STDOUT,">ls.out", or die "cannot open ls.out:$!";
open STDERR,">ls.err", or die "cannot open ls.err:$!";

my $home_dir="/Users/hashijun/";
chdir $home_dir or die "cannot chdir to $home_dir:$!";

#system "ls -l" or die "Can't exec ls:$!";
exec "ls","-l" or die "Can't exec ls:$!";
