program problema3b;
{$codepage utf8}
var
  minutos, pasos, km_reco, vel_prom,km_totales: REAL;
  dia, dia_bajo, dia_alto: integer;

begin

  dia_bajo := 0;
  dia_alto := 0;
  km_totales := 0;

  for dia := 1 to 7
    do begin;
       writeln('DIA ', dia);
       write('Ingrese la cantidad de pasos realizados: ');readln(pasos);
       write('Ingrese la cantidad de minutos de actividad: ');readln(minutos);

       if (minutos = 0) or (pasos = 0)
         then writeln('NO REALIZÓ ACTIVIDAD.')
         else begin
           km_reco := (pasos*400)/(500000);
           vel_prom := (km_reco*60)/ minutos;
           if vel_prom < 4 then writeln('Bien.');
           if (vel_prom >= 4) and (vel_prom <= 4.5) then writeln('Muy bien.');
           if vel_prom > 4.5  then writeln('Felicitaciones.');

           writeln('Recorrió un total de ',km_reco:0:2,' kilómetros a ',vel_prom:0:2,' km/h.');
           write('Ha realizado una actividad en :');
           if vel_prom < 4 then writeln(' BAJA INTENSIDAD');
           if (vel_prom >= 4) and (vel_prom <= 4.5) then writeln('INTENSIDAD MEDIA');
           if vel_prom > 4.5  then writeln('ALTA INTENSIDAD');

           km_totales := km_totales + km_reco;
           if vel_prom < 4 then dia_bajo := dia_bajo + 1;
           if vel_prom > 4.5 then dia_alto := dia_alto +1;
           writeln;
         end;
         end;

  writeln('Total de kilómetros recorridos en la semana: ',km_totales:0:2, ' km.');
  if dia_bajo > 2
    then writeln ('ADVERTENCIA. Has entrenado mas de dos dias a baja intensidad. Ponete las pilas!');
  if (dia_alto > 2) and not(dia_bajo > 2)
    then writeln ('ADVERTENCIA. Has entrenado mas de dos dias a alta intensidad. Cuidado con las lesiones!');

  writeln('Presione enter para salir.');readln;
end.

