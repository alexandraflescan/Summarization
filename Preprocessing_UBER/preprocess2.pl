#!/usr/bin/perl -w
use strict;
use warnings;
use XML::LibXML;
my $file = "records00011.xml";
my $fileout = "test.txt";

my $id = ""; 
my $arttitle = "";
my $abstract = "";
my $kwd = "";
my $title = "";
my $par = "";
my $line = "";
my $title_group = 0;
my @identifiers = ();
my @titles = ();
my @metadatas = ();
my @fronts =();
my @abstracts =();
my @sections =();
my @bodies =();
my @backs = ();
my @reflists = ();
my @records = ();
my $index=0;
my $sir = "";
my $isRecord = 0;

		

open (FILE, '<', $file) or die "Can't open $!";
open (FILEOUT, '>>', $fileout) or die "Can't open $!";

while ($line = <FILE>){

		if($line =~/(.*)<\/record>.*<record>(.*)/){

			$sir = $sir . $1;
			$records[$index] = $sir;
			$index++;
			$isRecord = 1;
			$sir = $2;
			next;
		}

		if ($line =~/.*<record>(.*)/){
			$sir = $1;
			$isRecord = 1;
			next;
		}
		if($isRecord == 1) {

			$sir = $sir . $line;
		}

	
}

 for (my $i=0; $i<$index; $i++){
 	my $fileout = "article" . ($i+1) . ".txt";
 	open (FILEOUT, '>', $fileout) or die "Can't open $!";

 if ( $records[$i] =~/.*<header>(.*)<\/header>.*/s){
 	my $ceva = $1;
 		$ceva =~s/<([^>]+)>//g;
		print FILEOUT $ceva . "\n";
}	
 if ( $records[$i] =~/.*<article-title>(.*)<\/article-title>.*/s){
		my $ceva = $1;
 		$ceva =~s/<([^>]+)>//g;
		print FILEOUT $ceva . "\n";
 }
 if ( $records[$i] =~/.*<abstract>(.*)<\/abstract>.*/s){
		my $ceva = $1;
 		$ceva =~s/<([^>]+)>//g;
		print FILEOUT $ceva . "\n";
 }

 if ( $records[$i] =~/.*<kwd-group>(.*)<\/kwd-group>.*/s){
 		my $ceva = $1;
 		$ceva =~s/<([^>]+)>//g;
		print FILEOUT $ceva . "\n";
 }
#  while($records[$i] =~/.*<p>(.*)<\/p>.*/g) {
# 	print FILEOUT $1 . "\n";
# } 
if ( $records[$i] =~/.*<body>(.*)<\/body>.*/s){
		my $ceva = $1;
 		$ceva =~s/<([^>]+)>//g;
		print FILEOUT $ceva . "\n";
 }
 	
 if ( $records[$i] =~/.*<back>(.*)<\/back>.*/s){
		my $ceva = $1;
 		$ceva =~s/<([^>]+)>//g;
		print FILEOUT $ceva . "\n";
 }
		
}

close FILE;
close FILEOUT;

