program problema1;
{$codepage utf8}
var
  viento: integer;
begin
  repeat
    write(' Ingrese la velocidad del viento en km/h: '); readln(viento);
    if viento < 0 then write('Error, debe ser 0 o mayor.');
  until viento >= 0 ;

  case viento of
  0..1: writeln('Esa velocidad tiene categoría 0 según la escala de Beaufort y denominación Calma');
  2..5: writeln('Esa velocidad tiene categoría 1 según la escala de Beaufort y denominación Ventolina');
  6..11: writeln('Esa velocidad tiene categoría 2 según la escala de Beaufort y denominación Flojito (Brisa muy débil)');
  12..19: writeln('Esa velocidad tiene categoría 3 según la escala de Beaufort y denominación Flojo (Brisa Ligera)');
  20..28: writeln('Esa velocidad tiene categoría 4 según la escala de Beaufort y denominación Bonancible (Brisa moderada)');
  29..38: writeln('Esa velocidad tiene categoría 5 según la escala de Beaufort y denominación Fresquito (Brisa fresca)');
  39..49: writeln('Esa velocidad tiene categoría 6 según la escala de Beaufort y denominación Fresco (Brisa fuerte)');
  50..61: writeln('Esa velocidad tiene categoría 7 según la escala de Beaufort y denominación Frescachón (Viento fuerte) ');
  62..74: writeln('Esa velocidad tiene categoría 8 según la escala de Beaufort y denominación Temporal (Viento duro)');
  75..88: writeln('Esa velocidad tiene categoría 9 según la escala de Beaufort y denominación Temporal fuerte (Muy duro) ');
  89..102: writeln('Esa velocidad tiene categoría 10 según la escala de Beaufort y denominación Temporal duro (Temporal) ');
  103..117: writeln('Esa velocidad tiene categoría 11 según la escala de Beaufort y denominación Temporal muy duro (Borrasca)');
  118..maxint: writeln('Esa velocidad tiene categoría 12 según la escala de Beaufort y denominación Temporal huracanado (Huracán)');
  end;
  readln;
end.

