program problema13while;
{$codepage utf8}

var
  backup_num, num, mayor: integer;
begin
     write('Ingrese un numero entero: ');readln(num);
     backup_num := num;
     mayor := 0;

     while num <> 0
        do begin
          if (num mod 10) > mayor
            then mayor := (num mod 10);
          num := num div 10;
        end;

     writeln('El mayor digito de ', backup_num, ' es: ', mayor);
     readln;

end.

