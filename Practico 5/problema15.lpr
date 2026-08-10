program problema15;
{$codepage utf8}

var
  dias_uso, minutos, dias_nouso: integer;

begin
  dias_uso := 0;
  dias_nouso := 0;
  writeln('Ingrese los minutos estudiados cada día (-1 para finalizar): ');

  repeat
    read(minutos);
    if minutos > 0
     then dias_uso := dias_uso + 1
     else if minutos = 0 then
          dias_nouso := dias_nouso + 1
  until minutos = -1 ;
  readln;

  writeln('Días que estudió con la aplicación: ',dias_uso);
  writeln('Días que no usó la aplicación: ',dias_nouso);

  write('Valoración: ');
  if (dias_nouso = 0) and (dias_uso <> 0) then writeln('Mejor imposible.');
  if (dias_nouso <= dias_uso) and (dias_nouso > 0) then writeln('vas muy bien.');
  if (dias_nouso > dias_uso) and (dias_uso > 0)  then writeln('vas medio lento.');
  if (dias_uso = 0) and (dias_nouso <> 0) then writeln('decepcionante.');
  if (dias_uso = 0) and (dias_nouso = 0) then writeln('No se han registrado datos.');

  readln;

end.

