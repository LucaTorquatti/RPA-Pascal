program laboratoriofor;
{$codepage utf8}
const LIMITE=5;
var i: integer;
begin

   for i := 1 to LIMITE do
   begin
      writeln('Vuelta número: ', i);
   end;
   if (i >= LIMITE) then
      writeln('El ciclo terminó. Afuera del FOR, la variable i vale: ', i);
   readln;
end.

