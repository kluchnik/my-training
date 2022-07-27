#!/usr/bin/env perl

# Функция для вычисления простых чисел в диапазоне [$x, $y].
# Печатает все положительные простые числа в формате "$value\n"
# Если простых чисел в указанном диапазоне нет - ничего не печатает.


use strict;
use warnings;

print "Введите первое число\n";
my $x=<STDIN>;
chomp $x;

print "Введите второе число\n";
my $y=<STDIN>;
chomp $y;

print "-------------------\n";

sub primes_from_interval {
  my ( $x, $y ) = @_;
  my $count = 0;
  for ( my $n = $x+1; $n < $y; $n++ ) {
    $count = 0;
    for ( my $i = $n; $i > 0; $i-- ) {
      if ( ($n % $i) == 0 ) {
        $count += 1
      }
      if ( $count > 2 ) { last; }
    }
    if ( $count == 2 ) {
      print "$n\n";
    }
  }
}

primes_from_interval( $x, $y );


