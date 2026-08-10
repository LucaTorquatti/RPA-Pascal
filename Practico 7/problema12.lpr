program problema12;


procedure simbolos(car1,car2: char);
var  cont: integer; i: char;
begin
  cont:= 0;
  if car1 > car2 then
   begin
      for i := succ(car2) to pred(car1) do
        begin
          write(i,' ');
          cont := cont + 1;
        end;
      writeln('(son ',cont,' elementos)')
    end
    else begin
     for i := succ(car1) to pred(car2) do
        begin
          write(i,' ');
          cont := cont + 1;
        end;
      writeln('(son ',cont,' elementos)');
      end;
end;


var
  caracter1, caracter2: char;

begin
  write('Ingrese los caracteres(seguidos): '); readln(caracter1,caracter2);
  simbolos(caracter1,caracter2);
  readln;
end.


