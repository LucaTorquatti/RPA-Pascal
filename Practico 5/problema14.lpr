program problema14;

{$codepage utf8}

var
  backupnum, numero, capicua: integer;

begin
  capicua := 0;

  repeat
    write('Ingrese un numero natural: ');readln(numero);
    if numero < 1 then writeln('ERROR Ingrese un numero natural.');
  until numero > 0;

  backupnum := numero;

  repeat
    capicua := (capicua* 10) + (numero mod 10);
    numero := numero div 10;
  until numero = 0;

  if backupnum = capicua then
    writeln('El numero ingresado es capicua.');
  if backupnum <> capicua then
    writeln('El numero ingresado es no es capicua.');

  readln;

end.

