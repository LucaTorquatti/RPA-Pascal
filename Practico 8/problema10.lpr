program problema10;
{$codepage utf8}{$mode tp}
function dig_igual(num:integer):boolean;
var ultdig: integer; igual:boolean;
begin
  ultdig:= num mod 10;
  igual := true;
  while ((num <> 0) and igual) do
  begin
    num := num div 10;
    if num <> 0 then igual := ((num mod 10) = ultdig);
  end;

  dig_igual := igual;

end;
function tieneD(d,num: integer):boolean;
var tiene: boolean;
begin
  tiene := false;
  repeat
      tiene := ((num mod 10) = d);
      num := num div 10;
  until (num = 0) or  tiene  ;
  tieneD := tiene;
end;

var
   numerosmostrados, digito, numero: integer; primeravez: boolean;
begin
  write('Ingrese un dígito D: ');readln(digito);
  write('Ingrese una secuencia de números: ');
  numerosmostrados:= 0; primeravez:= true;

  repeat
  read(numero);
  if primeravez then write('Los números que respetan  las propiedades son: ');
  if dig_igual(abs(numero)) and tieneD(digito,abs(numero)) then
    begin
      write(numero,' ');
      numerosmostrados := numerosmostrados + 1;
    end;
   primeravez := false;
  until (numero = 0) ;
  readln; writeln;
  writeln('La cantidad de numeros mostrados es: ',numerosmostrados);
  readln;
end.

