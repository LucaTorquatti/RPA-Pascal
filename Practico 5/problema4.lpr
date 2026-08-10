program problema4;
{$codepage utf8}

var
  cantidad, ncaracter, vocal: integer;
  caracter: char;

begin
 write('Ingrese la cantidad de caracteres: ');readln(cantidad);
 vocal := 0;
 if cantidad > 0 then
  begin
  write('Ingrese la secuencia de caracteres:');
  for ncaracter := 1 to cantidad
   do begin
     read(caracter);
     caracter:= lowercase(caracter);
     if (caracter = 'a') or (caracter = 'e') or (caracter = 'i') or (caracter = 'o' ) or (caracter = 'u')
      then vocal := vocal + 1
      end;
  readln;
   if vocal > 0 then
    writeln('La cantidad de vocales es ',vocal)
   else writeln('En la secuencia no hay vocales.');
   end
 else writeln('No se  ha solicitado leer cantidad de vocales');

 readln;
end.

