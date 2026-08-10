program fechacodigo;
{$codepage utf8}


var
  dia, mes, ano, fecha: integer;

begin
  write('Ingresá el dia:'); readln(dia);
  write('Ingresá el mes:'); readln(mes);
  write('Ingresá el año:'); readln(ano);

  fecha := ano;
  writeln('Año:', ano);
  fecha := fecha * 100 + mes;
  writeln('Mes:', mes);
  fecha := fecha * 100 + dia;
  writeln('Día:', dia);

  writeln('La fecha codificada es:', fecha);
  writeln('Presione enter para continuar');
  readln; { espera un enter }
end.
