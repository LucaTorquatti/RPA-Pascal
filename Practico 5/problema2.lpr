program problema2;
{$codepage utf8}
var
  cant_m,cant_t,venta: integer;
  suma, monto, prom_m, prom_t: real;

begin
  // Turno Mañana
  suma := 0;
  write('¿Cuántas ventas hubo en el turno Mañana?:');readln(cant_m);
  if cant_m > 0 then
   begin
    for venta := 1 to cant_m do
     begin
      write('Venta ', venta,': $');readln(monto);
      suma := suma + monto;
     end;
   prom_m := (suma/cant_m);
   writeln('Promedio Turno Mañana: $', prom_m:0:2);
  end
  else
   writeln('No se realizaron ventas a la mañana.');
  // reinicio para Turno Tarde
  venta:= 1;
  suma := 0;
  write('¿Cuántas ventas hubo en el turno Tarde?:');readln(cant_t);
  if cant_t> 0 then
   begin
    for venta := 1 to cant_t do
     begin
      write('Venta ', venta,': $');readln(monto);
      suma := suma + monto;
     end;
     prom_t := (suma/cant_t);
     writeln('Promedio Turno Tarde $', prom_t:0:2);
    end
   else
    writeln('No se realizaron ventas a la tarde');

   readln;


end.

