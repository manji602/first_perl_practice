#! /usr/bin/perl
use strict;

chomp(my $input=<STDIN>);

#if($input==/"([^"]*)"/){
#if($input==/^0?[0-3]?[0-7]{1,2}$/){
if($input==/^\b[\w.]{1,12}\b$/){
    print "match!!\n";
}

