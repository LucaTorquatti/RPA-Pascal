program problema5;
{$codepage utf8}

var
  cant, numero, secuencia: integer;
  negativos: boolean;


begin
  write('Ingrese la cantidad de números que desea analizar: '); readln(cant);
  if cant = 0 then writeln('La secuencia no tienen numeros negativos.')
   else begin
  write('Ingrese la secuencia de numeros : ');
  negativos := false;
  for numero := 1 to cant do
   begin
     read(secuencia);
     if secuencia < 0 then
      begin
        if not negativos then write('Los numeros negativos son: ');
        negativos := true;
        write(secuencia,' ');

      end;
   end;
  if not negativos then
     writeln('La secuencia no tienen numeros negativos.' );

  readln;
   end;
  readln;

end.

