#!/usr/bin/env perl

sub level3 {
    my $i = shift;
    my $rand = int rand(10);
    return $i + $rand;
}

sub level2 {
    my $value = shift;
    my $newval;
    if ($value % 2) {
        $newval = level3($value) + 1;
    }
    else {
        $newval = level3($value * 4);
    }
    return $newval;
}

sub level1 {
    my $v = shift;
    my $val = $v + 5;
    $val += level2($v);
    return $val;
}

my $input_value = $ARGV[0] // 6;
my $output_value = level1($input_value);

print "we got an output of $output_value, using $input_value\n";
print "about to finish!\n"
