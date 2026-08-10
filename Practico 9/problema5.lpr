
program problema5;
function DesSignificativoDeNumero(d,num:integer):boolean;
begin
  if (num < 10)
   then
     DesSignificativoDeNumero := (num = D)
   else
     DesSignificativoDeNumero:= DesSignificativoDeNumero(d,num div 10);
end;
begin

   if DesSignificativoDeNumero(1,5632)
    then write('true')
    else write('false');
   readln;
end.
