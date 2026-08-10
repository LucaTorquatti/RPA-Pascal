program problema16;
var
  num, men, mayor: integer;
  ProA, ProB: boolean;

function digsignificativo(num: integer):integer;
begin
  if num < 10
     then digsignificativo := num
     else digsignificativo := digsignificativo(num div 10);
end;
procedure menormayor(var mayor, menor:integer; num: integer);
begin
  mayor := num mod 10;
  menor := num mod 10;
  num := num div 10;

  repeat
    if (num mod 10) <= menor
       then menor := num mod 10;
    if (num mod 10) >= mayor
       then mayor := num mod 10;
    num := num div 10;
  until num = 0 ;
end;
function sumadigitospares(num: integer):integer;
begin
  if num < 10
     then if (num mod 2) = 0
        then sumadigitospares := num
        else sumadigitospares := 0
     else if ((num mod 10) mod 2) = 0
        then sumadigitospares := num mod 10 + sumadigitospares(num div 10)
        else sumadigitospares := sumadigitospares(num div 10);
end;
begin
   repeat
     write('Ingrese un numero natural: '); readln(num);
     if num < 0
       then write('El numero ingresado no es natural.');
   until num >= 0 ;

   menormayor(mayor,men,num);

   ProA := (mayor = digsignificativo(num)) or  (men = digsignificativo(num));
   ProB := ((sumadigitospares(num) div digsignificativo(num)) = 0);

   write ('El numero ', num,' ');

   if (ProA and ProB)
     then write ('respeta ambas propiedades.')
   else begin

     if ProA  then write('respeta solo la propiedad A.');

     if ProB then write('respeta solo la propiedad B.');

     if not ProA and not ProB
       then write ('no respeta ninguna propiedad.');
   end;
  readln;
end.

