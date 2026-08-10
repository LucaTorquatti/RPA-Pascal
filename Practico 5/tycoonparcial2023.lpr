program tycoonparcial2023;

var i, asientos, recaudo, asientosvacios, adultos, menores: integer;
    secuencia: char;

begin
    recaudo := 0;
    asientosvacios := 0;
    adultos := 0;
    menores := 0;

    write('La cantidad de asientos disponibles (entre 1 y 25): '); readln(asientos);
    write('Ingrese la secuencia de ingreso: ');

    for i := 1 to asientos
     do begin
        read(secuencia);
        if secuencia = 'm' then
           begin
            menores := menores + 1;
            recaudo := recaudo + 800;
           end
        else if secuencia = 'a' then
           begin
            adultos := adultos + 1;
            recaudo := recaudo + 2500;
           end
          else
            asientosvacios := asientosvacios + 1;
     end;
    readln;

    writeln('Ingresaron ', adultos, ' adultos y ', menores, ' menores');
    writeln('Se recaudo$', recaudo);
    writeln('Quedaron ', asientosvacios, ' asientos vacios.!');

    readln;
end.

