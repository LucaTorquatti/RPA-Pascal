program problema4;
{$codepage utf8}{$mode tp}

function noestaD(D,num: integer): boolean;
begin
  if (num mod 10 = d) then noestad := false
  else if (num div 10 = 0) then noestad:= true
       else  noestad := noestad(d,num div 10);
end;
begin

  if noestad(2,8931) then write('NO ESTA')
    else write('ESTA');
  readln;
end.

