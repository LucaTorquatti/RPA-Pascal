program problema16;
{$codepage utf8}

var
  letra, letra_ant: char;
  contador: integer;


begin
  write('Ingrese la secuencia de letras: ');
  contador := 0;
  letra := '-';
  repeat

    letra_ant := letra;
    read(letra);

    if (letra = 'a') or (letra = 'e' ) or (letra = 'i') or (letra = 'o') or (letra = 'u')
      then contador := contador + 1
      else contador := 0

  until (letra = '.') or (contador = 2) ;
  readln;

  if contador = 2 then
    writeln('¡Diptongo encontrado! Se detectó la secuencia de vocales ''',letra_ant,letra,'''.')
    else writeln('Diptongo no encontrado!');
  readln;
end.

