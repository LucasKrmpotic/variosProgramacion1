program Main;
var cantidadMaximaPersonas, horaMaximasPersonas, cantidadPersonas, hora: integer;

begin
	cantidadMaximaPersonas := 0;
	horaMaximasPersonas := 0;

	Writeln('***********************************************************************'); 
	Writeln('Ingrese la cantidad de personas que ingresaron al edificio en cada hora'); 
	Writeln('***********************************************************************'); 
 	for hora := 0 to 23 do
	begin
   		Writeln('Cantidad de personas a las: ', hora); 
		Readln(cantidadPersonas);

		if (cantidadPersonas > cantidadMaximaPersonas) then
		begin
			cantidadMaximaPersonas := cantidadPersonas;
			horaMaximasPersonas := hora;
		end;

		Writeln('***********************************************************************'); 
		Writeln('cantidadMaximaPersonas: ', cantidadMaximaPersonas);
		Writeln('horaMaximasPersonas: ', horaMaximasPersonas);
		Writeln('***********************************************************************'); 

	end;
end.