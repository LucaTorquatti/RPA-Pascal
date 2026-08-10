program problema8;

function balanceparimpar(num: integer): integer;
begin
 if num < 10 then
    if (num mod 2 = 1) then balanceparimpar := num
    else balanceparimpar := (- num)
 else
    if (num mod 2 = 1) then balanceparimpar := balanceparimpar(num div 10) + num mod 10
    else balanceparimpar := balanceparimpar(num div 10) - num mod 10;
end;

begin
 write( balanceparimpar(8))
end.


