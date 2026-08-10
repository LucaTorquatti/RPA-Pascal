program problema6;
{$codepage utf8}

function esCUILoCUIT (numero: int64):char;
begin
numero:= numero div 1000000000;
 case numero of
  20,23,24,27: escuilocuit:= 'L';
  30: escuilocuit:= 'T'
  else escuilocuit := 'N';
 end;
end;
function esDNI (numero: int64):boolean;
begin
 esDNI :=(numero >= 1000000) and (numero <= 99999999);
end;
procedure mostrarCUIToCUIL(numero: int64);
var frente,medio,final:integer;
begin
 frente := numero div 1000000000;
 medio := (numero div 10) mod 1000000000 ;
 final:= numero mod 10;
 case escuilocuit(numero) of
  'L': writeln('El CUIL es: ',frente,'-',medio,'-',final);
  'T': writeln('El CUIT es: ',frente,'-',medio,'-',final)
  else writeln ('El numero ingresado no corresponde a un CUIT o CUIL.');
 end;
end;
procedure mostrarDNI(numero: int64);
var frente, medio, final: integer;
begin
  frente := numero div 1000000; medio := (numero div 1000)mod 1000; final := numero mod 1000;
  if esDNI(numero) then write('El DNI es ',frente,'.',medio,'.',final)
   else write('El numero ingresado no corresponde a un DNI.')
end;
begin
    mostrardni(115811);
    readln;
end.

