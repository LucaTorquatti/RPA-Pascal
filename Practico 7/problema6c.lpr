program problema6c;
{$codepage utf8}{$mode tp}
function EsPrimo( numero: integer ):boolean;
var
  i,contdiv: integer;
begin
  contdiv := 0;
  for i := 1 to numero do
      if ((numero/i) = trunc(numero/i)) then contdiv := contdiv + 1;
  esprimo := (contdiv <= 2);
end;
function siguienteprimo ( numero: integer):integer;
begin
  repeat
    numero := numero + 1;
  until esprimo(numero) ;
  siguienteprimo := numero;
end;

var
  num: integer;
begin
  write('Ingrese el numero que quiere encontrar el siguiente primo: '); readln(num);

  writeln('El siguiente numero primo es:', siguienteprimo(num));
  readln;

end.

