program problema13;

var
  opcion, N, suma, prede: integer;
  abecedario: char;

begin
  repeat
    writeln('1) Mostrar hola mundo!.');
    writeln('2) Mostrar el abecedario en mayusculas. ');
    writeln('3) Sumar todos los naturales hasta N.');
    writeln('0) Salir');
    write('Ingrese que accion desea realizar: ');readln(opcion);
    // menú
    if opcion = 1 then
     writeln('Hola mundo!');
     writeln('');
    // 1
    if opcion = 2 then
     for abecedario := 'A' to 'Z'
      do write(abecedario, ' ');
      writeln(' ');
    // 2
    if opcion = 3 then
     begin
      suma := 0;
      repeat
       write ('Ingrese un N positivo que quiera sumar: ');readln(N);
       if n<1 then writeln ('ERROR. Ingrese un numero positivo.');
      until n > 0;
      for prede := 1 to N do
      suma := suma + prede;
      writeln('La suma de N y sus predecesores es: ', suma);
      writeln(' ');
     end;
     // 3
     if (opcion > 3) or (opcion < 0) then
      writeln('ERROR. Ingrese una opcion valida.');
     // opcion incorrecta
  until (opcion = 0) ;
   writeln('Gracias por usar el programa!');
   // 0
   readln;
end.

