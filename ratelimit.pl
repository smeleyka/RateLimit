#!/usr/bin/perl
#  test2.pl
#  
#  Copyright 2017 Sergey Vlasenko <smeleyka@vbg.ru>


use warnings;
use strict;
use Data::Dumper;

my $sp = shift (@ARGV) || "0";

if ($sp eq '0'){
		print '1 Mbit/s = 1024000';
		print "\n";
		}
elsif ($sp =~ /^[1-9]*/){
my $c = $sp*1024000;
my $a = $c/8*1.5;
my $b = $a*2;
print "rate-limit\ input\ $c\ $a\ $b\ conform-action\ transmit\ exceed-action\ drop\n";
print "rate-limit\ output\ $c\ $a\ $b\ conform-action\ transmit\ exceed-action\ drop\n";
}
else {print "not a number"};
