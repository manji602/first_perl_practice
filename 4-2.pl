#! /usr/bin/perl
use strict;

my @num_list=(1..1000);
my $user_total=&total(@num_list);
print "The total pf those numbers is $user_total.\n";



sub total{
    my $total=0;
    foreach (@_){
	$total+=$_;
    }
    return $total;
}

