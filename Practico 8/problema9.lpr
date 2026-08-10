program problema9;
{$codepage utf8}
var
  numero: integer;

function ObtenerMayorDigito(num:integer): integer;
var
  digito, max: integer;
begin
  max := 0;
  while num > 0 do
  begin
    digito := num mod 10;
    if digito > max then
      max := digito;

    num := num div 10;
  end;
  ObtenerMayorDigito := max;
end;

begin
  write('Ingrese un número natural: ');
  readln(numero);

  writeln('El mayor dígito es: ', ObtenerMayorDigito(numero));

  { Ahora intenta evaluar si el número original era par o impar }
  if (numero mod 2 = 0) then
    writeln('Además, el número ingresado es PAR.')
  else
    writeln('Además, el número ingresado es IMPAR.');

  readln;
end.


