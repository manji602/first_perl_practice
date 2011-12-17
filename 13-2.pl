#! /usr/bin/perl
use strict;
use warnings;
use File::Basename;
use File::Spec;

my $mv_from = $ARGV[0] or die "can't read mv from!";
my $mv_to = $ARGV[1] or die "can't read mv to!";

if(-d $mv_to){
    my $basename=basename $mv_from;
    $mv_to=File::Spec->catfile($mv_to,$basename);
}

rename $mv_from,$mv_to or warn "can't rename $mv_from to $mv_to :$!\n";
