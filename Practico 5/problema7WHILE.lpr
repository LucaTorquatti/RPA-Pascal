program problema7WHILE;
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
   read(numero);
   while not (numero = 0)
    do begin
      suma := suma + numero;
      contador := contador + 1;
      read(numero);
    end;
  readln;

  if suma = 0 then
   writeln('No hay promedio. ')
   else begin
     prom := suma / contador;
     writeln('El promedio de los valores leídos es: ', prom:0:2);
     end;

   readln;
end.

