program problema5;
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
function esomirp(numero: integer):boolean;
begin
  esomirp := (invertir(numero) <> numero) and (esprimo(numero));
end;
procedure mostraromirp(numero, cota, tope: integer);
var i: integer;
begin
  writeln('Los numeros omirp de ', numero ,' digitos son: ');
 for i:= cota to tope do
     if esomirp(i) then write(i,' ');
end;
var cant_digitos, cota, tope, i, ii: integer;
begin
  write(' Ingrese la cantidad de digitos: '); readln(cant_digitos);
  cota:= 1; tope:= 10;
  for i := 1 to cant_digitos-1 do cota:= cota * 10;
  for ii := 1 to cant_digitos-1 do tope := tope * 10;

  mostraromirp(cant_digitos, cota, tope);
  readln;
end.


