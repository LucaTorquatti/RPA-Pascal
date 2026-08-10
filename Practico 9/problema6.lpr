program problema11;

function sumacotas(c1,c2: integer):integer;
var num: integer;
begin
  read(num);
  if num = 0
    then sumacotas := 0
    else if (num >= c1) and (num <= c2)
           then sumacotas := sumacotas(c1,c2) + num
           else sumacotas := sumacotas(c1,c2);
end;

begin

   writeln(sumacotas(2,8));
   readln;
   readln;
end.
