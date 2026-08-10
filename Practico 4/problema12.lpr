program problema12;
{$codepage utf8}

var
  linea, columna, D: integer;
  caracter: char;

begin
  repeat
   write('Ingrese el valor de los lados del cuadrado: ');readln (D);
   write('Ingrese con que caracter quiere iniciar: '); readln (caracter);
   if not ((D> 0) and (D < 10)) then
   writeln( 'Ingrese un valor para Lados del cuadrado correspondiente.');
   if not (caracter > ' ') then
     writeln( 'Ingrese un valor para caracter correspondiente.');
  until ((D> 0) and (D < 10)) and (caracter > ' ');

  for columna := 1 to D
   do begin
         for linea := 1 to D do
            begin
              write(caracter:2);
              caracter := succ(caracter);
            end;
            writeln;
      end;
  readln;
end.

