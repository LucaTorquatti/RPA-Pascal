program trescifras;

{$codepage utf8}

var
 numero_3cifras, num_centena, num_decena, num_unidades: integer;

begin
  write (' Ingresá un número entero de 3 cifras:');
  readln (numero_3cifras);

  num_centena := numero_3cifras div 100;
  numero_3cifras :=  numero_3cifras mod 100;
  num_decena := numero_3cifras div 10;
  numero_3cifras := numero_3cifras mod 10;
  num_unidades := numero_3cifras;

  writeln ('Los dígitos separados son: ', num_centena, ' , ', num_decena, ' , ',num_unidades );
  readln

end.

