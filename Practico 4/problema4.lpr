Program problema4;
var i,j,cicloExterno,cicloInterno: integer;
begin
  cicloExterno:=0; cicloInterno:=0;
 	 for i := 1 to 5 do
 	 begin
  	cicloExterno := cicloExterno + 1;
   	for j := 1 to i do
   	begin
        	cicloInterno := cicloInterno + 1;
        	write('El valor de i es ', i:3, ',  j es ', j:2);
        	write(', cicloInterno es ', cicloInterno: 3 );
        	writeln(', cicloExterno es ', cicloExterno: 3 );
 	      end;
    	writeln('****************');
	  end;
	  readln;
end.

