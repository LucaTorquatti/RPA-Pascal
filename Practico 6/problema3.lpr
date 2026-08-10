program problema3;
var opcion:integer;
begin
writeln('ingrese opción: '); readln(opcion);
if (opcion>0) and (opcion<9) then write('primera')
  else if (opcion=10) or (opcion=11) then write('segunda')
    else if ((opcion>=20) and (opcion<=30)) or (opcion = 41) or ((opcion>=50) and (opcion<=60)) then write('tercera')
      else write('cuarta');
writeln('final');
readln;
end.
