#!/usr/bin/env perl

# Напишите функцию, принимающую целое не отрицательное число и печатующую факториал этого числа.

use strict;
use warnings;

print "Введите число\n";
my $n=<STDIN>;
chomp $n;

print "-------------------\n";

sub factorial {
  my ( $n ) = @_;
  my $fact = 1;
  while ( $n > 0 ) {
    $fact *= $n;
    $n -= 1;
  };
  print "$fact\n";
}

factorial( $n );
