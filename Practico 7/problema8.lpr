program problema8;
{$codepage utf8}{$mode tp}
procedure MultiplicarFracciones( N1,D1:integer; N2,D2:integer;  N,D:integer);
   {Objetivo: multiplicar dos fracciones: N1/D1 y N2/D2.
     Entrada:4 enteros que representan numerador y denominador de 2 fracciones
     Salida: 2 enteros que representan numerador y denominador del resultado
     Ejemplo: 1,5,3 y 8 representan 1/5 y 3/8 y retornará 3 y 40 que es 3/40}
   begin
        N := N1 * N2; {calcula el numerador}
        D := D1 * D2; {calcula el denominador}
   end;
var
  nu1,nu2,du1,du2,nu,du: integer;
begin
  writeln('Ingrese la primer fraccion: ');readln(nu1);writeln('/');readln(du1);
  writeln('Ingrese la segunda fraccion: ');readln(nu2);writeln('/');readln(du2);

  nu := 0; du := 0;

  multiplicarfracciones(nu1,du1,nu2,du2,nu,du);
  writeln(nu1,'/',du1,' * ',nu2,'/',du2,' = ',nu,'/',du);
  readln;
end.

