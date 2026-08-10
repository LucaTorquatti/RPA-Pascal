program a;
{$codepage utf8}
var
  nro:integer;
begin
  write('Ingrese un número:');
  readln(nro);

  if nro < 10
   then
     nro := nro - 5;
  if nro < 5 then
    nro := nro + 10;
  write('El resultado es:');
  writeln(nro);
  readln;
end.


