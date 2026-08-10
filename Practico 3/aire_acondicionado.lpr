program obra_social;
{$codepage utf8}

var
    tipo_socio: char;
    precio_tratamiento: real;

begin
   writeln('Bienvenido a Ogenki obra social.');
   write('Ingrese tipo de socio (A, B o C): ');
   readln(tipo_socio);
   write('Ingrese precio del tratamiento a consultar: ');
   readln(precio_tratamiento);

   IF tipo_socio = 'A'
    then precio_tratamiento := precio_tratamiento * 0.5;
   IF tipo_socio = 'B'
    then precio_tratamiento := precio_tratamiento * 0.65;

   writeln(' El precio final de su tratamiento es: ', precio_tratamiento:0:2);
   readln;
end.

