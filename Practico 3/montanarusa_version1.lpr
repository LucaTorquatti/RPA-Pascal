program aire_acondicionado;
{$codepage utf8}

var
  escala: char;
  temp_amb, temp_des: REAL;

begin
   write('La temperatura ambiente es: ');
   readln(temp_amb);
   writeln('Para escala en Farenheit presiona F, para Celsius presiona C.');
   write(' Ingresa la letra de la escala: ');
   readln(escala);
   write('Ingresa la temperatura deseada: ');
   readln(temp_des);

   IF escala = 'F'
    then temp_des := (temp_des - 32) * 5/9;
   IF temp_des < temp_amb
    then writeln('Acción que debe realizarse: encender el aire')
    else writeln('Acción que debe realizarse: apagar aire');

   readln;
end.

