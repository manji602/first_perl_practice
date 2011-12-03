#! /usr/bin/perl
use strict;
use File::stat;

my $oldest_date=999999999999999;
my $oldest_name;

foreach(@ARGV){
    my $name=$_;
    my $stat=stat($name);
    if($oldest_date>$stat->mtime){
	$oldest_date=$stat->mtime;
	$oldest_name=$name;
    }
}
my $timestamp=localtime $oldest_date;

print $oldest_name.":".$timestamp."\n";

