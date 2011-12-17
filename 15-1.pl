#! /usr/bin/perl
use strict;
use warnings;
my @number;
open FIN,"<numbers" or die "cannot load file:$!";
while(<FIN>){
    @number=split;
}
my @sort_number=sort{$a<=>$b} @number;
foreach(@sort_number){
    printf("%12.5f\n",$_);
}
