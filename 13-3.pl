#! /usr/bin/perl
use strict;
use warnings;
use File::Basename;
use File::Spec;


my $link_from = $ARGV[0] or die "can't read symbolic from!";
my $link_to = $ARGV[1] or die "can't read symbolic to!";

if(-d $link_to){
    my $basename=basename $link_from;
    $link_to=File::Spec->catfile($link_to,$basename);
}

link $link_from,$link_to or warn "can not link $link_from to $link_to :$!";
