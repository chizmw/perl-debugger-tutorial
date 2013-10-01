#!/usr/bin/env perl

sub some_sub {
    my $val = shift;

    if ($val) {
        my $never_used = 12;
    }
    else {
        my $also_never_used = 14;
    }

    my $other_value = random_int();

    return $other_value;
}

sub random_int {
    my $r = int rand (42);
    return $r;
}

my $start_value = $ARGV[0] || 13;
my $final_value = some_sub($start_value);
exit;
