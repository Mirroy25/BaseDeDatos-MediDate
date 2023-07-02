USE [MediDate]
GO

/****** Object:  Table [dbo].[Calificacion]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Medico]
GO
ALTER TABLE [dbo].[Calificacion]  WITH CHECK ADD  CONSTRAINT [FK_Calificacion_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Calificacion] CHECK CONSTRAINT [FK_Calificacion_Usuario]
GO

/****** Object:  Table [dbo].[CentroSalud]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[CentroSalud]  WITH CHECK ADD  CONSTRAINT [FK_CentroSalud_Ubicacion] FOREIGN KEY([UbicacionID])
REFERENCES [dbo].[Ubicacion] ([UbicacionID])
GO
ALTER TABLE [dbo].[CentroSalud] CHECK CONSTRAINT [FK_CentroSalud_Ubicacion]
GO

/****** Object:  Table [dbo].[CentroSaludHorario]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[CentroSaludHorario]  WITH CHECK ADD  CONSTRAINT [FK_CentroSaludHorario_CentroSalud] FOREIGN KEY([CentroSaludID])
REFERENCES [dbo].[CentroSalud] ([CentroSaludID])
GO
ALTER TABLE [dbo].[CentroSaludHorario] CHECK CONSTRAINT [FK_CentroSaludHorario_CentroSalud]
GO
ALTER TABLE [dbo].[CentroSaludHorario]  WITH CHECK ADD  CONSTRAINT [FK_CentroSaludHorario_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[CentroSaludHorario] CHECK CONSTRAINT [FK_CentroSaludHorario_Medico]
GO

/****** Object:  Table [dbo].[CentroSaludLicencia]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[CentroSaludLicencia]  WITH CHECK ADD  CONSTRAINT [FK_CentroSaludLicencia_CentroSalud] FOREIGN KEY([CentroSaludID])
REFERENCES [dbo].[CentroSalud] ([CentroSaludID])
GO
ALTER TABLE [dbo].[CentroSaludLicencia] CHECK CONSTRAINT [FK_CentroSaludLicencia_CentroSalud]
GO

/****** Object:  Table [dbo].[CentroSaludPersonal]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[CentroSaludPersonal]  WITH CHECK ADD  CONSTRAINT [FK_CentroSaludPersonal_CentroSalud] FOREIGN KEY([CentroSaludID])
REFERENCES [dbo].[CentroSalud] ([CentroSaludID])
GO
ALTER TABLE [dbo].[CentroSaludPersonal] CHECK CONSTRAINT [FK_CentroSaludPersonal_CentroSalud]
GO
ALTER TABLE [dbo].[CentroSaludPersonal]  WITH CHECK ADD  CONSTRAINT [FK_CentroSaludPersonal_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[CentroSaludPersonal] CHECK CONSTRAINT [FK_CentroSaludPersonal_Medico]
GO

/****** Object:  Table [dbo].[Chat]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD  CONSTRAINT [FK_Chat_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [FK_Chat_Medico]
GO
ALTER TABLE [dbo].[Chat]  WITH CHECK ADD  CONSTRAINT [FK_Chat_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Chat] CHECK CONSTRAINT [FK_Chat_Usuario]
GO

/****** Object:  Table [dbo].[CitaMedica]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_CentroSalud] FOREIGN KEY([CentroSaludID])
REFERENCES [dbo].[CentroSalud] ([CentroSaludID])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_CentroSalud]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Medico]
GO
ALTER TABLE [dbo].[CitaMedica]  WITH CHECK ADD  CONSTRAINT [FK_CitaMedica_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[CitaMedica] CHECK CONSTRAINT [FK_CitaMedica_Usuario]
GO

/****** Object:  Table [dbo].[Favorito]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[Favorito]  WITH CHECK ADD  CONSTRAINT [FK_Favorito_CentroSalud] FOREIGN KEY([CentroSaludID])
REFERENCES [dbo].[CentroSalud] ([CentroSaludID])
GO
ALTER TABLE [dbo].[Favorito] CHECK CONSTRAINT [FK_Favorito_CentroSalud]
GO
ALTER TABLE [dbo].[Favorito]  WITH CHECK ADD  CONSTRAINT [FK_Favorito_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[Favorito] CHECK CONSTRAINT [FK_Favorito_Medico]
GO
ALTER TABLE [dbo].[Favorito]  WITH CHECK ADD  CONSTRAINT [FK_Favorito_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Favorito] CHECK CONSTRAINT [FK_Favorito_Usuario]
GO

/****** Object:  Table [dbo].[HistorialMedico]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[HistorialMedico]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedico_CentroSalud] FOREIGN KEY([CentroSaludID])
REFERENCES [dbo].[CentroSalud] ([CentroSaludID])
GO
ALTER TABLE [dbo].[HistorialMedico] CHECK CONSTRAINT [FK_HistorialMedico_CentroSalud]
GO
ALTER TABLE [dbo].[HistorialMedico]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedico_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[HistorialMedico] CHECK CONSTRAINT [FK_HistorialMedico_Usuario]
GO

/****** Object:  Table [dbo].[HistorialMedicoAlergia]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[HistorialMedicoAlergia]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedicoAlergia_HistorialMedicoDetalle] FOREIGN KEY([HistorialMedicoDetalleID])
REFERENCES [dbo].[HistorialMedicoDetalle] ([HistorialMedicoDetalleID])
GO
ALTER TABLE [dbo].[HistorialMedicoAlergia] CHECK CONSTRAINT [FK_HistorialMedicoAlergia_HistorialMedicoDetalle]
GO

/****** Object:  Table [dbo].[HistorialMedicoCirugia]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[HistorialMedicoCirugia]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedicoCirugia_HistorialMedicoDetalle] FOREIGN KEY([HistorialMedicoDetalleID])
REFERENCES [dbo].[HistorialMedicoDetalle] ([HistorialMedicoDetalleID])
GO
ALTER TABLE [dbo].[HistorialMedicoCirugia] CHECK CONSTRAINT [FK_HistorialMedicoCirugia_HistorialMedicoDetalle]
GO

/****** Object:  Table [dbo].[HistorialMedicoCondicionMedica]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[HistorialMedicoCondicionMedica]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedicoCondicionMedica_HistorialMedicoDetalle] FOREIGN KEY([HistorialMedicoDetalleID])
REFERENCES [dbo].[HistorialMedicoDetalle] ([HistorialMedicoDetalleID])
GO
ALTER TABLE [dbo].[HistorialMedicoCondicionMedica] CHECK CONSTRAINT [FK_HistorialMedicoCondicionMedica_HistorialMedicoDetalle]
GO

/****** Object:  Table [dbo].[HistorialMedicoDetalle]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[HistorialMedicoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedicoDetalle_HistorialMedico] FOREIGN KEY([HistorialMedicoID])
REFERENCES [dbo].[HistorialMedico] ([HistorialMedicoID])
GO
ALTER TABLE [dbo].[HistorialMedicoDetalle] CHECK CONSTRAINT [FK_HistorialMedicoDetalle_HistorialMedico]
GO
ALTER TABLE [dbo].[HistorialMedicoDetalle]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedicoDetalle_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[HistorialMedicoDetalle] CHECK CONSTRAINT [FK_HistorialMedicoDetalle_Medico]
GO

/****** Object:  Table [dbo].[HistorialMedicoMedicamento]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[HistorialMedicoMedicamento]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedicoMedicamento_HistorialMedicoDetalle] FOREIGN KEY([HistorialMedicoDetalleID])
REFERENCES [dbo].[HistorialMedicoDetalle] ([HistorialMedicoDetalleID])
GO
ALTER TABLE [dbo].[HistorialMedicoMedicamento] CHECK CONSTRAINT [FK_HistorialMedicoMedicamento_HistorialMedicoDetalle]
GO

/****** Object:  Table [dbo].[HistorialMedicoTratamiento]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[HistorialMedicoTratamiento]  WITH CHECK ADD  CONSTRAINT [FK_HistorialMedicoTratamiento_HistorialMedicoDetalle] FOREIGN KEY([HistorialMedicoDetalleID])
REFERENCES [dbo].[HistorialMedicoDetalle] ([HistorialMedicoDetalleID])
GO
ALTER TABLE [dbo].[HistorialMedicoTratamiento] CHECK CONSTRAINT [FK_HistorialMedicoTratamiento_HistorialMedicoDetalle]
GO

/****** Object:  Table [dbo].[HorarioMedico]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[HorarioMedico]  WITH CHECK ADD  CONSTRAINT [FK_HorarioMedico_CentroSalud] FOREIGN KEY([CentroSaludID])
REFERENCES [dbo].[CentroSalud] ([CentroSaludID])
GO
ALTER TABLE [dbo].[HorarioMedico] CHECK CONSTRAINT [FK_HorarioMedico_CentroSalud]
GO
ALTER TABLE [dbo].[HorarioMedico]  WITH CHECK ADD  CONSTRAINT [FK_HorarioMedico_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[HorarioMedico] CHECK CONSTRAINT [FK_HorarioMedico_Medico]
GO

/****** Object:  Table [dbo].[Medico]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Especialidad] FOREIGN KEY([EspecialidadID])
REFERENCES [dbo].[Especialidad] ([EspecialidadID])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Especialidad]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Persona] FOREIGN KEY([PersonalID])
REFERENCES [dbo].[Persona] ([PersonaID])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Persona]
GO
ALTER TABLE [dbo].[Medico]  WITH CHECK ADD  CONSTRAINT [FK_Medico_Ubicacion] FOREIGN KEY([UbicacionID])
REFERENCES [dbo].[Ubicacion] ([UbicacionID])
GO
ALTER TABLE [dbo].[Medico] CHECK CONSTRAINT [FK_Medico_Ubicacion]
GO

/****** Object:  Table [dbo].[Notificacion]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[Notificacion]  WITH CHECK ADD  CONSTRAINT [FK_Notificacion_Medico] FOREIGN KEY([MedicoID])
REFERENCES [dbo].[Medico] ([MedicoID])
GO
ALTER TABLE [dbo].[Notificacion] CHECK CONSTRAINT [FK_Notificacion_Medico]
GO
ALTER TABLE [dbo].[Notificacion]  WITH CHECK ADD  CONSTRAINT [FK_Notificacion_Usuario] FOREIGN KEY([UsuarioID])
REFERENCES [dbo].[Usuario] ([UsuarioID])
GO
ALTER TABLE [dbo].[Notificacion] CHECK CONSTRAINT [FK_Notificacion_Usuario]
GO

/****** Object:  Table [dbo].[Pago]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[Pago]  WITH CHECK ADD  CONSTRAINT [FK_Pago_CitaMedica] FOREIGN KEY([CitaMedicaID])
REFERENCES [dbo].[CitaMedica] ([CitaMedicaID])
GO
ALTER TABLE [dbo].[Pago] CHECK CONSTRAINT [FK_Pago_CitaMedica]
GO

/****** Object:  Table [dbo].[Persona]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[Persona]  WITH CHECK ADD  CONSTRAINT [FK_Persona_Ubicacion] FOREIGN KEY([UbicacionID])
REFERENCES [dbo].[Ubicacion] ([UbicacionID])
GO
ALTER TABLE [dbo].[Persona] CHECK CONSTRAINT [FK_Persona_Ubicacion]
GO

/****** Object:  Table [dbo].[Usuario]    Script Date: 3/06/2023 10:39:55 ******/
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Persona] FOREIGN KEY([PersonaID])
REFERENCES [dbo].[Persona] ([PersonaID])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Persona]
GO
