program problema6a;
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
  num, i : integer;

begin
  write('Ingrese un valor: '); readln(num);

  write('Los números primos entre 1 y ',num,' son:');

  for i := 1 to num do
      begin
      if esprimo(i) then write(i,' ');
      end;
  writeln(' .');
  readln;
end.

