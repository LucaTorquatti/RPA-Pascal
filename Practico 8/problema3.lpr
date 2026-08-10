program problema3;
{$codepage utf8}{$mode tp}

function aparecedigito (dig, num : integer):integer;
var repeticiones: integer;
begin
  repeticiones := 0;
 repeat
 if dig = (num mod 10)then repeticiones := repeticiones + 1;
 num := num div 10;
 until (repeticiones > 1) or (num = 0);
 aparecedigito := repeticiones;

end;

function digitosrepetidos(num:integer):boolean;
var original: integer; repetidos: boolean;
begin
  repetidos := false;
  original:= num;
  while (num > 0) and not repetidos do
   begin
     repetidos:= Aparecedigito (num mod 10, original) > 1;
     num := num div 10;
   end;
  digitosrepetidos := repetidos;
end;
var numero: integer; primeravuelta: boolean;
begin
  write('Ingrese una secuencia de numeros enteros terminada en 0: ');
  primeravuelta:= true;
  repeat
   read(numero);
   if primeravuelta then writeln('Los números que tienen dígitos repetidos son: ');
   if digitosrepetidos(numero) then write(numero,' ');
   primeravuelta := false;
  until (numero = 0)  ;
  readln;
  readln;
end.

