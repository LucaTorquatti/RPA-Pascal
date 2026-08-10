program problema7;
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

program b;
{$codepage utf8}
var
  nro:integer;

begin
   write(’Ingrese un número:’);
   read(nro);

  if nro < 10
   then
       begin
       nro := nro - 5;
       write(’El resultado es:’);
       end
   else
       begin
          nro := nro + 10;
          write(’El resultado es:’);
       end;

  writeln(nro);
end.

program c;
{$codepage utf8}
var
  nro:integer;
begin
 write(’Ingrese un número:’);
 read(nro);

  if nro < 10
    then
     if nro < 5 then
        nro := nro – 10
     else
       nro := nro - 5
  else
    if nro > 15 then
     nro := nro + 10
    else
     nro := nro + 5;

 write(’El resultado es:’);
 writeln(nro);
end.


