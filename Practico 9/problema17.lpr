program problema17;
{$codepage utf8}{$mode tp}
var ProdDig,num,cant: integer;

function tienecero(num: integer):boolean;
begin
  if num < 10
    then tienecero := (num = 0)
    else tienecero := (num mod 10 = 0) or (tienecero(num div 10));
end;
procedure productodigitos(num: integer; var prodig: integer);
begin
  if num < 10
    then prodig := num
    else begin
      productodigitos(num div 10,prodig);
      prodig := (num mod 10) * prodig;
    end;
end;
function es_par(prodig: integer):boolean;
begin
  es_par := (prodig mod 2 = 0);
end;
procedure propiedades(var cant:integer);
var ProDig,elemento, num: integer; cartel: boolean;
begin
  read(elemento);
  cartel := false;
  if elemento > 0 then
    begin
      productodigitos(elemento,prodig);
      if es_par(prodig) and not tienecero(elemento)
        then begin
          if not cartel then write('Números que respetan ambas propiedades son: ' );
          cartel := true;
          write(elemento);
          cant := cant +1;
          end;
        propiedades(cant)
    end;

    end;
begin
  write('Ingrese una secuencia de números enteros: ');
  cant := 0;
  propiedades(cant);
  writeln('La cantidad de numero mostrados son: ',cant);
  readln;
  readln;

end.

