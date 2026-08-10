program problema2;

var
  caracter: char;

begin
  write('Ingrese un caracter :');readln(caracter);
  write('El caracter ingresado es: ',caracter);

  case caracter of
  'a'..'z': writeln(' y es una letra minuscula');
  'A'..'Z': writeln (' y es una letra mayuscula');
  '0'..'9': writeln (' y es un digito.')
  else writeln(' es otro tipo de caracter.');
  end;
  readln;
end.

