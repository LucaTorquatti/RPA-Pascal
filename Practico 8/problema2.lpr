program problema2;
{$codepage utf8}{$mode tp}

procedure solicitartope(var tope:integer);
begin
  repeat
   write('Ingresa un numero mayor a 100: ');readln(tope);
   if tope < 100 then write('>>ERROR.');
  until tope > 100;
end;
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
procedure mostrar_numeros(tope: integer);
var i: integer;
begin
 writeln('Los numeros que cumplen la propiedad son: ');
 for i:= 1 to tope do
   begin
     if digitosrepetidos(i) then write(i,' ');
   end;
end;
var tope: integer;
begin
  solicitartope(tope);
  mostrar_numeros(tope);
  readln;
end.

