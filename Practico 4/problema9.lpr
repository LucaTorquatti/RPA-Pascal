program problema9;
{$codepage utf8}
var
  N, suma, prede: integer;
begin
  suma := 0;
  repeat
    write ('Ingrese un N positivo que quiera sumar: ');readln(N);
    if n<1 then writeln ('ERROR. Ingrese un numero positivo.');
  until n > 0;
  for prede := 1 to N do
   suma := suma + prede;
  writeln('La suma de N y sus predecesores es: ', suma);
  readln;
end.
