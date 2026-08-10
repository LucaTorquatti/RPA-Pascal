program CalculoMulta;
{$codepage utf8}
const
  limite = 40;  {Velocidad límite urbana}
var
  velocidad, multa: integer;
  zona_escolar: char;
begin
  write('Ingrese velocidad del vehículo: ');
  readln(velocidad);
  write('¿Ocurrió en zona escolar? (S/N): ');
  readln(zona_escolar);

  multa := 0; { Valor por defecto si no hay infracción }

  if (velocidad > limite)
   then
     if (velocidad <= limite + 10)
      then
         multa := 10000;

     if (velocidad >= limite + 10) and (velocidad <= limite + 30)
      then
         multa := 50000
      else
         if (velocidad > limite + 30)
          then
             multa := 100000;

  if (zona_escolar = 'S')
   then
      multa := multa * 2;

  if (multa = 0)
   then
     writeln('No se produjo ninguna infracción')
  else
     writeln('La multa a pagar es: $', multa);
  readln;
end.

