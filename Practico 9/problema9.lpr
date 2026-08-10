program problema9;

function multiplode3(num: integer): integer;

begin
  if num < 10 then multiplode3 := 0
   else if (num < 100) and (num >= 10) then
          if ((num div 10) mod 3 = 0) then multiplode3 := 1
          else multiplode3 := 0
        else
           if (((num mod 100) div 10) mod 3 = 0) then multiplode3 := multiplode3(num  div 100 ) + 1
           else multiplode3 := multiplode3(num  div 100 );

end;

begin
  write(multiplode3(62))
end.

