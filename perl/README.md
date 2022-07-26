# PERL

## INSTALL

```
apt-get install perl && apt-get install perl-doc
```

## INSTALL MODULES
http://www.cpan.org/  
https://metacpan.org/  

```
cpan install local::lib
```
Настройка переменного окружения  
```
echo 'eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"' >>~/.bashrc
. ~/.bashrc
chown $USERNAME:$GROUP -R ~/.cpan
```

## EXAMPLE SCRIPTS

```
#!/usr/bin/env perl

use strict;
use warnings;
use 5.016; # Использование возможностей новой функции

# ﻿сCчитываем данные ﻿с STDIN, пока они не закончатся
while ﻿(my $line = <>) {
    #
}

# Выполняем код

# вывод на STDOUT
print "...";
say "...";
```
