program _2parcial2024;

const
  cantidad = 10;
var
  secuencia, mayor, menor, ignorado, i: integer;

begin
  ignorado := 0;



  write('Ingrese ',cantidad,' números: ');
  read(secuencia);
  mayor := secuencia;
  menor := secuencia;
  repeat
    read(secuencia);
    if secuencia > mayor then mayor := secuencia;
    if secuencia < menor then menor := secuencia;
    if secuencia < 0 then ignorado := ignorado +1;
  until eoln;
  readln;

  write(' Los números entre 3 y 39 que terminan en 1 o 5 son: ');
  for i := menor to mayor do
    if (i mod 10 = 1) or (i mod 10 = 5) then
      write (' ',i);

  writeln;
  writeln('numeros ignorados : ', ignorado);
  readln;
end.

