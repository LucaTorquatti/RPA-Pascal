program problema3b;
var
  temperatura: integer;
  cocido: boolean;
begin
  write('Ingrese temperatura de la carne: ');readln(temperatura);
  cocido := (temperatura > 45);
  case cocido of
  true: writeln('La carne esta cocida');
  false: writeln('La carne no esta cocida, dejarla en el horno');
  end;
  readln;
end.

