#!/usr/bin/env perl
use strict;
use warnings;
my $file = "article3.txt";
my $fileout = "test4.txt";


sub word_frequency{
my $k;
my $v;
my %words;
my $in_file=shift;
my $out_file = shift;

open (FILE, '<', $in_file) or die "Can't open $!";
open (FILEOUT, '>', $out_file) or die "Can't open $!";

while (my $line = <FILE>)
{
    foreach my $word (split /\s+/, $line)
    {
        $words{$word}++;
    }

}
 
foreach my $word (keys %words)
{
    print FILEOUT "$word $words{$word}\n";
}

close FILE;
close FILEOUT;

}

word_frequency("article3.txt", "test6.txt");
print "Good Job!!!\n";
