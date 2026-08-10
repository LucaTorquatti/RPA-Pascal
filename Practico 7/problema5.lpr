program problema5;
{$codepage utf8}

function sumador(numero: integer):integer;
var
  suma:integer;
begin
  suma := 0;
  repeat
     suma := suma + numero mod 10;
     numero := numero div 10;
  until (numero = 0) ;
  sumador := suma;
end;
function primerdig(numero: integer):integer;
begin
  while numero > 9 do
    begin
      numero := numero div 10;
    end;
  primerdig := numero;
end;
function cantdig(numero: integer):integer;
var
  contador: integer;
begin
  contador := 0;
  repeat
     contador := contador + 1;
     numero := numero div 10;
  until (numero = 0);
  cantdig:= contador ;
end;

var
  num: integer;
  opcion: char;

begin
  write('Ingrese la funcion que quiere usar A , B o C: '); readln(opcion);
  write('Ingrese el numero que quiere comprobar: '); readln(num);

  case opcion of
  'a','A': writeln('La suma de los dígitos del número es: ',sumador(num));
  'b','B': writeln('El dígito más significativo del número es: ',primerdig(num));
  'c','C': writeln('La cantidad de dígitos del número entero es: ',cantdig(num))
  else writeln('Funcion ingresada incorrecta.')
  end;
  readln;
end.

