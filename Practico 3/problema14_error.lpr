program carrerarally;

{$codepage utf8}



var

  hs_A, min_A, seg_A, hs_B, min_B, seg_B: integer;

  resultado: char;



begin

    write('Ingrese tiempo del auto A (HS MIN SEG): '); readln(hs_A, min_A, seg_A);

    write('Ingrese tiempo del auto B (HS MIN SEG): '); readln(hs_B, min_B, seg_B);



    if hs_A < hs_B then

     resultado :=  'A';

    if hs_A > hs_B then

     resultado := 'B';

    if hs_A = hs_B then

     if min_A < min_b then

      resultado := 'A' ;

     if min_A > min_B then

      resultado := 'B';

     if min_A = min_B then

      if seg_A < seg_B then

       resultado := 'A';

      if seg_A > seg_B then

       resultado := 'B';

       if seg_A = seg_B then

        writeln ( ' Los dos competidores hicieron el mismo tiempo' );



    if resultado = 'A' then writeln(' El competidor que lo hizo en menos tiempo fue el A');

    if resultado = 'B' then writeln(' El competidor que lo hizo en menos tiempo fue el B ');

     readln;

end.

