#! /usr/bin/perl
use strict;

sub properties{
    print $_[0].":";
    print "exist " if -e $_[0];
    print "readable " if -r $_[0];
    print "writeable " if -w $_[0];
    print "executable " if -x $_[0];
    print "\n";
}

foreach(@ARGV){
    &properties($_);
}

