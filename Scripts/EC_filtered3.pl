#!usr/bin/perl
use strict;

my $line="";
my @line=();
my $read_len=$ARGV[1];
open F1,"$ARGV[0]";

while(<F1>){
  @line=split;
  if($line[0] ne "P" && abs($line[7]-$ARGV[2]) <2000 && $line[6] eq $ARGV[1]){print "@line\n";}
  elsif($line[0] eq "P" && $line[6] eq $ARGV[1]){
    if($line[7]>=$line[19] && $ARGV[2]>=$line[19] && $ARGV[2]<=($line[7]+$read_len)){print"@line\n";}
    elsif($line[7]<=$line[19] && $ARGV[2]<=($line[19]+$read_len) && $ARGV[2]>=$line[7]){print"@line\n";}
  }

} 
