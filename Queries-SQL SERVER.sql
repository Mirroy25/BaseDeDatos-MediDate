--Obtener todos los médicos y sus especialidades en cada centro de salud:
SELECT DISTINCT cs.NombreCentroSalud, ps.Nombre + ' ' + ps.ApellidoPaterno + ' ' + ps.ApellidoMaterno Medico, es.NombreEspecialidad
FROM CitaMedica cm
	INNER JOIN Medico md ON md.MedicoID = cm.MedicoID
	INNER JOIN Persona ps ON ps.PersonaID = md.PersonalID
	INNER JOIN CentroSalud cs ON cs.CentroSaludID = cm.CentroSaludID
	INNER JOIN Especialidad es ON es.EspecialidadID = md.EspecialidadID
go;

--Obtener el número de citas médicas por médico y estado de cita:
SELECT ps.Nombre + ' ' + ps.ApellidoPaterno + ' ' + ps.ApellidoMaterno Medico, cm.EstadoCitaMedica, COUNT(*) NumeroCitas
FROM CitaMedica cm
	INNER JOIN Medico md ON md.MedicoID = cm.MedicoID
	INNER JOIN Persona ps ON ps.PersonaID = md.PersonalID
GROUP BY ps.Nombre, ps.ApellidoPaterno, ps.ApellidoMaterno, cm.EstadoCitaMedica
go;

--Obtener la cantidad de médicos por especialidad y centro de salud:
SELECT es.NombreEspecialidad, cs.NombreCentroSalud, COUNT(*) NumeroMedicos
FROM CitaMedica cm
	INNER JOIN Medico md ON md.MedicoID = cm.MedicoID
	INNER JOIN CentroSalud cs ON cs.CentroSaludID = cm.CentroSaludID
	INNER JOIN Especialidad es ON es.EspecialidadID = md.EspecialidadID
GROUP BY es.NombreEspecialidad, cs.NombreCentroSalud

--procedure para insertar datos
create procedure insertarUbicacion
	@id int, 
	@codigoUbigeo varchar(6),
	@codigoRegion varchar(2),
	@codigoProvincia varchar(2),
	@codigoDistrito varchar(2),
	@nombreRegion varchar(60),
	@nombreProvincia varchar(60),
	@nombreDistrito varchar(60)
	
AS
insert into Ubicacion (UbicacionID, CodigoUbigeo, CodigoRegion, CodigoProvincia,CodigoDistrito,NombreRegion,NombreProvincia,NombreDistrito) 
values(@id, @codigoUbigeo,@codigoRegion,@codigoProvincia, @codigoDistrito, @nombreRegion, @nombreProvincia, @nombreDistrito )
go;

--trigger de insertado de dato
create trigger tx_ubicacion on Ubicacion
for insert
as
print 'DATO INSERTADO'
go;

--procedure de buscar persona por iniciales de nombre
create procedure buscarPersona
@palabra varchar(50)
AS
SELECT * FROM Persona WHERE Nombre LIKE concat(@palabra,'%')
go;

--Procedimiento que liste los nombres de los doctores
-- para una determinada especialidad
create procedure EspecialidadxDoctor
@NombreEspecialidad varchar(50)
as
begin
	select Nombre, NombreEspecialidad
	from Persona as p
		join Medico as m on p.PersonaID = m.PersonalID
		join Especialidad as e  on m.EspecialidadID = e.EspecialidadID
	where NombreEspecialidad = @NombreEspecialidad
end
go;
-- Procedimiento que liste los nombres de los centros medicos
-- para una determinada distrito
create procedure CentrosMedicosxDistrito
@NombreDistrito varchar(50)
as
begin
	select NombreCentroSalud, NombreRegion, NombreProvincia, NombreDistrito
	from CentroSalud as c
		join Ubicacion as u on c.UbicacionID = u.UbicacionID
	where NombreDistrito = @NombreDistrito
end
go;

-- Crear una función que retorne la cantidad total de medicos en la aplicacion
create function TotadeMedicos() returns int
as
begin
	declare @TotalMedicos int
	select @TotalMedicos = count(MedicoID) from Medico
	return @TotalMedicos
end;
go;

--


