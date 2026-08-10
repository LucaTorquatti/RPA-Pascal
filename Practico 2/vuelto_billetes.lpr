program vuelto_billetes;
{$codepage utf8}

var
  valor_abonado, costo, vuelto, bille_50: integer;
  bille_20, bille_10, bille_5, bille_1: integer;

begin
     write ( 'Ingresar costo del objeto: ');
     readln (costo);
     write ( 'Ingresar monto del pago: ');
     readln (valor_abonado);

     vuelto := valor_abonado - costo;
     bille_50 := vuelto div 50;
     vuelto := vuelto mod 50;
     bille_20 := vuelto div 20;
     vuelto := vuelto mod 20;
     bille_10 := vuelto div 10;
     vuelto := vuelto mod 10;
     bille_5 := vuelto div 5;
     vuelto := vuelto mod 5;
     bille_1 := vuelto div 1;

     writeln ('Retonar ' , bille_50, ' billetes de 50. ');
     writeln ('Retonar ' , bille_20, ' billetes de 20. ');
     writeln ('Retonar ' , bille_10, ' billetes de 10. ');
     writeln ('Retonar ' , bille_5, ' billetes de 5. ');
     writeln ('Retonar ' , bille_1, ' billetes de 1. ');
     readln;

end.

