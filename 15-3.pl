#! /usr/bin/perl
use strict;
use warnings;

print "Enter some sentence.\n";
chomp(my $sentence=<>);
print "Enter search keyword.\n";
chomp(my $key=<>);
my $start_pos=0;
my $new_pos;
print "sentence:".$sentence."\n";
print "key:".$key."\n";
while(1){
    $new_pos=index($sentence,$key,$start_pos);
    if($new_pos==-1){
	last;
    } else {
	$start_pos=$new_pos+1;
	print $key." is found at:".$new_pos."\n";
    }
}

