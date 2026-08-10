program problema5pruebafunction;
{$codepage utf8}

VAR dia, mes, anio: integer;

FUNCTION cant_dias(mes,anio:integer):integer;
BEGIN
CASE mes OF
        11,4,6,9: cant_dias := 30;
        2: IF (anio mod 4=0) and (anio mod 100<>0) or (anio mod 400=0)
            THEN cant_dias := 29
            ELSE cant_dias := 28;
        1,3,5,7,8,10,12: cant_dias := 31;
    END;
END;

BEGIN
    write(' Ingrese dia, mes (1 a 12) y año: '); readln(dia, mes, anio);

    IF (mes >= 1) and (mes <= 12) and (dia <= cant_dias(mes,anio)) and (anio > 0)
      THEN writeln('La fecha ',dia,'/',mes,'/',anio,' es válida.')
      ELSE BEGIN
        IF (anio <= 0) THEN
          writeln('Error: el año ingresado es incorrecto.')
          ELSE IF  (mes < 1) OR (mes > 12) THEN
                writeln('Error: ingrese un mes valido, entre 1 y 12.')
                ELSE IF (dia > cant_dias(mes,anio)) THEN
                    writeln('Error: el mes ',mes ,' solo tiene ',cant_dias(mes,anio) ,' dias.');
    END;

    writeln('Presione ENTER para finalizar'); readln;
END.
