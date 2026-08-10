program problema17;
{$codepage utf8}
const
  combo1 = 900; combo2 = 1200; combo3 = 1300; combo4 = 1800; combo5 =1500;
  bebida1 = 300; bebida2 = 400; bebida3= 200; bebida4 = 0;
var
  combo, bebida: char;
  preciofinal, preciocombo, preciobebida: real;
  diames: integer;

begin
  writeln('Bienvenido a Hamburgueseria panchitopanchito');
  writeln('Combo 1: Hamburguesa de Panceta y Huevo.  $900');
  writeln('Combo 2: Hamburguesa doble con Cheddar.  $1200');
  writeln('Combo 3: Triple hamburguesa con panceta.   $1300');
  writeln('Combo 4: Lomo con Provoleta.   $1800');
  writeln('Combo 5: Doble hamburguesa, doble cheddar, panceta, salsa barbacoa.  $1500 ');
  write('Ingrese el numero de combo que quiere pedir: ');readln(combo);
  writeln('Opciones de bebida: ');
  writeln('1: Gaseosa.  $300');
  writeln('2: Cerveza.  $400');
  writeln('3: Agua. $200');
  writeln('4: No quiero bebida');
  write('Ingrese el numero de combo que quiere pedir: ');readln(bebida);
  write('Ingrese el dia del mes: ');readln(diames);

  if combo = '1'  then
   preciocombo := combo1;
  if combo = '2'  then
   preciocombo := combo2;
  if combo = '3'  then
   preciocombo := combo3;
  if combo = '4'  then
   preciocombo := combo4;
  if combo = '5'  then
   preciocombo := combo5;

  if bebida = '1' then
   preciobebida := bebida1;
  if bebida = '2' then
   preciobebida := bebida2;
  if bebida = '3' then
   preciobebida := bebida3;
  if bebida = '4' then
   preciobebida := bebida4;


  if (diames mod 2 = 0 ) then
   preciofinal := preciocombo + preciobebida * 0.6
  else
     preciofinal := preciocombo * 0.8 + preciobebida;

 writeln('El precio total a pagar es: $',preciofinal:0:2);
 readln;
 end.







