program problema5;
{$codepage utf8}

var
  linea, columna, D: integer;
  caracter: char;

begin
  write('Ingrese el valor de los lados del cuadrado: ');readln (D);
  write('Ingrese con que caracter quiere iniciar: '); readln (caracter);

  for columna := 1 to D
   do begin
         for linea := 1 to D
           do begin
              write(caracter:2);
              caracter := succ(caracter);
              end;
         writeln;
      end;
  readln;
end.
