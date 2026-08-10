program problema4;
{$codepage utf8}{$mode tp}

function siguiente(letra: char): char;
begin
  case letra of
    'z': letra := 'a';
    'Z': letra := 'A';
    'A'..'Y': letra := succ(letra);
    'a'..'y': letra := succ(letra);
  end;
  siguiente := letra
end;
var
  let: char;

begin
  write('Ingrese la letra la cual quiere recibir la siguiente: '); readln(let);
  let := siguiente(let);
  writeln('La letra siguiente es: ', let);
  readln;
end.

