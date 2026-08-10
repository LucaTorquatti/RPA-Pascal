program problema1;
{$codepage utf8}{$mode tp}
function Invertir( num: integer ):integer;
var invertido, ultimo: integer;
begin
	invertido := 0;
    while num > 0 do
	begin
	   ultimo := num mod 10;
    	   num := num div 10;
    	   invertido := invertido * 10 + ultimo;
	end;
    Invertir := invertido;
end;
var
  numero: integer;
begin
  write('Ingresar el numero que quiere comprobar: '); readln(numero);
  if (numero = invertir(numero))
    then writeln('El numero', numero, 'es capicua.')
    else writeln('El numero', numero, 'no es capicua.');
  readln;
end.
