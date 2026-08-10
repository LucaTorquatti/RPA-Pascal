program _1parcial2024;

var
  D, i, ii : integer;
  C: char;

begin

  repeat
    write('Ingrese la cantidad de filas: '); readln(D);
    if not ((D > 0) and (D < 10)) then
      writeln('Error. Debe ingresar un número mayor a 0 y menor a 10.');
  until ((D > 0) and (D < 10)) ;

  write('Ingrese un caracter de inicio: '); readln(C);

  for i:= 1 to D do begin
    for ii := 1 to D*2 do begin
      if (C = 'r') or (C = 'p') or  (C = 'a')
       then write('#')
       else write (C);
      C := succ(C);
    end;
    writeln;
  end;

  readln;
end.

