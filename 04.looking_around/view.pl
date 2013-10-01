#!/usr/bin/env perl
use strict;
use warnings;

sub first_letter {
    my $input = shift;
    return
        unless defined $input;
    return
        unless length($input);

    my $first = substr($input, 0, 1);

    return $first;
}

sub second_letter {
    my $input = shift;
    return
        unless defined $input;
    return
        unless length($input) > 1;

    my $first = substr($input, 1, 1);

    return $first;
}

my @words = qw[Chisel says this is a silly script to run];

foreach my $word (@words) {
    my $letter;
    print "$letter"
        if ($letter = first_letter($word));
    print "$letter"
        if ($letter = second_letter($word));
}
print "\n@words\n";
