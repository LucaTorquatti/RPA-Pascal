program problema10i;
{$codepage utf8}
var
  suma_mm, secuencia,  dias, umbral: integer;

begin

  suma_mm := 0;
  dias := 0;
  repeat
    write('Ingrese el valor del umbral de lluvia en milímetros: ');readln(umbral);
    if (umbral > 200) or (umbral <10)
      then writeln('Error. Ingrese un umbral entre 10 y 200.')
  until (umbral < 200) and ( umbral > 10) ;

  write('Ingrese la secuencia de lluvia de los últimos 30 días (terminar con 0): ');
  repeat
    read(secuencia);
    if secuencia > 10 then suma_mm := suma_mm + secuencia;
    if secuencia <> 0 then dias := dias + 1;
  until (suma_mm >= umbral) or (secuencia = 0);
  readln;

  writeln('Las últimas ',dias,' lluvias acumularon ', suma_mm,' milímetros.');

  if suma_mm < umbral then writeln('Se recomienda esperar mas lluvias para sembrar.')
    else if (suma_mm > umbral) and (suma_mm < 200) then writeln('Se recomienda sembrar, terreno apto.')
          else writeln('Se recomienda esperar a que seque el terreno, no sembrar aun.');
  readln;

end.

