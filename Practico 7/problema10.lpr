program problema10;
{$codepage utf8}
procedure cuil(num: int64; var cont, pre,dni,ver: integer);
var
  backupnum: int64;
begin
  backupnum := num;
  repeat
    num := num div 10;
    cont := cont + 1;
  until num = 0 ;
  if cont = 11 then
    begin
    pre := backupnum div 1000000000;
    dni := (backupnum div 10) mod 100000000;
    ver := backupnum mod 10;
    end
    else  write('El numero ingresado no es un CUIL.');
end;
var
  num: int64; pre, dni, ver, cont: integer;

begin
   write('Ingrese el cuil que quiere deglosar: ');readln(num);
   cont := 0;pre := 0;dni := 0;ver := 0;
   cuil(num, cont, pre, dni, ver);
   if cont = 11 then
     writeln('El prefijo es ', pre,' el dni es ', dni,' el verificador es ', ver);
   readln;
end.

