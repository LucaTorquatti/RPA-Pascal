program problema1;

var
  N,veces:integer;
  caracter:char;

begin
  write('Ingrese la cantidad de veces que quiere repetir el caracter: ');readln(N);
  write('Ingrese el caracter: '); readln(caracter);

  for veces := 1 to N
   do write(caracter);
  readln;
end.

