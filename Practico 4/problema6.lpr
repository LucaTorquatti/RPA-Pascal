program problema6;
{$codepage utf8}

var
  inferior,superior, backup_sup, numero: integer;

begin
  write('Ingrese dos números enteros (inferior y superior): ');readln(inferior, superior);
  if superior < inferior then
   begin
     backup_sup := superior;
     superior := inferior;
     inferior := backup_sup;
   end;
  write(' Los numeros impares entre ', inferior, ' y ', superior, ' son: ');

  for numero := inferior to superior do
   if ((numero mod 2) = 1) or ((numero mod 2) = -1) then write (numero,' ');
  readln;
end.

