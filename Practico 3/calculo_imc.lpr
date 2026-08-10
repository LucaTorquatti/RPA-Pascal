program calculo_imc; {Calcula el IMC y clasifica el peso.}
{$codepage utf8}
const
  NormalMax = 24.9; { Límite superior del peso normal }
var
  peso, altura, imc: real;
  clasificacion: integer;
      riesgo_alto: boolean;

begin
  write('Ingrese su peso en kilogramos: '); readln(peso);
  write('Ingrese su altura en metros: '); readln(altura);

  imc := peso / (altura * altura); { Calculo del IMC }
  if imc < 18.5 then
    clasificacion := 1
  else if imc <= NormalMax then
    clasificacion := 2
      else if imc >= 30 then
           clasificacion := 4
            else
              clasificacion := 3;

     riesgo_alto := (imc > 35);  { Se asigna True o False directamente }

  writeln('Su IMC es: ', imc:4:2);
  write('Clasificación: ');
  if clasificacion = 1 then writeln('Bajo peso');
  if clasificacion = 2 then writeln('Peso normal');
  if clasificacion = 3 then writeln('Sobrepeso');
  if clasificacion = 4 then writeln('Obesidad');

  writeln('IMC redondeado: ', round(imc));  // round es una función predefinida
  if (riesgo_alto)
   then writeln('Alerta médica: Derivar a un especialista.');

  readln;
end.





