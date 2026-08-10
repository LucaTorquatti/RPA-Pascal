program problema10ii;
{$codepage utf8}

var
  secuencia, suma , contador: integer;

begin
   suma := 0;
   contador := 0;

   write('Ingresar una secuencia de numeros enteros (presione enter para terminar): ');
   while not eoln
     do begin
     read(secuencia);
     suma := suma + secuencia;
     contador := contador + 1;
     end;

   if contador <> 0 then writeln('El promedio de los valores leídos es: ', (suma / contador):0:2);
   readln;
   readln;
end.

