program problema15;
{$codepage utf8}

function cantNmenD (N,D: integer): integer;
begin
  if N < 10
    then if N < D
           then cantNmenD := 1
           else cantNmenD := 0
    else if (N mod 10) < D
           then cantNmenD := 1 + cantNmenD(N div 10, D)
           else cantNmenD := cantNmenD(N div 10, D);

end;
begin
  writeln('La cantidad de numeros menores a D son: ',cantNmenD(123123, 4));
  readln;
end.

