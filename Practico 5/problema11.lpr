program problema11;
{$codepage utf8}

var
  numero, backup_numero, ceros: integer;

begin
  // doy valor inicial a la suma de ceros
  ceros := 0;

  write('Ingrese un número natural: '); readln(numero);
  backup_numero := numero;
  repeat
     if (numero mod 10) = 0
      then  ceros := ceros + 1;
     numero := numero div 10 ;
  until numero = 0;

  if ceros > 0 then
    writeln('El número ', backup_numero,' tiene exactamente ', ceros, ' ceros.')
  else
    writeln('El número ', backup_numero,' no tiene dígitos cero.');

  readln;

end.

