program problema9;
{$codepage utf8}{$mode tp}
procedure parte_entera_y_decimal(numero:real; var p_ent:integer; var p_dec: real);
begin
  p_ent := trunc(numero);
  p_dec := numero - p_ent;
end;
var
  num,decimal: real; entera: integer;

begin
  write('Ingrese el numero que quiere separar en entero y decimal: '); readln(num);
  entera := 0; decimal:= 0;
  parte_entera_y_decimal(num,entera,decimal);

  writeln('La parte entera es: ',entera,' y la parte decimal es: ',decimal:0:2,'.');
  readln;

end.

