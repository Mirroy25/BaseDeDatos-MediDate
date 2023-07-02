
/****** Object:  Database [MediDate]    Script Date: 3/06/2023 10:39:55 ******/
CREATE DATABASE [MediDate]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MediDate', FILENAME = N'D:\Data\MediDate\MediDate_Data.MDF' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MediDate_log', FILENAME = N'D:\Log\MediDate\MediDate_Log.LDF' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 COLLATE SQL_Latin1_General_CP1_CI_AS 
GO
