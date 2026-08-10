
program problema18;
{$codepage utf8}
var
  valorA, valorB: integer;

procedure Intercambiar(var x, y: integer);
var
  aux: integer;
begin
  aux := x;
  x := y;
  y := aux;
end;

begin
  write('Ingrese el primer valor: '); readln(valorA);
  write('Ingrese el segundo valor: '); readln(valorB);

  Intercambiar(valorA, valorB);

  writeln('Los valores intercambiados son: A=', valorA, ' y B=', valorB);
  readln;
end.
