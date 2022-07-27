#!/usr/bin/env perl

# Найти решение квадратного уравнения
# ax^2+bx+c=0ax
#
# Функция solve_equation:
# * принимает на вход коэффиценты квадратного уравнения  $a_value, $b_value, $c_value.
# * вычисляет корни в переменные $x1 и $x2($x1 < $x2).
# * печатает результат вычисления в виде строки "$x1, $x2\n".
# * если уравнение имеет единственное решение, то печатает результат в виде  "$x1\n".
# * Если уравнение не имеет решения или не является квадратным, должно быть напечатано "No solution!\n"  (рассматриваем только действительные числа в корнях)

use strict;
use warnings;

print "Введите первое число\n";
my $a=<STDIN>;
chomp $a;
print "Введите второе число\n";
my $b=<STDIN>;
chomp $b;

print "Введите третье число\n";
my $c=<STDIN>;
chomp $c;

print "-------------------\n";

sub solve_equation {
my ( $a, $b, $c ) = @_;
    my $x1;
    my $x2;
    if ($a != 0) {
        if ($b == 0 and $c == 0) {
             $x1 = 0;
             print("$x1\n");
        } else {
            my $discriminant = $b ** 2 - 4 * $a * $c;
            if ( $discriminant > 0 ) {
                my $D1 = (-$b + sqrt($discriminant)) / (2 * $a);
                my $D2 = (-$b - sqrt($discriminant)) / (2 * $a);
                if ($D1 < $D2) {
                    $x1 = $D1;
                    $x2 = $D2;
                } else {
                    $x1 = $D2;
                    $x2 = $D1;
                }
                print("$x1, $x2\n")
            } elsif ( $discriminant == 0 ) {
                $x1 = -$b / (2 * $a);
                print("$x1\n");
            } else { print("No solution!\n"); }
        } 
     } else { print("No solution!\n"); }
}

solve_equation($a, $b, $c);
