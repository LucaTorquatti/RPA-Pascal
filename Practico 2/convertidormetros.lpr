program convertidormetros;
var
  metros, pies_decimal, pulgadas: real;
  pies: integer;
begin
    write('Insertar medida a convertir en metros: ');
    readln (metros);

    pies_decimal := metros * 3.28;
    pulgadas := metros * 39.37;
    pies := trunc(pulgadas) div 12 ;
    pulgadas := pulgadas - (pies * 12);

    writeln ('Medida en pies(decimal): ', pies_decimal:0:2);
    writeln ('Medida en pies y pulgadas: ', pies,' pies y ', pulgadas:0:2, ' pulgadas');
    readln;

end.

