program problema4 ;
{$codepage utf8}
var
  num1, num2: integer;
  resultado: real;
  operacion: char;

begin
  write ('Ingrese el primer número: '); readln(num1);
  write ('Ingrese el segundo número: '); readln(num2);
  write ('Ingrese la operación (+, -, *, /): '); readln(operacion);

  if (num2= 0) and (operacion = '/') then
    writeln('Error matemático: división por cero')
    else begin
      case operacion of
           '+': resultado := (num1 + num2);
           '-': resultado := (num1 - num2);
           '*': resultado := (num1 * num2);
           '/': resultado := (num1 / num2);
           else writeln('Operacion no conocida.');
      end;
      writeln('El resultado es: ',resultado:0:2);
    end;

  readln;

end.

