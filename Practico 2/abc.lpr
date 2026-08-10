program abc;

{$codepage utf8}
var
  a,b,c: integer;
begin
  a := 1;
  b := 2;
  c := 3;
  a := b;
  writeln ('valor a:',a, 'valor b:',b,'valor c:',c);
  b := c;
  writeln ('valor a:',a, 'valor b:',b,'valor c:',c);
  c := a;
  writeln ('valor a:',a, 'valor b:',b,'valor c:',c);
  readln;

end.

