program problema6funcion;
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
var
  num: integer;
begin
  readln(num);
  if esprimo(num) then writeln('Es primo')
    else writeln('No es primo');
  readln;

end.
