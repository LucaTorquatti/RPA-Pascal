program problema3a;
{$codepage utf8}
var
  minutos, pasos, km_reco, vel_prom: REAL;

begin
  write('Ingrese la cantidad de pasos realizados: ');readln(pasos);
  write('Ingrese la cantidad de minutos de actividad: ');readln(minutos);

  if (minutos = 0) or (pasos = 0)
    then writeln('DATOS INGRESADOS NO VALIDOS.')
    else begin
      km_reco := (pasos*400)/(500000);
      vel_prom := (km_reco*60)/ minutos;
      if vel_prom < 4 then writeln('Bien.');
      if (vel_prom >= 4) and (vel_prom <= 4.5) then writeln('Muy bien.');
      if vel_prom > 4.5  then writeln('Felicitaciones.');

      writeln('Recorrió un total de ',km_reco:0:2,'kilómetros a ',vel_prom:0:2,' km/h.');
      write('Ha realizado una actividad en :');
      if vel_prom < 4 then writeln(' BAJA INTENSIDAD');
      if (vel_prom >= 4) and (vel_prom <= 4.5) then writeln('INTENSIDAD MEDIA');
      if vel_prom > 4.5  then writeln('ALTA INTENSIDAD');
    end;
  writeln('Presione enter para salir.');readln;
end.

