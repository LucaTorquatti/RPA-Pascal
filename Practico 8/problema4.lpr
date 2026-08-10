program problema4;
{$codepage utf8}

function cant_dias(mes,anio: integer):integer;
begin
  case mes of
        11,4,6,9: cant_dias := 30;
        2: IF (anio mod 4=0) and (anio mod 100<>0) or (anio mod 400=0)
            THEN cant_dias := 29
            ELSE cant_dias := 28;
        1,3,5,7,8,10,12: cant_dias := 31;
    end;
end;
function fechavalida(dia,mes,anio: integer):boolean;
begin
  fechavalida := ((mes >= 1) and (mes <= 12) and (dia <= cant_dias(mes, anio)) and (anio > 0));
end;
procedure escribirmes(mes: integer);
begin
     case mes of
          1: write(' enero');
          2: write(' febrero');
          3: write(' marzo');
          4: write(' abril');
          5: write(' mayo');
          6: write(' junio');
          7: write(' julio');
          8: write(' agosto');
          9: write(' septiembre');
          10: write(' octubre');
          11: write(' noviembre');
          12: write(' diciembre');
     end;
end;
procedure mostrarfecha(dia, mes, anio: integer);
begin
  if fechavalida(dia, mes, anio) then
  begin
  write('La fecha ingresada es: ', dia, ' de');
  escribirmes(mes);
  writeln(' de ', anio);
  end
    else writeln('La fecha ingresada es incorrecta. ');
end;

VAR dia, mes, anio: INTEGER;

BEGIN
   write(' Ingrese dia, mes (1 a 12) y año: '); readln(dia, mes, anio);
   mostrarfecha(dia, mes, anio);
   readln;
END.

