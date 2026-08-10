program litrospintura2;
{$codepage utf8}

var latas_compradas, lts_necesarios, lts_usados, lts_comprados: integer;
  lts_quedan, lts_faltantes, lts_faltancom, latas_faltancom: integer;

begin
  write ('Ingrese cantidad de latas compradas: '); readln (latas_compradas);
  write ('Ingrese litros necesarios: '); readln (lts_necesarios);
  write ('Ingrese litros usados: '); readln (lts_usados);
  lts_comprados := latas_compradas * 4;

  IF
   lts_comprados > lts_necesarios
    THEN
     begin
      lts_quedan := lts_comprados - lts_usados;
      lts_faltantes := lts_necesarios - lts_usados;
      lts_faltancom := 0;
      latas_faltancom := 0;
      writeln ('La pintura alcanza' );
      writeln ( 'Faltan comprar: ', lts_faltancom, ' lts');
      writeln ( 'Faltan comprar: ', latas_faltancom, ' latas');
     end
    ELSE
     begin
      lts_quedan := lts_comprados - lts_usados;
      lts_faltantes := lts_necesarios - lts_usados;
      lts_faltancom := lts_necesarios - lts_comprados;
      latas_faltancom := lts_faltancom DIV 4;
       if ( lts_faltancom MOD 4 > 0 )
        then latas_faltancom := latas_faltancom + 1;
      writeln ('La pintura  no alcanza' );
      writeln ( 'Faltan comprar: ', lts_faltancom, ' lts');
      writeln ( 'Faltan comprar: ', latas_faltancom, ' latas');
    end;
   readln;

end.



