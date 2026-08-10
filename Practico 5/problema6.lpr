program problema6;
{$codepage utf8}
var
  suma, numero, menor, mayor, vuelta, cant: integer;
  promedio: real;

begin
  write('Indique cantidad de números a ingresar en la secuencia: ');readln(cant);
  writeln('Ingrese todos los números de la secuencia, separados entre sí por un espacio: '); read(numero);

  mayor := numero;
  menor := numero;
  suma := 0 + numero;

  for vuelta := 1 to (cant - 1)
    do begin
      read(numero);
      if mayor < numero then mayor := numero;
      if menor > numero then menor := numero;
      suma := suma + numero;
      end;
  readln;
  promedio := suma/cant;

  writeln('Menor número de la secuencia: ',menor);
  writeln('Mayor número de la secuencia: ',mayor);
  writeln('Promedio de los valores leídos: ',promedio:0:2);
  readln;
end.

