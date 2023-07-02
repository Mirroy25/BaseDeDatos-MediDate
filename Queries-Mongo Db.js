/*Contar el número de centros de salud por distrito:*/

db.CentroSalud.aggregate([
    {
        $group: {
            _id: "$Ubicacion.NombreDistrito",
            NumeroCentrosSalud: { $sum: 1 }
        }
    }
])

/* Encontrar los centros de salud verificados en una región y provincia específica:*/
db.CentroSalud.find({
    "Ubicacion.NombreRegion": "Lima",
    "Ubicacion.NombreProvincia": "Lima",
    "VerificadoFlag": "1"
})

/* Indicar  todos los medicos  que  tiene cita a las 11pm*/

db.CitaMedica.distinct('Medico.Persona.NombreMedico', {HoraProgramada:'11:00'})

/* Indicar los distintos Horas Programadas*/
db.CitaMedica.distinct('HoraProgramada')
