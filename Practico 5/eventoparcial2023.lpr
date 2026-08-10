program eventoparcial2023;
var
    DNI, ult_digito: integer;
    carrera: char;

begin
    ult_digito := 10;

    repeat
        write('Carrera ...: ');
        readln(carrera);
        if NOT (carrera = 's') and NOT (carrera = 'l') and NOT (carrera = 'c') then
            writeln('Error ingreso datos');
    until (carrera = 's') or (carrera = 'l') or (carrera = 'c');

    repeat
        write('Ingrese DNI: ');
        readln(DNI);
        if DNI <= 0 then
            writeln('Error ingreso datos');
    until (DNI > 0);

    ult_digito := (DNI MOD 10);
    write('Debe anotarse el dia:');

    if ((ult_digito >= 0) and (ult_digito < 5)) and ((carrera = 'c') or (carrera = 'l')) then
        writeln(' Lunes');

    if ((ult_digito >= 5) and (ult_digito < 10)) and ((carrera = 'c') or (carrera = 'l')) then
        writeln(' martes');

    if ((ult_digito >= 0) and (ult_digito < 5)) and (carrera = 's') then
        writeln(' miercoles');

    if ((ult_digito >= 5) and (ult_digito < 10)) and (carrera = 's') then
        writeln(' jueves');

    readln;
end.
