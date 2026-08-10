program problema10;
{$codepage utf8}
var
  letra: char;

begin
  repeat
    write('Ingrese una letra minuscula: ');readln(letra);
    if not (letra >= 'a') and (letra <= 'z')
     then writeln('ERROR. Ingrese una letra minuscula. ');
  until (letra >= 'a') and (letra <= 'z');
  letra := upcase (letra);
  writeln('La letra en mayusculas es: ', letra);
  readln;
end.

