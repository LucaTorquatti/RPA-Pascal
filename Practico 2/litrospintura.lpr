program litrospintura;
{$codepage utf8}
var
  ancho_hab, largo_hab, alto_hab, cant_puertas, cant_ventanas: real;
  manos_a_pintar, area_ventanas, area_puertas, metros_a_cubrir: real;
  lts_necesarios: real;

begin
  write ('Inserte ancho de habitacion en metros: ');
  readln ( ancho_hab);
  write ('Inserte largo de habitacion en metros: ');
  readln ( largo_hab);
  write ('Inserte alto de habitacion en metros: ');
  readln ( alto_hab);
  write ('Inserte la cantidad de puertas que hay en la habitacion: ');
  readln ( cant_puertas);
  write ('Inserte la cantidad de ventanas que hay en la habitacion: ');
  readln ( cant_ventanas);
  write ('Inserte la cantidad de manos de pintura a aplicar: ');
  readln ( manos_a_pintar);

  area_ventanas := cant_ventanas * 1.8;
  area_puertas := cant_puertas * 1.5;
  metros_a_cubrir:= ( 2* ancho_hab * alto_hab) + ( 2* largo_hab * alto_hab) - area_ventanas - area_puertas;
  lts_necesarios := (metros_a_cubrir /10) * manos_a_pintar;

  writeln (' Cantidad de metros cuadrados a cubrir :', metros_a_cubrir:0:2);
  writeln (' Litros de pintura necesarios :', lts_necesarios:0:2);
  readln;


end.

