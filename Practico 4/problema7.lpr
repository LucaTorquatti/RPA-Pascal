program problema7;
{$codepage utf8}

var
  divisores, dividendo: integer;

begin
  write('Ingrese el numero que quiere conocer los divisores: ');readln(dividendo);
  write('Los divisores de ', dividendo, ' son: ');
  for divisores := 1 to dividendo do
   if (dividendo mod divisores = 0) then
    write(divisores,' ');
  readln;
end.
