program atm;
{$codepage utf8}

var
  cant_bille100, cant_bille50, cant_bille20, cant_bille10, cant_bille, monto: integer;
  cambio: char;
BEGIN
  cant_bille100 := 0; cant_bille50 := 0;
  cant_bille20 := 0; cant_bille10 := 0;
  write ('Ingrese el monto que quiere retirar: $'); readln(monto);
  write ('¿Quiere cambio (C) o la menor cantidad de billetes posible (P)? (C o P): '); readln(cambio);

  IF (monto >= 10) and (monto < 1980)
   then
    begin
     IF (monto < 50) and (cambio = 'C')
      then cant_bille10 := monto div 10;
     IF (monto < 50) and (cambio = 'P')
      then
       begin
       cant_bille20 := monto div 20;
       cant_bille10 := (monto mod 20) div 10;
       end;
   IF (monto < 150) and (monto >= 50) and (cambio = 'C')
    then
     begin
      monto := monto - 50;
      cant_bille50 := monto div 50;
      monto := monto mod 50;
      cant_bille20 := monto div 20;
      cant_bille10 := (monto mod 20) div 10 + 5;
     end;
   IF (monto < 150) and (monto >= 50) and (cambio = 'P')
    then
     begin
      cant_bille100 := monto div 100;
      monto := monto mod 100;
      cant_bille50 := monto div 50;
      monto := monto mod 50;
      cant_bille20 := monto div 20;
      cant_bille10 := (monto mod 20) div 10;
     end;
   IF (monto >= 150) and (cambio = 'C')
    then
     begin
      monto := monto - 150;
      cant_bille100 := monto div 100;
      monto := monto mod 100;
      cant_bille50 := monto div 50;
      monto := monto mod 50;
      cant_bille20 := monto div 20 + 5;
      cant_bille10 := (monto mod 20) div 10 + 5;
     end;
   IF (monto >= 150) and (cambio = 'P')
    then
     begin
      cant_bille100 := monto div 100;
      monto := monto mod 100;
      cant_bille50 := monto div 50;
      monto := monto mod 50;
      cant_bille20 := monto div 20;
      cant_bille10 := (monto mod 20) div 10;
     end;
   monto:= cant_bille100 * 100 + cant_bille50 * 50 + cant_bille20 * 20 + cant_bille10 * 10;
   cant_bille:= cant_bille100  + cant_bille50 + cant_bille20  + cant_bille10;

   if cant_bille > 20
    then
     begin
      cant_bille100 := monto div 100;
      monto := monto mod 100;
      cant_bille50 := monto div 50;
      monto := monto mod 50;
      cant_bille20 := monto div 20;
      cant_bille10 := (monto mod 20) div 10;
     end;

   monto:= cant_bille100 * 100 + cant_bille50 * 50 + cant_bille20 * 20 + cant_bille10 * 10;

   writeln (' Has retirado correctamente: $', monto);
   writeln ('En ', cant_bille100, ' billetes de 100. ', cant_bille50, ' billetes de 50. ', cant_bille20, ' billetes de 20. ', cant_bille10, ' billetes de 10. ');
   end
  ELSE
   writeln ('Has solicitado un monto no admitido por el ATM. Por favor ingrese otro monto!' );

 readln;
END.

