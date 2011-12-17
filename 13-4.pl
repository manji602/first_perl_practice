#! /usr/bin/perl
use strict;
use warnings;
use File::Basename;
use File::Spec;

if ($ARGV[0]=~/^-s$/){
    #symbolic link
    my $sym_from = $ARGV[1] or die "can't read symbolic from!";
    my $sym_to = $ARGV[2] or die "can't read symbolic to!";
    if(-d $sym_to){
	$sym_to=basename_combine($sym_from,$sym_to);
    }
    symlink $sym_from,$sym_to or warn "can't link $sym_from to $sym_to: $!";
} else {
    #hard link
    my $link_from = $ARGV[0] or die "can't read symbolic from!";
    my $link_to = $ARGV[1] or die "can't read symbolic to!";
    if(-d $link_to){
	$link_to=basename_combine($link_from,$link_to);
    link $link_from,$link_to or warn "can't link $link_from to $link_to: $!";
}

sub basename_combine{
    my $basename=basename $_[0];
    my $catfile=File::Spec->catfile($_[1],$basename);
    $catfile;
}
