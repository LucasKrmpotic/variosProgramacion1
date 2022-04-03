program Registros;
Uses
    crt;
const
    MAX_ELEMENTOS = 3;

type
    tPersona = record
        nombre: string;
        edad: integer;
    end;

    tListaPersonas = Array [1..MAX_ELEMENTOS] of tPersona;

var

    listaPersonas: tListaPersonas;
    persona: tPersona;
    i: integer;

function enteroEnRango(msg: string; tope1, tope2: integer): integer;
var
   nro: integer;
begin
     repeat
        writeln(msg);
        readln(nro)
     until (nro >= tope1) and (nro <= tope2);
     enteroEnRango:= nro;
end;

procedure pedirDatos(VAR listaPersonas: tListaPersonas);
begin
    for i := 1 to MAX_ELEMENTOS do
    begin
        Writeln('Ingrese los datos de la persona');
        Write('nombre: ');
        Readln(persona.nombre);

        persona.edad := enteroEnRango('ingrese la edad', 0, 110);

        listaPersonas[i] := persona;

    end;
end;

procedure mostrarDatos(listaPersonas: tListaPersonas);
begin
    for i := 1 to MAX_ELEMENTOS do
    begin
        Writeln('Datos persona numero: ', i);
        Writeln('Nombre: ', listaPersonas[i].nombre);
        Writeln('Edad: ', listaPersonas[i].edad);
    end;
end;

begin

    pedirDatos(listaPersonas);
    Clrscr();
    mostrarDatos(listaPersonas);
    Readln;

end.