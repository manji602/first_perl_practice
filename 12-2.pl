#! /usr/bin/perl
use strict;
print "Enter the directory name.\n";

chomp(my $directory=<STDIN>);

if($directory=~/^\s+$/){
    $directory="/Users/hashijun/";
}
chdir $directory or die "cannnot chdir to $directory";

my @files=glob "* .*";
foreach(sort @files){
    print $_."\n";
}
