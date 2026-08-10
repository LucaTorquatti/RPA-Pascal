program aeropuerto;
{$codepage UTF8}
const  hora_prevista = 10;
	   minutos_previstos = 25;   // vuelo llega 10:25
var
llegada_prevista_en_min, retraso_en_min: Integer;
hora_llegada_en_min, hora_llegada, min_llegada: integer;
begin
llegada_prevista_en_min := hora_prevista * 60 + minutos_previstos;

write('Ingrese la cantidad de minutos de retraso:');
readln ( retraso_en_min);

hora_llegada_en_min := llegada_prevista_en_min + retraso_en_min;
hora_llegada := hora_llegada_en_min DIV 60;
min_llegada := hora_llegada_en_min MOD 60;

writeln ('El vuelo llega a las ', hora_llegada,'hs ', min_llegada, ' min');
readln;
end.

