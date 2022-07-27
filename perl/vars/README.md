# VARS

## Типизация
Perl — язык с динамической типизацией, любой переменной можно присвоить значение любого типа. Одна и та же переменная в различных участках программы может принимать значения разных типов.  
Новые переменные инициализируются автоматически в момент первого использования.  
**Strict** - включает строгий режим. В этом режиме все переменные должны быть явно инициализированы до их первого использования.  

## SCALAR
```
my $var1;
my $var2 = "Hello";
my $var3 = 42;
$var2 = undef;
my $var4 = "$var2 World!";
```

## ARRAY
```
my @array1 = (3, 4, 5);
my @array2 = ('a', 'b', 'c');
my @array3 = (3, "four", 5);
my @array4 = 0..9;
my @array5 = qw(a b c);
my @array6 = (1, 2, 3, @array5, 4, 5);

say $array6[3];                   # a
say ${array6}[3];                 # a
say ${array6[3]};                 # a

say "last elt = ", $#array6;      # 7
say "lenght = ", scalar @array6;  # 8
```
```
my @array = ();
my @array;

$array[0] = 1;
$array[1] = 2;
$array[7] = 5;

say $#array;          # 7
say $array[-1]        # 5

use Data::Dumper;
say Damper \@array;   # [1,2,undef,undef,undef,undef,undef,5]
```

При выводе массивов с интерполяцией их элементы разделяются между собой значением, содержащимся в специальной переменной $LIST_SEPARATOR (или коротко $"):  
```
$" = ';';                                    # $LIST_SEPARATOR

@array = (3, "four", 5);
print "с разделителем @array",    "\n";      # с разделителем 3;four;5
print "срез массива @array[1,2]", "\n";      # срез массива four;5
```

## HASH
```
my %hash = (key1 => "value1", key2 => "value2", key3 => "value3");

my %hash1 = (
  key1 => "value1",
  key2 => "value2",
);

my %hash2 = (
  'key3', "value3",
  'key4', "value4",
);

my %hash3 = qw(key5 value5 key6 value6);
my %hash_all = (%hash1, %hash2, %hash3);
```


```
my @array = qw(key1 value1 key2 value2);
my %hash = @array;

use Data::Dumper
say Damper \%hash;
# {
# key_1 => "value1",
# key_2 => "value2",
# }
```
```
my %hash;
$hash{ key1 } = "value1";
$hash{ key2 } = "value2";

my $href = {};
$href->{ key1 } = "value1";
$href->{ key2 } = "value2";
${$href}{ key3 } = "value3";
```

```
my %hash = (key1 => "value1", key2 => "value2", key3 => "value3");

say %hash;             # key1 value1 key2 value2 key3 value3
say keys %hash;        # key1 key2 key3
say values %hash;      # key1 value1 key2 value2 key3 value3
say @hash{ 'key1' };   # value1

my $one = delete $hash{key1};
say $one;              # value1

if exists $hash{key1}
```

## SCOPE
Блоком (scope) называется все, что заключено в фигурные скобки:  
```
{
    statement;
    statement;
    ...
}
```
Переменные, объявленные внутри такого блока, не видны за его пределами. Это свойство позволяет локализовывать части кода.  

## Символьные ссылки
Символической ссылкой называется обращение к переменной, имя которой содержится в другой переменной:  
```
$name = "var";
$$name = 1;       # устанавливает $var в 1
${$name} = 2;     # устанавливает $var в 2
@$name = (3,4);   # устанавливает @var в (3,4)
$name->{key} = 7; # создаёт %var и
                  # устанавливает $var{key}=7
$name->();        # вызывает функцию var
```

```
my $var = 'Hello, world!';
my $ref = \$var;

print $var;      # Hello, world!
print $ref;      # SCALAR(0x801c83078)

print $$ref;     # Hello, world!
print ${$ref};   # Hello, world!
```
