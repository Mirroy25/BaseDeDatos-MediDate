USE [MediDate]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Object:  Table [dbo].[Calificacion]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Calificacion](
	[CalificacionID] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[PuntajeCalificacion] [int] NULL,
	[ComentarioCalificacion] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Calificacion] PRIMARY KEY CLUSTERED 
	(
		[CalificacionID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CentroSalud]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[CentroSalud](
	[CentroSaludID] [int] NOT NULL,
	[NombreCentroSalud] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Direccion] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UbicacionID] [int] NOT NULL,
	[VerificadoFlag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_CentroSalud] PRIMARY KEY CLUSTERED 
	(
		[CentroSaludID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CentroSaludHorario]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[CentroSaludHorario](
	[CentroSaludHorarioID] [int] NOT NULL,
	[CentroSaludID] [int] NOT NULL,
	[HoraInicio] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HoraFinal] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaAtencion] [datetime] NULL,
	[MedicoID] [int] NOT NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_CentroSaludHorario] PRIMARY KEY CLUSTERED 
	(
		[CentroSaludHorarioID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CentroSaludLicencia]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[CentroSaludLicencia](
	[CentroSaludLicenciaID] [int] NOT NULL,
	[CentroSaludID] [int] NOT NULL,
	[DescripcionLicencia] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_CentroSaludLicencia] PRIMARY KEY CLUSTERED 
	(
		[CentroSaludLicenciaID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CentroSaludPersonal]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[CentroSaludPersonal](
	[CentroSaludPersonalID] [int] NOT NULL,
	[CentroSaludID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_CentroSaludPersonal] PRIMARY KEY CLUSTERED 
	(
		[CentroSaludPersonalID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Chat]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Chat](
	[ChatID] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[MensajeChat] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaChat] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Chat] PRIMARY KEY CLUSTERED 
	(
		[ChatID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[CitaMedica]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[CitaMedica](
	[CitaMedicaID] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[CentroSaludID] [int] NOT NULL,
	[FechaProgramada] [datetime] NULL,
	[HoraProgramada] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EstadoCitaMedica] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_CitaMedica] PRIMARY KEY CLUSTERED 
	(
		[CitaMedicaID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Especialidad]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Especialidad](
	[EspecialidadID] [int] NOT NULL,
	[NombreEspecialidad] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Especialidad] PRIMARY KEY CLUSTERED 
	(
		[EspecialidadID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Favorito]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Favorito](
	[FavoritoID] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[CentroSaludID] [int] NOT NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Favorito] PRIMARY KEY CLUSTERED 
	(
		[FavoritoID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HistorialMedico]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[HistorialMedico](
	[HistorialMedicoID] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[CentroSaludID] [int] NOT NULL,
	[CondicionMedica] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GrupoSanguineo] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_HistorialMedico] PRIMARY KEY CLUSTERED 
	(
		[HistorialMedicoID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HistorialMedicoAlergia]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[HistorialMedicoAlergia](
	[HistorialMedicoAlergiaID] [int] NOT NULL,
	[HistorialMedicoDetalleID] [int] NOT NULL,
	[DescripcionReaccionAlergica] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SintomasReaccionAlergica] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[GravedadReaccionAlergica] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaAtencion] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_HistorialMedicoAlergia] PRIMARY KEY CLUSTERED 
	(
		[HistorialMedicoAlergiaID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HistorialMedicoCirugia]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[HistorialMedicoCirugia](
	[HistorialMedicoCirugiaID] [int] NOT NULL,
	[HistorialMedicoDetalleID] [int] NOT NULL,
	[DescripcionCirugia] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DuracionHospitalizacionDias] [int] NULL,
	[DuracionRehabilitacionDias] [int] NULL,
	[DetalleEfectoSecundario] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaAtencion] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_HistorialMedicoCirugia] PRIMARY KEY CLUSTERED 
	(
		[HistorialMedicoCirugiaID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HistorialMedicoCondicionMedica]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[HistorialMedicoCondicionMedica](
	[HistorialMedicoCondicionMedicaID] [int] NOT NULL,
	[HistorialMedicoDetalleID] [int] NOT NULL,
	[DescripcionCondicionMedica] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaAtencion] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_HistorialMedicoCondicionMedica] PRIMARY KEY CLUSTERED 
	(
		[HistorialMedicoCondicionMedicaID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HistorialMedicoDetalle]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[HistorialMedicoDetalle](
	[HistorialMedicoDetalleID] [int] NOT NULL,
	[HistorialMedicoID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[FechaAtencion] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_HistorialMedicoDetalle] PRIMARY KEY CLUSTERED 
	(
		[HistorialMedicoDetalleID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HistorialMedicoMedicamento]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[HistorialMedicoMedicamento](
	[HistorialMedicoMedicamentoID] [int] NOT NULL,
	[HistorialMedicoDetalleID] [int] NOT NULL,
	[DescripcionMedicamento] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CantidadDosis] [int] NULL,
	[FrecuenciaDosis] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DuracionDosis] [int] NULL,
	[FechaAtencion] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_HistorialMedicoMedicamento] PRIMARY KEY CLUSTERED 
	(
		[HistorialMedicoMedicamentoID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HistorialMedicoTratamiento]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[HistorialMedicoTratamiento](
	[HistorialMedicoTratamientoID] [int] NOT NULL,
	[HistorialMedicoDetalleID] [int] NOT NULL,
	[DescripcionTratamiento] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ResultadoTratamiento] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaAtencion] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_HistorialMedicoTratamiento] PRIMARY KEY CLUSTERED 
	(
		[HistorialMedicoTratamientoID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[HorarioMedico]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[HorarioMedico](
	[HorarioMedicoID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[CentroSaludID] [int] NOT NULL,
	[DiaSemana] [int] NULL,
	[HoraInicio] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[HoraFinal] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_HorarioMedico] PRIMARY KEY CLUSTERED 
	(
		[HorarioMedicoID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Medico]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Medico](
	[MedicoID] [int] NOT NULL,
	[RegistroColegioMedico] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PersonalID] [int] NOT NULL,
	[EspecialidadID] [int] NOT NULL,
	[UbicacionID] [int] NOT NULL,
	[VerificadoFlag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Medico] PRIMARY KEY CLUSTERED 
	(
		[MedicoID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Notificacion]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Notificacion](
	[NotificacionID] [int] NOT NULL,
	[UsuarioID] [int] NOT NULL,
	[MedicoID] [int] NOT NULL,
	[TipoNotificacion] [int] NULL,
	[MensajeNotificacion] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EstadoNotificacion] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaNotificacion] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Notificacion] PRIMARY KEY CLUSTERED 
	(
		[NotificacionID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Pago]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Pago](
	[PagoID] [int] NOT NULL,
	[CitaMedicaID] [int] NOT NULL,
	[Monto] [decimal](15, 2) NULL,
	[NumeroOperacion] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescripcionBanco] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaPago] [datetime] NULL,
	[EstadoPago] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
	(
		[PagoID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Persona]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Persona](
	[PersonaID] [int] NOT NULL,
	[Nombre] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApellidoPaterno] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApellidoMaterno] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TipoDocumentoIdentificacion] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NumeroDocumentoIdentificacion] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaNacimiento] [datetime] NULL,
	[Direccion] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UbicacionID] [int] NOT NULL,
	[Email] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Telefono] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Celular] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VerificadoFlag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Persona] PRIMARY KEY CLUSTERED 
	(
		[PersonaID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Promocion]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Promocion](
	[PromocionID] [int] NOT NULL,
	[CodigoPromocion] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescripcionPromocion] [varchar](2000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescuentoPromocion] [decimal](15, 2) NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Promocion] PRIMARY KEY CLUSTERED 
	(
		[PromocionID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Ubicacion]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Ubicacion](
	[UbicacionID] [int] NOT NULL,
	[CodigoUbigeo] [varchar](6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CodigoRegion] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CodigoProvincia] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CodigoDistrito] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NombreRegion] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NombreProvincia] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NombreDistrito] [varchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Ubicacion] PRIMARY KEY CLUSTERED 
	(
		[UbicacionID] ASC
	)
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Usuario]    Script Date: 3/06/2023 10:39:55 ******/
CREATE TABLE [dbo].[Usuario](
	[UsuarioID] [int] NOT NULL,
	[Nombre] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApellidoPaterno] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ApellidoMaterno] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Contrasena] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[VerificadoFlag] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaInicio] [datetime] NULL,
	[FechaFinal] [datetime] NULL,
	[PersonaID] [int] NOT NULL,
	[Estado] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaCreacion] datetime,
	[UsuarioCreacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[FechaActualizacion] datetime,
	[UsuarioActualizacion] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
	(
		[UsuarioID] ASC
	)
) ON [PRIMARY]
GO
