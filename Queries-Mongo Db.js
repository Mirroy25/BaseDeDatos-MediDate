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

/* buscar cita medica por usuario y lanzar solo el medico centro de salud y fecha programada*/
db.CitaMedica.find(
    {
        "Usuario": {
            "NombreUsuario": "Patricia",
            "ApellidoPaternoUsuario": "Rojas",
            "ApellidoMaternoUsuario": "Soto",
            "TipoDocumentoIdentificacionUsuario": "DNI",
            "NumeroDocumentoIdentificacionUsuario": "70000015",
            "FechaNacimientoUsuario": ISODate("1990-01-15")
        }
    },
    {
      "Medico": 1, "CentroSalud":1, "FechaProgramada":1, "_id": 0
    }
)
/*busca el centro medico que satisfaga las condiciones dadas*/
db.CentroSalud.find(
    {
             $and : [
                {"NombreCentroSalud": "Clinica Bienestar"},
                {"Direccion": "Calle Los Pinos 123"}
             ]
    }
)
/* Distintos Usuarios*/

db.CitaMedica.distinct("Usuario.NombreUsuario")

/* Mostrar la cantidad de medico por cada especialidad*/

db.CitaMedica.aggregate([
   {
      $unwind: "$Medico"
   },
   {
        $group:{
          _id: "$Medico.Especialidad",
          count:{
            $sum:1
          }
        }
    }
])
/*Saber si un medico esta en un centro de salud*/
db.CentroSalud.findOne({ Medico: { $elemMatch: { nombre: "NombreMedico" } } })

/*saber los medicos que hay por cada centro de salud*/

db.CentroSalud.aggregate([
    {
        $group: {
            _id: "$Persona.NombreMedico",
            NumeroCentrosSalud: { $sum: 1 }
      }
    }
])
