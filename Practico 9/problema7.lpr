program problema7;

function esparecido(n1,n2: integer):boolean;
begin
 if (n1 < 10) and (n2 < 10) then esparecido := ((n1 mod 2 = 0) and (n2 mod 2 = 0)) or ((n1 mod 2 = 1) and (n2 mod 2 = 1))
 else if  ((n1 mod 2 = 0) and (n2 mod 2 = 0)) or ((n1 mod 2 = 1) and (n2 mod 2 = 1)) then  esparecido := esparecido(n1 div 10, n2 div 10)
      else esparecido := false;
end;

begin

if esparecido(5432,5432) then write('parecido')
else write ('no es parecido');

end.

