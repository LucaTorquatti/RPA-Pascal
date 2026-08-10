program problema17;
{$codepage utf8}

var
  caracter: char;
  valido: boolean;

begin
  write('Ingresar una patente para comprobar su validez: ');
  valido := true;
  repeat
    read(caracter);
    if (((caracter < 'A') or (caracter > 'Z')) and ((caracter < '0') or (caracter > '9')))
             then valido := false;
  until eoln or (valido = false) ;
  readln;

  if valido then writeln('Patente Válida.')
   else writeln('¡Infracción! Formato inválido detectado');
  readln;

end.

