program problema11;
{$codepage utf8}

var
  pin,intentos: integer;

begin
     intentos:= 3;
     repeat
       write('Ingrese su pin de acceso: ');readln(pin);
       if not (pin = 1234)
        then begin
          intentos := intentos - 1;
          writeln('Pin incorrecto. Intentos restantes:', intentos);
        end;
     until (intentos = 0 ) or (pin = 1234);
     if (pin = 1234) then writeln ('Acceso exitoso!')
     else writeln('Cuenta bloqueada, no quedan intentos de acceso.');
     readln;
end.

