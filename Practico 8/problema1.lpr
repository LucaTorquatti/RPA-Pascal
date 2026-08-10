program problema1;
{$codepage utf8}

procedure ContarParesEImpares(numero: integer);
  procedure mostrarreporte(numero,cant_pares,cant_impares: integer);
  begin
  { --- INICIO DEL SEGUNDO BLOQUE LÓGICO --- }
      writeln('-----------------------------------');
      writeln('Reporte del número: ', numero);
      writeln('Dígitos pares encontrados: ', cant_pares);
      writeln('Dígitos impares encontrados: ', cant_impares);
      writeln('-----------------------------------');
      { --- FIN DEL SEGUNDO BLOQUE LÓGICO --- }
  end;
var digito,aux , cant_pares, cant_impares: integer;
begin
    cant_pares := 0;
    cant_impares := 0;
    aux := numero;
    while aux > 0 do
    begin
      digito := aux mod 10;
      if (digito mod 2 = 0) then
        cant_pares := cant_pares + 1
      else
        cant_impares := cant_impares + 1;
      aux := aux div 10;
    end;
    mostrarreporte(numero,cant_pares,cant_impares);
end;

var
  numero: integer;
begin
  write('Ingrese un número (0 para salir): ');
  readln(numero);

  while numero <> 0 do
  begin

   contarpareseimpares(numero);
   write('Ingrese un número (0 para salir): ');
   readln(numero);
  end;
  writeln('Fin del procesamiento.');
  readln;
end.

