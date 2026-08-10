program problema9;
{$codepage utf8}

var
  sumapeso, peso, paquetes: integer;

begin
  //doy valor inicial a la suma y cantidad paquetes
  sumapeso := 0;
  paquetes := 0;

  repeat

    write('Ingrese el peso del paquete en kg (0 para finalizar): '); readln(peso);
    sumapeso := sumapeso + peso;
    if  peso <> 0 then
     paquetes := paquetes + 1;
  until (peso = 0) or (sumapeso >= 500);

  if sumapeso <= 500  then
   begin
     writeln('Ingreso finalizado. Puede cargarse el ascensor de forma segura.');
     writeln('Cantidad de paquetes cargados: ', paquetes);
     writeln('Peso total en el ascensor: ',sumapeso,'kg');
   end
  else
   begin
     writeln('¡Límite de seguridad alcanzado! El ascensor no admite más carga.');
     writeln('Cantidad de paquetes cargados: ', paquetes);
     writeln('Peso total en el ascensor: ',sumapeso,'kg');
   end;
   readln;

end.

