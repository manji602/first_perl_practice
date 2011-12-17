#! /usr/bin/perl
use strict;
use warnings;

#標準のdate関数だと日本語表記となってしまうため
my $time=localtime();

foreach($time){
    my ($a_day_of_the_week,$month,$date,$time,$year)=/(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(.*)/;
    if($a_day_of_the_week=~/^(Sat)|(Sun)$/){
	print "go play\n";
    } else {
	print "go work\n";
    }
}
