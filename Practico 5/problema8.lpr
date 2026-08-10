program problema8;
{$codepage utf8}
var
  cant, secuencia: integer;
  trescifras: boolean;

begin
  cant := 0;
  trescifras := false;
  secuencia := 1;
  write('Ingrese una secuencia de naturales terminada en 0: ');
  while not (secuencia = 0)
   do begin
     read(secuencia);

     if secuencia > 999 then
      begin

      if not trescifras then
      write('Los números con más de tres cifras son: ');

      write(secuencia,' ');
      cant := cant + 1;
      trescifras := true ;
      end;
   end;
  readln;

  if cant > 0 then
   begin
   writeln('');
   writeln('La cantidad de números mostrada fue: ', cant);
   end;
  if cant = 0 then writeln('No hay numeros mayores a tres cifras. ');

  readln;
end.

