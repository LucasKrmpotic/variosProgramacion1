unit Tipos;

interface

Const 
    MAX_CUIDADES = 1024;
    MAX_PARTIDOS = 2;

Type
    tCiudad = record
        nombre: string;
        cantidadHabitantes: integer;
    end;

    tListaCiudades = Array [1..MAX_CUIDADES] of tCiudad;

    tPartido = record
        nombre: string;
        listaCiudades: tListaCiudades;
    end;

    tListaPartidos = Array [1..MAX_PARTIDOS] of tPartido;

implementation
end.