program problema13repeat;
{$codepage utf8}

var
  backup_num, num, mayor: integer;
begin
     write('Ingrese un numero entero: ');readln(num);
     backup_num := num;
     mayor := 0;

     repeat
          if (num mod 10) > mayor
            then mayor := (num mod 10);
          num := num div 10;
     until num = 0;

     writeln('El mayor digito de ', backup_num, ' es: ', mayor);
     readln;

end.
