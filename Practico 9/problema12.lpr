program problema12;

var c1,c2,cuenta: integer;

procedure muestrainv(c1,c2: integer; var cuenta: integer);
var elemento: integer;
begin
  read(elemento);
  if elemento = 0
    then write('Los numeros dentro del rango son: ')
    else if (elemento >= c1) and (elemento <= c2)
           then
            begin
                  muestrainv(c1,c2,cuenta);
                  write(elemento,' ');
                  cuenta := cuenta + 1;
            end
           else
             begin
               muestrainv(c1,c2,cuenta);
               write(' ');
             end;
end;
begin
  cuenta:= 0;
  c1:=2;
  c2:=8;
  muestrainv(c1,c2,cuenta);
  writeln;
  readln;
  writeln('La cantidad de numeros en el rango es: ' , cuenta);
  readln;
end.
