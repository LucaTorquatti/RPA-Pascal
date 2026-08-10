program problema1;
{$codepage utf8}

var
  articulo :integer;
  precio,suma, mascaro, resto :real;

begin
  // asigno valores para suma
  suma := 0;
  mascaro := 0;

  writeln('Ingrese el precio de los 8 artículos');
  for articulo:= 1 to 8 do
   begin
     write('Artículo ', articulo, ': $');readln(precio);
     suma := suma + precio;
    if precio > mascaro then
     mascaro := precio;
   end;
  writeln('Suma total: $', suma:0:2);
  writeln('Precio del más caro: $',mascaro:0:2);
  resto := suma - mascaro;
  writeln('Resto de los artículos: $', resto:0:2);
  if resto > mascaro then
   writeln('Total a pagar (sin el mayor): $',resto:0:2)
  else
   begin
   suma := suma*0.92;
   writeln('Total a pagar (con 8% desc.): $', suma:0:2);
   end;
  readln;
end.

