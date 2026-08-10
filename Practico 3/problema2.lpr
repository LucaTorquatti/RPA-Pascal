program problema2;
 {$codepage utf8}

var nota: char;


begin
  write ('Ingrese la nota que obtuvo el alumno : '); readln (nota);

  IF (nota = 'A') or (nota = 'B' )
   then writeln (' El alumno aprueba la materia')
  ELSE
   IF nota = 'C'
   then writeln ( ' El alumno recupera')
   ELSE
    writeln ( ' El alumno recursa la materia');

  readln;


end.

