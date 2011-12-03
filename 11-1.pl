#! /usr/bin/perl
use strict;

print "Enter the name of input file.\n";
chomp(my $input_file=<STDIN>);
print "Enter the name of output file.\n";
chomp(my $output_file=<STDIN>);
print "Enter the search pattern.\n";
chomp(my $pattern=<STDIN>);
print "Enter the substitution strings.\n";
chomp(my $substitution=<STDIN>);

open INPUT,"<$input_file" or die "cannnot open the file:$input_file.";
open OUTPUT,">$output_file" or die "cannot open the file:$output_file";

select OUTPUT;

while(<INPUT>){
    s/$pattern/$substitution/g;
    print;
}

select STDOUT;
