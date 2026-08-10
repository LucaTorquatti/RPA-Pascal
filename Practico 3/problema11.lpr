program problema11;
{$codepage utf8}
var X,Y:real;
begin
	readln(X,Y);
	if X > Y then
	 begin                   // éste begin
	  X := X + 10.0;
	  writeln('X creció');
	 end                     // éste end
	else
         begin
	  writeln('X es menor que Y');
	  write(' cuyo valor es', Y);
         end;
        readln;
end.
