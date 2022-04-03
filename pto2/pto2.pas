program Main;

Uses
	crt, Tipos;

var 
	indice: integer;
	listaPartidos: tListaPartidos;
	
	nombrePartido: string;

	nombreCiudad: string;
	cantHabCiudad: integer;

	listaCiudades: tListaCiudades;
	ciudad: tCiudad;


	indiceCiudades: integer;
	partido: tPartido;

begin
	Writeln('************************************************');
	Writeln('	    Habitantes Partidos PBA		   ');
	Writeln('************************************************');

	for indice := 0 to MAX_PARTIDOS do
	begin
		Writeln('--------------------------------------------');
		Writeln('	 Ingrese los datos del partido     ');
		Writeln('--------------------------------------------');

		Write('nombre: ');
		Readln(nombrePartido);

		indiceCiudades := 0;
		Repeat
		begin

			Writeln('Ingresar ciudades del partido 99 para terminar');
			Writeln('Ingrese el nombre');
			Readln(nombreCiudad);
			Writeln('Ingrese l cantidad de habitantes');
			Readln(cantHabCiudad);

			if (nombreCiudad <> '99') then
			begin
				ciudad.nombre := nombreCiudad;
				ciudad.cantidadHabitantes := cantHabCiudad;
				listaCiudades[indiceCiudades] := ciudad;
				indiceCiudades := indiceCiudades + 1;
			end;



		end	
		until (nombreCiudad = '99');

		indiceCiudades := 0;
		
		partido.nombre := nombrePartido;
		partido.listaCiudades := listaCiudades;

		listaPartidos[indice] := partido;

	end;

end.