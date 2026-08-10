program problema13;{$codepage utf8}{$mode tp}

function EsPrimo( numero: integer ):boolean;
var
  i,contdiv: integer;
begin
  contdiv := 0;
  for i := 1 to numero do
      if ((numero/i) = trunc(numero/i)) then contdiv := contdiv + 1;
  esprimo := (contdiv <= 2);
end;
function siguienteprimo ( numero: integer):integer;
begin
  repeat
    numero := numero + 1;
  until esprimo(numero) ;
  siguienteprimo := numero;
end;
procedure incisoa;
var
  num, i : integer;

begin
  write('Ingrese un valor: '); readln(num);

  write('Los números primos entre 1 y ',num,' son:');

  for i := 1 to num do
      begin
      if esprimo(i) then write(i,' ');
      end;
  writeln(' .');
  readln;
end;
procedure incisob;
var
  num1, num2, i : integer;

begin
  write('Ingrese dos valores: '); readln(num1,num2);

  write('Los números primos entre ',num1,' y ',num2,' son:');

  for i := num1 to num2 do
      begin
      if esprimo(i) then write(i,' ');
      end;
  writeln(' .');
  readln;
end;
procedure incisoc;
var
  num: integer;
begin
  write('Ingrese el numero que quiere encontrar el siguiente primo: '); readln(num);

  writeln('El siguiente numero primo es:', siguienteprimo(num));
  readln;

end;
procedure incisod;
var
  secuencia, contador: integer;
begin
  write('Ingrese una secuencia de numeros terminada en 0: ');
  contador := 0;
  repeat
    read(secuencia);

    if esprimo(secuencia) and (secuencia <> 0) then
      begin
        write (secuencia,' ');
        contador := contador +1;
      end;
  until (secuencia = 0) ;
  readln;

  writeln('son ',contador,' números primos que fueron ingresados en la secuencia.');
  readln;

end;
var
  letra: char;
begin // programa principal
  repeat
     writeln(' ¿Qué inciso quiere ejecutar? (n para ninguno) ');
     readln(letra);
     case letra of
       'a': incisoA;
       'b': incisoB;
       'c': incisoC;
       'd': incisoD;
     end;
  until letra = 'n';
end.



