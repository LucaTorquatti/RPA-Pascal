program problema14;
{$codepage utf8}{$mode tp}

procedure PosNeg;
var elemento: integer;
begin
  read(elemento);
  if elemento = 0
    then write(' # ')
    else if elemento > 0
      then
       begin
        write(elemento,' ');
        PosNeg();
       end
      else
       begin
         PosNeg();
         write(elemento,' ')
       end;
end;
begin
  PosNeg();
  readln;
  readln;
end.

