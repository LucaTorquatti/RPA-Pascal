program estacionamiento;

var
  vehiculo: char;
  piso, horas: integer;
  precio: real;
  larga_estadia: boolean;

begin
  write('Ingrese el tipo de vehiculo, Auto "A" o Moto "M": '); readln (vehiculo);
  write('Ingrese cantidad de horas que estaciono el vehiculo: '); readln (horas);
  write('Ingrese en que piso dejo el vehiculo 1, 2 o 3: '); readln (piso);

  if piso = 1 then precio := horas * 10.5
   else
     if piso = 2 then precio := horas * 8.5
      else precio := horas * 6.5;

  if (vehiculo = 'M') or (vehiculo = 'm')
   then precio := precio * 0.7;

  if horas > 5
   then larga_estadia := True;

  if larga_estadia = True
   then precio := precio + 50;

  writeln(' El precio final es: $', precio:0:2);
  readln;

end.

