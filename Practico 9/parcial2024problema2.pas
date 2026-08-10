program PARCIAL2024PROBLEMA2;

function invertir(num: integer): integer;
var inv: integer;
begin
   
repeat
  if num > 10 
    then inv := inv * 10 + (num mod 10) 
    else inv := inv * 10 + num;
 num := num div 10;

 until num = 0;
 invertir := inv;
end;

function escapicua(num: integer): boolean;
begin
  escapicua := num = invertir(num);
end;

procedure mostrar_resultado();
var leido :integer;
begin
  
  repeat 

    read(leido);

    if escapicua(leido)
      then writeln (leido, 'es un numero capicua. ')
      else writeln(leido, 'no es un número capicúa ya que el número invertido es ', invertir(leido ));

 until leido = -1;
end;


begin
  
   writeln('Ingrese una secuencia de numero naturales: ');
   mostrar_resultado();
  
end.