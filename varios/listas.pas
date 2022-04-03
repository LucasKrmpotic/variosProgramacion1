program listas;

const
    MAX_ELEMENTOS = 3;

type
    
    tLista = Array [1..MAX_ELEMENTOS] of string;

var 
    lista: tLista;
    i, max: integer;


begin

    Writeln('Ingrese la cantidad de elementos que quiere ingresar');
    Readln(max);

    for i := 0 to max -1 do
    begin
        Writeln('ingrese una palabra');
        Readln(lista[i]);
    end;

    Writeln('Se ingresaron las siguientes palabras: ');

    for i := 0 to max -1 do
    begin
        Writeln(lista[i]);
    end;

end.