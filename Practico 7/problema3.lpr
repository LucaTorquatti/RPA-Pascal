program problema3;
{$codepage utf8}{$mode tp}
function puedestarenexpresion(simbolo: char):boolean;
begin
  case simbolo of
  '+','*','-','/','!','(',')': puedestarenexpresion := true
  else puedestarenexpresion := false;
  end;
end;

var
  sim: char;
begin
  write('Ingrese un simbolo que quiere poner en una expresion matematica: '); readln(sim);
  if puedestarenexpresion(sim)
    then writeln('El simbolo ',sim,' puede estar en una expresion matematica.')
    else writeln('El simbolo ',sim,'  no puede estar en una expresion matematica.');
  readln;
end.
