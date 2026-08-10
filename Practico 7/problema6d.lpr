program problema6d;
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
  secuencia, contador: integer;
begin
  write('Ingrese una secuencia de numeros terminada en 0: ');
  contador := 0;
  repeat
    read(secuencia);

    if esprimo(secuencia) and (secuencia <> 0) then
      begin
        write (secuencia,' ');
        contador := contador +1;
      end;
  until (secuencia = 0) ;
  readln;

  writeln('son ',contador,' números primos que fueron ingresados en la secuencia.');
  readln;

end.

