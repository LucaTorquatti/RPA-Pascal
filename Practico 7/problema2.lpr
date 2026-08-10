program problema2;
{$codepage utf8}{$mode tp}
function esbisiesto(anio:integer):boolean;
 begin
   esbisiesto := (anio mod 4 = 0) and (anio mod 100 <> 0) or (anio mod 400 = 0);
 end;
 var
   nro_anio : integer;
 begin
   write('Ingrese el año que desea comprobar si es bisiesto: '); readln(nro_anio);
   if esbisiesto(nro_anio) then write('El año ',nro_anio,' es bisiesto.')
     else writeln('El año ', nro_anio,' no es bisiesto.');
   readln;
 end.
