program problema11;
{$codepage utf8}{$mode tp}

procedure repetidor(car: char; cant: integer);
var i: integer;
begin
  for i := 1 to cant do
   write(car);
  writeln;
end;
var
  canti: integer;
  cara: char;
begin
  write('Ingrese el caracter que quiere escribir: '); readln(cara);
  write('Ingrese la cantidad de veces que quiere repetirlo: '); readln(canti);

  repetidor(cara,canti);
  readln;
end.

