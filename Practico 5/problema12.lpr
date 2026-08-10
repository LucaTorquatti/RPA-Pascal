program problema12;
{$codepage utf8}

var
  digito, numero, backup_numero: integer;
  aparece: boolean;

begin
  // le doy valor a las variables
  aparece := false;

  write('Ingrese un número (0 para salir): ');readln(numero);
  backup_numero := numero;

  if numero <> 0 then
   begin
     write('Ingrese el dígito para saber si aparece en ',backup_numero, ': ');readln(digito);

     repeat
       if (numero mod 10) = digito
         then aparece := true;
       numero := numero div 10 ;
     until (numero = 0) or aparece;

     if aparece then
       writeln('El dígito ', digito,' aparece en el número ', backup_numero);

     if not aparece then
       writeln('El dígito ', digito,' no aparece en el número ', backup_numero);
     readln;

   end;


 end.

