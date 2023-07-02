/*Datos de Centro de Salud*/

db.CentroSalud.insertOne({
    NombreCentroSalud: "Cli­nica Good Health",
    Ubicacion: {
        NombreRegion: "Lima",
        NombreProvincia: "Lima",
        NombreDistrito: "San Isidro"
    },
    VerificadoFlag: "1",
    Direccion: "Avenida Caminos del Inca 123"
})

db.CentroSalud.insertOne({
    NombreCentroSalud: "Hospital Central",
    Ubicacion: {
        NombreRegion: "Lima",
        NombreProvincia: "Lima",
        NombreDistrito: "Miraflores"
    },
    VerificadoFlag: "1",
    Direccion: "Calle Los Alamos 456"
})

db.CentroSalud.insertOne({
    NombreCentroSalud: "Centro Medico Salud Total",
    Ubicacion: {
        NombreRegion: "Lima",
        NombreProvincia: "Lima",
        NombreDistrito: "Surco"
    },
    VerificadoFlag: "1",
    Direccion: "Avenida El Polo 789"
})

db.CentroSalud.insertOne({
    NombreCentroSalud: "Clinica Bienestar",
    Ubicacion: {
        NombreRegion: "Lima",
        NombreProvincia: "Lima",
        NombreDistrito: "La Molina"
    },
    VerificadoFlag: "1",
    Direccion: "Calle Los Pinos 123"
})

db.CentroSalud.insertOne({
    NombreCentroSalud: "Hospital del Este",
    Ubicacion: {
        NombreRegion: "Lima",
        NombreProvincia: "Lima",
        NombreDistrito: "Ate"
    },
    VerificadoFlag: "1",
    Direccion: "Avenida Los Frutales 456"
})


/*Datos de Cita Medica*/


db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Juan",
        ApellidoPaternoUsuario: "Perez",
        ApellidoMaternoUsuario: "Gomez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000001",
        FechaNacimientoUsuario: ISODate("1990-01-01")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dr. Carlos",
            ApellidoPaternoMedico: "Lopez",
            ApellidoMaternoMedico: "Garcia",
            EmailMedico: "drcarlos@example.com",
            TelefonoMedico: "987654310",
            CelularMedico: "123456710",
            DireccionMedico: "Calle Principal 1023"
        },
        RegistroColegioMedico: "123456710"
    },
    CentroSalud: {
        NombreCentroSalud: "Clinica Good Health",
        Direccion: "Avenida Caminos del Inca 123"
    },
    FechaProgramada: ISODate("2023-07-01"),
    HoraProgramada: "08:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Ana",
        ApellidoPaternoUsuario: "Gomez",
        ApellidoMaternoUsuario: "Lopez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000002",
        FechaNacimientoUsuario: ISODate("1990-01-02")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dra. Laura",
            ApellidoPaternoMedico: "Garcia",
            ApellidoMaternoMedico: "Martinez",
            EmailMedico: "dralaura@example.com",
            TelefonoMedico: "987654311",
            CelularMedico: "123456711",
            DireccionMedico: "Calle Principal 1123"
        },
        RegistroColegioMedico: "123456711"
    },
    CentroSalud: {
        NombreCentroSalud: "Hospital Central",
        Direccion: "Calle Los Alamos 456"
    },
    FechaProgramada: ISODate("2023-07-02"),
    HoraProgramada: "09:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Pedro",
        ApellidoPaternoUsuario: "Lopez",
        ApellidoMaternoUsuario: "Garcia",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000003",
        FechaNacimientoUsuario: ISODate("1990-01-03")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dr. Jose",
            ApellidoPaternoMedico: "Martinez",
            ApellidoMaternoMedico: "Sanchez",
            EmailMedico: "drjose@example.com",
            TelefonoMedico: "987654312",
            CelularMedico: "123456712",
            DireccionMedico: "Calle Principal 1223"
        },
        RegistroColegioMedico: "123456712"
    },
    CentroSalud: {
        NombreCentroSalud: "Centro Medico Salud Total",
        Direccion: "Avenida El Polo 789"
    },
    FechaProgramada: ISODate("2023-07-03"),
    HoraProgramada: "10:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Maria",
        ApellidoPaternoUsuario: "Garcia",
        ApellidoMaternoUsuario: "Martinez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000004",
        FechaNacimientoUsuario: ISODate("1990-01-04")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dra. Carmen",
            ApellidoPaternoMedico: "Sanchez",
            ApellidoMaternoMedico: "Torres",
            EmailMedico: "dracarmen@example.com",
            TelefonoMedico: "987654313",
            CelularMedico: "123456713",
            DireccionMedico: "Calle Principal 1323"
        },
        RegistroColegioMedico: "123456713"
    },
    CentroSalud: {
        NombreCentroSalud: "Clinica Bienestar",
        Direccion: "Calle Los Pinos 123"
    },
    FechaProgramada: ISODate("2023-07-04"),
    HoraProgramada: "11:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Jose",
        ApellidoPaternoUsuario: "Martinez",
        ApellidoMaternoUsuario: "Sanchez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000005",
        FechaNacimientoUsuario: ISODate("1990-01-05")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dr. Francisco",
            ApellidoPaternoMedico: "Torres",
            ApellidoMaternoMedico: "Gonzalez",
            EmailMedico: "drfrancisco@example.com",
            TelefonoMedico: "987654314",
            CelularMedico: "123456714",
            DireccionMedico: "Calle Principal 1423"
        },
        RegistroColegioMedico: "123456714"
    },
    CentroSalud: {
        NombreCentroSalud: "Hospital del Este",
        Direccion: "Avenida Los Frutales 456"
    },
    FechaProgramada: ISODate("2023-07-05"),
    HoraProgramada: "12:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Luisa",
        ApellidoPaternoUsuario: "Sanchez",
        ApellidoMaternoUsuario: "Torres",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000006",
        FechaNacimientoUsuario: ISODate("1990-01-06")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dra. Patricia",
            ApellidoPaternoMedico: "Gonzalez",
            ApellidoMaternoMedico: "Ramirez",
            EmailMedico: "drapatricia@example.com",
            TelefonoMedico: "987654315",
            CelularMedico: "123456715",
            DireccionMedico: "Calle Principal 1523"
        },
        RegistroColegioMedico: "123456715"
    },
    CentroSalud: {
        NombreCentroSalud: "Clinica Good Health",
        Direccion: "Avenida Caminos del Inca 123"
    },
    FechaProgramada: ISODate("2023-07-06"),
    HoraProgramada: "13:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Carlos",
        ApellidoPaternoUsuario: "Torres",
        ApellidoMaternoUsuario: "Gonzalez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000007",
        FechaNacimientoUsuario: ISODate("1990-01-07")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dr. Jorge",
            ApellidoPaternoMedico: "Ramirez",
            ApellidoMaternoMedico: "Hernandez",
            EmailMedico: "drjorge@example.com",
            TelefonoMedico: "987654316",
            CelularMedico: "123456716",
            DireccionMedico: "Calle Principal 1623"
        },
        RegistroColegioMedico: "123456716"
    },
    CentroSalud: {
        NombreCentroSalud: "Hospital Central",
        Direccion: "Calle Los Alamos 456"
    },
    FechaProgramada: ISODate("2023-07-07"),
    HoraProgramada: "14:00",
    EstadoCitaMedica: "Programada"
})


db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Fernanda",
        ApellidoPaternoUsuario: "Gonzalez",
        ApellidoMaternoUsuario: "Ramirez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000008",
        FechaNacimientoUsuario: ISODate("1990-01-08")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dra. Teresa",
            ApellidoPaternoMedico: "Hernandez",
            ApellidoMaternoMedico: "Martinez",
            EmailMedico: "drateresa@example.com",
            TelefonoMedico: "987654317",
            CelularMedico: "123456717",
            DireccionMedico: "Calle Principal 1723"
        },
        RegistroColegioMedico: "123456717"
    },
    CentroSalud: {
        NombreCentroSalud: "Centro Medico Salud Total",
        Direccion: "Avenida El Polo 789"
    },
    FechaProgramada: ISODate("2023-07-08"),
    HoraProgramada: "15:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Hector",
        ApellidoPaternoUsuario: "Ramirez",
        ApellidoMaternoUsuario: "Hernandez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000009",
        FechaNacimientoUsuario: ISODate("1990-01-09")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dr. Manuel",
            ApellidoPaternoMedico: "Martinez",
            ApellidoMaternoMedico: "Sanchez",
            EmailMedico: "drmanuel@example.com",
            TelefonoMedico: "987654318",
            CelularMedico: "123456718",
            DireccionMedico: "Calle Principal 1823"
        },
        RegistroColegioMedico: "123456718"
    },
    CentroSalud: {
        NombreCentroSalud: "Clinica Bienestar",
        Direccion: "Calle Los Pinos 123"
    },
    FechaProgramada: ISODate("2023-07-09"),
    HoraProgramada: "16:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Carmen",
        ApellidoPaternoUsuario: "Hernandez",
        ApellidoMaternoUsuario: "Martinez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000010",
        FechaNacimientoUsuario: ISODate("1990-01-10")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dra. Rosa",
            ApellidoPaternoMedico: "Sanchez",
            ApellidoMaternoMedico: "Gonzalez",
            EmailMedico: "drarosa@example.com",
            TelefonoMedico: "987654319",
            CelularMedico: "123456719",
            DireccionMedico: "Calle Principal 1923"
        },
        RegistroColegioMedico: "123456719"
    },
    CentroSalud: {
        NombreCentroSalud: "Hospital del Este",
        Direccion: "Avenida Los Frutales 456"
    },
    FechaProgramada: ISODate("2023-07-10"),
    HoraProgramada: "17:00",
    EstadoCitaMedica: "Programada"
})



db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Rodrigo",
        ApellidoPaternoUsuario: "Hernandez",
        ApellidoMaternoUsuario: "Salazar",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000011",
        FechaNacimientoUsuario: ISODate("1990-01-11")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dr. Pedro",
            ApellidoPaternoMedico: "Vargas",
            ApellidoMaternoMedico: "Fernandez",
            EmailMedico: "drpedro@example.com",
            TelefonoMedico: "987654320",
            CelularMedico: "123456720",
            DireccionMedico: "Calle Principal 2023"
        },
        RegistroColegioMedico: "123456720"
    },
    CentroSalud: {
        NombreCentroSalud: "Clinica Good Health",
        Direccion: "Avenida Caminos del Inca 123"
    },
    FechaProgramada: ISODate("2023-07-11"),
    HoraProgramada: "08:00",
    EstadoCitaMedica: "Programada"
})


db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Lucia",
        ApellidoPaternoUsuario: "Vargas",
        ApellidoMaternoUsuario: "Fernandez",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000012",
        FechaNacimientoUsuario: ISODate("1990-01-12")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dra. Mariana",
            ApellidoPaternoMedico: "Fernandez",
            ApellidoMaternoMedico: "Guerrero",
            EmailMedico: "dramariana@example.com",
            TelefonoMedico: "987654321",
            CelularMedico: "123456721",
            DireccionMedico: "Calle Principal 2123"
        },
        RegistroColegioMedico: "123456721"
    },
    CentroSalud: {
        NombreCentroSalud: "Hospital Central",
        Direccion: "Calle Los Alamos 456"
    },
    FechaProgramada: ISODate("2023-07-12"),
    HoraProgramada: "09:00",
    EstadoCitaMedica: "Programada"
})


db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Fernando",
        ApellidoPaternoUsuario: "Fernandez",
        ApellidoMaternoUsuario: "Guerrero",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000013",
        FechaNacimientoUsuario: ISODate("1990-01-13")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dr. Arturo",
            ApellidoPaternoMedico: "Guerrero",
            ApellidoMaternoMedico: "Rojas",
            EmailMedico: "drarturo@example.com",
            TelefonoMedico: "987654322",
            CelularMedico: "123456722",
            DireccionMedico: "Calle Principal 2223"
        },
        RegistroColegioMedico: "123456722"
    },
    CentroSalud: {
        NombreCentroSalud: "Centro Médico Salud Total",
        Direccion: "Avenida El Polo 789"
    },
    FechaProgramada: ISODate("2023-07-13"),
    HoraProgramada: "10:00",
    EstadoCitaMedica: "Programada"
})


db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Maria",
        ApellidoPaternoUsuario: "Guerrero",
        ApellidoMaternoUsuario: "Rojas",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000014",
        FechaNacimientoUsuario: ISODate("1990-01-14")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dra. Laura",
            ApellidoPaternoMedico: "Rojas",
            ApellidoMaternoMedico: "Soto",
            EmailMedico: "dralaura@example.com",
            TelefonoMedico: "987654323",
            CelularMedico: "123456723",
            DireccionMedico: "Calle Principal 2323"
        },
        RegistroColegioMedico: "123456723"
    },
    CentroSalud: {
        NombreCentroSalud: "Clínica Bienestar",
        Direccion: "Calle Los Pinos 123"
    },
    FechaProgramada: ISODate("2023-07-14"),
    HoraProgramada: "11:00",
    EstadoCitaMedica: "Programada"
})


db.CitaMedica.insertOne({
    Usuario: {
        NombreUsuario: "Patricia",
        ApellidoPaternoUsuario: "Rojas",
        ApellidoMaternoUsuario: "Soto",
        TipoDocumentoIdentificacionUsuario: "DNI",
        NumeroDocumentoIdentificacionUsuario: "70000015",
        FechaNacimientoUsuario: ISODate("1990-01-15")
    },
    Medico: {
        Persona: {
            NombreMedico: "Dra. Silvia",
            ApellidoPaternoMedico: "Soto",
            ApellidoMaternoMedico: "Gutierrez",
            EmailMedico: "drasilvia@example.com",
            TelefonoMedico: "987654324",
            CelularMedico: "123456724",
            DireccionMedico: "Calle Principal 2423"
        },
        RegistroColegioMedico: "123456724"
    },
    CentroSalud: {
        NombreCentroSalud: "Hospital del Este",
        Direccion: "Avenida Los Frutales 456"
    },
    FechaProgramada: ISODate("2023-07-15"),
    HoraProgramada: "12:00",
    EstadoCitaMedica: "Programada"
})
	
