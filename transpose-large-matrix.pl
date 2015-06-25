#!/usr/bin/perl 
#use strict;

# read and split into array.
my @lines = <STDIN>;
chomp @lines;
@lines = map {[split]} @lines;

# verify lengths.
my @len = map {$#$_} @lines;
my %h; @h{@len} = @len;
#keys %h > 1 and
#    die sprintf "lengths don't match: %s\n", join(',',keys %h);

# write output
my $len = shift @len;
foreach my $i (0..$len) {
    print join(' ',map {$$_[$i]} @lines), "\n";
}




