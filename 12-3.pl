#! /usr/bin/perl
use strict;
print "Enter the directory name.\n";

chomp(my $directory=<STDIN>);

if($directory=~/^\s+$/){
    $directory="/Users/hashijun/";
}
chdir $directory or die "cannnot chdir to $directory";

opendir DH,$directory or die "cannnot open $directory";
foreach my $file (sort(readdir DH)){
    print $file."\n";
}
