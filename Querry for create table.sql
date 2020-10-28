USE [Midterm_4259]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bus](
	[vehicle] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleId] [int] NOT NULL,
	[fleet_Id] [int] NULL,
	[last_main] [datetime] NULL,
 CONSTRAINT [PK_vehicle] PRIMARY KEY CLUSTERED 
(
	[vehicle] ASC
)
)

GO

CREATE TABLE [dbo].[Driver](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BusVehicle] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[employ_Date] [datetime] NULL,
 CONSTRAINT [PK_idDriver] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))

GO



CREATE TABLE [dbo].[Route](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fare] [float] NULL,
 CONSTRAINT [PK_idRoute] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
)
GO


GO
CREATE TABLE [dbo].[RouteStop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[StopId] [int] NOT NULL,
 CONSTRAINT [PK_idRouteStop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
)
GO

GO
CREATE TABLE [dbo].[Schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[departure] [datetime] NULL,
	[arrival] [datetime] NULL,
 CONSTRAINT [PK_idSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
))

GO


GO
CREATE TABLE [dbo].[Stop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Terminus] [nvarchar](max) NULL,
 CONSTRAINT [PK_idStop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)
)

CREATE TABLE [dbo].[driverStat](
	[ID_STAT] [int] IDENTITY(1,1) NOT NULL,
	[DESC_STAT] [nvarchar](500) NULL,
	[DATE_STAT] [datetime] NULL,
 CONSTRAINT [PK_STAT] PRIMARY KEY CLUSTERED 
(
	[ID_STAT] ASC
))

GO