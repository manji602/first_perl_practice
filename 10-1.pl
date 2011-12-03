#! /usr/bin/perl
use strict;

my $magic_number=int(1+rand 100);

while(1){
    print "enter the magic number!\n";
    chomp(my $input=<STDIN>);
    if($input==$magic_number){
	print "That's right!!The magic number is ".$magic_number."!\n";
	last;
    } else {
	if($input>$magic_number){
	    print "Input number is too high.\n";
	} elsif ($input < $magic_number){
	    print "Input number is too low.\n";
	} else {
	    print "Input is something wrong.\n";
	}
    }
}

