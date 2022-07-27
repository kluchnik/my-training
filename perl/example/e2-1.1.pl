#!/usr/bin/env perl

# Функция поиска минимального и максимального из 3-х чисел $x, $y, $z.
# Печатает минимальное и максимальное числа, в виде "$value1, $value2\n" (обратите внимание, минимальное число идет первым).

use strict;
use warnings;

print "Введите первое число\n";
my $x=<STDIN>;
chomp $x;
print "Введите второе число\n";
my $y=<STDIN>;
chomp $y;

print "Введите третье число\n";
my $z=<STDIN>;
chomp $z;

print "-------------------\n";

sub min_and_max {
    my $min = $x;
    my $max = $y;
    
    for my $val (@_) {
      if ($min > $val) { $min = $val; }
      if ($max < $val) { $max = $val; }
    }
    print "$min, $max\n";
}

min_and_max($x, $y, $z);
