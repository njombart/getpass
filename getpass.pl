#!/usr/bin/perl

# getpass - ecu@200ok.org

use strict;
use File::KeePass;
use Term::ReadKey;

my $searchkey=shift;

my $k = File::KeePass->new;
my $file = "CHANGE_THIS.kdbx";

die "Please configure \$file with your database file full path.\n" unless ($file !~ /CHANGE_THIS/);
die "Please enter a search key\n" unless defined($searchkey);

print "Type master password:";
ReadMode('noecho');
chomp(my $master_pass = <STDIN>);
ReadMode(0);
print "\n";

$k->load_db($file, $master_pass);

my @all_entries = $k->find_entries({}); # get all entries for matching title

$k->unlock;
foreach my $e (@all_entries) {
	print $e->{'title'} ." ". $e->{'username'} ." ". $e->{'password'} ." ". $e->{'comment'} . "\n" 
	if($e->{'title'} =~ m/$searchkey/i);
}
$k->clear; 

