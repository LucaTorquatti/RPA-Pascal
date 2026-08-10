program problema3;
{$codepage utf8}

var
  cuentareg, segundos: integer;

begin
  write('Ingrese los segundos que quiere hacer cuenta regresiva: ');readln(cuentareg);
  for segundos := cuentareg downto 1
   do if (cuentareg div 2) = segundos
       then writeln (segundos, ' segundos... Ignición de motores principales...')
       else writeln(segundos, ' segundos...');
   writeln ('0 segundos... ¡Despegue!');
   readln;
end.

