#! /usr/bin/perl
use strict;

chomp(my @word_list=<STDIN>);
my %hash;

foreach(@word_list){
    $hash{$_}++;
}

while(my($key,$value)=each %hash){
    print $key.":".$value."\n";
}

