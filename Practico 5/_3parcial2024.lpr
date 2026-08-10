program _3parcial2024;

const
  bajo = 100; alto = 200;

var
  numero, suma: integer;
  otra: char;

begin

  repeat
    suma := 0;
    write('Ingrese una secuencia de naturales finalizada en 0:');

    repeat
     read(numero);
     suma := suma + numero;
    until (numero = 0);
    readln;

    if suma <= bajo then
      writeln('NIvel bajo.')
      else if (suma > bajo) and (suma < alto) then
        writeln('Nivel normal')
        else writeln('Peligro mortal');


    write('¿Desea ingresar otra secuencia? (s/n): '); readln(otra);
  until (otra = 'n');
  writeln('Gracias ');
  readln;

end.

