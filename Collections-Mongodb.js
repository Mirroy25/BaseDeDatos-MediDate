/*Validacion documentos CitaMedica*/
db.createCollection("CitaMedica",{
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["Usuario","Medico","CentroSalud","FechaProgramada","HoraProgramada","EstadoCitaMedica"],
            properties: {
                Usuario: {
                    bsonType: "object",
                    required: ["NombreUsuario","ApellidoPaternoUsuario","ApellidoMaternoUsuario"],
                    properties: {
                        NombreUsuario: {
                            bsonType : "string"
                        },
                        ApellidoPaternoUsuario: {
                            bsonType: "string"
                        },
                        ApellidoMaternoUsuario: {
                            bsonType: "string"
                        },
                        TipoDocumentoIdentificacionUsuario: {
                            bsonType: "string"
                        },
                        NumeroDocumentoIdentificacionUsuario: {
                            bsonType: "string"
                        },
                        FechaNacimientoUsuario: {
                            bsonType: "date"
                        }
                    }
                },
                Medico: {
                    bsonType: "object",
                    required: ["Persona","RegistroColegioMedico"],
                    properties: {
                        Persona: {
                          bsonType: "object",
                          required: ["NombreMedico","ApellidoPaternoMedico","ApellidoMaternoMedico","EmailMedico","TelefonoMedico",
                                      "CelularMedico","DireccionMedico"],
                          properties: {
                              NombreMedico: {
                                 bsonType : "string"
                              },
                              ApellidoPaternoMedico : {
                                 bsonType: "string"
                              },
                              ApellidoMaternoMedico: {
                                 bsonType: "string"
                              },
                              EmailMedico: {
                                bsonType: "string"
                              },
                              TelefonoMedico: {
                                bsonType: "string"
                              },
                              CelularMedico: {
                                bsonType: "string"
                              },
                              DireccionMedico:{
                                 bsonType :"string"
                              }
                           }
                        },
                        RegistroColegioMedico: {
                            bsonType : "string"
                        }
                    }
                },
                CentroSalud: {
                    bsonType: "object",
                    required: ["NombreCentroSalud","Direccion"],
                    properties: {
                        NombreCentroSalud: {
                            bsonType : "string"
                        },
                        Direccion: {
                            bsonType : "string"
                        }
                    }
                },
                FechaProgramada: {
                    bsonType: "date"
                },
                HoraProgramada: {
                    bsonType: "string"
                },	
                EstadoCitaMedica: {
                    bsonType: "string"
                }
            }
        }
    }
})

/*Validacion documentos Centro Salud*/

db.createCollection("CentroSalud",{
    validator: {
        $jsonSchema: {
            bsonType: "object",
            required: ["NombreCentroSalud","Ubicacion","VerificadoFlag","Direccion"],
            properties: {
                NombreCentroSalud: {
                    bsonType: "string"
                },
                Ubicacion: {
                    bsonType: "object",
                    required: ["NombreRegion","NombreProvincia","NombreDistrito"],
                    properties: {
                        CodigoUbigeo: {
                            bsonType: "string"
                        },
                        CodigoRegion: {
                            bsonType: "string"
                        },
                        CodigoProvincia: {
                            bsonType: "string"
                        },
                        CodigoDistrito: {
                            bsonType: "string"
                        },
                        NombreRegion: {
                            bsonType: "string"
                        },
                        NombreProvincia: {
                            bsonType: "string"
                        },
                        NombreDistrito: {
                            bsonType: "string"
                        }
                    }
                },
                VerificadoFlag: {
                    bsonType: "string"
                },
                Direccion: {
                    bsonType: "string"
                },
            }
        }
    }
})
