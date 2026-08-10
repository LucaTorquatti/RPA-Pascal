program problema6b;
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
  num1, num2, i : integer;

begin
  write('Ingrese dos valores: '); readln(num1,num2);

  write('Los números primos entre ',num1,' y ',num2,' son:');

  for i := num1 to num2 do
      begin
      if esprimo(i) then write(i,' ');
      end;
  writeln(' .');
  readln;
end.

