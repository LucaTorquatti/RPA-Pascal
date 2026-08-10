program problema7REPEAT;
{$codepage utf8}

var
  contador, numero, suma: integer;
  prom: real;

begin
  // le doy valor a contador y suma
  suma := 0;
  contador := 0;
  // solicito
  write('Ingrese números naturales (0 para finalizar):');

  repeat
   read(numero);
   if not (numero = 0) then
    begin
      suma := suma + numero;
      contador := contador + 1;
    end;
   until numero = 0;
  if suma = 0 then
   writeln('No hay promedio. ')
   else begin
     prom := suma / contador;
     writeln('El promedio de los valores leídos es: ', prom:0:2);
     end;
   readln;
   readln;
end.

