USE [master]
GO
/****** Object:  Database [Midterm_4259]    Script Date: 10/28/2020 6:51:20 PM ******/
CREATE DATABASE [Midterm_4259]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Midterm_4259', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Midterm_4259.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Midterm_4259_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Midterm_4259_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Midterm_4259] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Midterm_4259].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Midterm_4259] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Midterm_4259] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Midterm_4259] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Midterm_4259] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Midterm_4259] SET ARITHABORT OFF 
GO
ALTER DATABASE [Midterm_4259] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Midterm_4259] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Midterm_4259] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Midterm_4259] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Midterm_4259] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Midterm_4259] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Midterm_4259] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Midterm_4259] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Midterm_4259] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Midterm_4259] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Midterm_4259] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Midterm_4259] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Midterm_4259] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Midterm_4259] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Midterm_4259] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Midterm_4259] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Midterm_4259] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Midterm_4259] SET RECOVERY FULL 
GO
ALTER DATABASE [Midterm_4259] SET  MULTI_USER 
GO
ALTER DATABASE [Midterm_4259] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Midterm_4259] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Midterm_4259] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Midterm_4259] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Midterm_4259] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Midterm_4259', N'ON'
GO
ALTER DATABASE [Midterm_4259] SET QUERY_STORE = OFF
GO
USE [Midterm_4259]
GO
/****** Object:  UserDefinedFunction [dbo].[daysInMonth]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[daysInMonth] ( @pDate    DATETIME )
RETURNS INT
AS
BEGIN

    RETURN CASE WHEN MONTH(@pDate) IN (1, 3, 5, 7, 8, 10, 12) THEN 31
                WHEN MONTH(@pDate) IN (4, 6, 9, 11) THEN 30
                ELSE CASE WHEN (YEAR(@pDate) % 4    = 0 AND
                                YEAR(@pDate) % 100 != 0) OR
                               (YEAR(@pDate) % 400  = 0)
                          THEN 29
                          ELSE 28
                     END
           END

END
GO
/****** Object:  Table [dbo].[Route]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fare] [float] NULL,
 CONSTRAINT [PK_idRoute] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RouteStop]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteStop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[StopId] [int] NOT NULL,
 CONSTRAINT [PK_idRouteStop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stop]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Terminus] [nvarchar](max) NULL,
 CONSTRAINT [PK_idStop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[newView1]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[newView1]
AS
SELECT S.id, S.Name, S.Terminus, RS.RouteId,RS.StopId
	FROM dbo.Stop AS S
	INNER JOIN dbo.RouteStop AS RS
	ON S.id = RS.id
	INNER JOIN dbo.Route AS Route
	ON S.id = Route.id
GO
/****** Object:  Table [dbo].[Bus]    Script Date: 10/28/2020 6:51:20 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Driver]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Driver](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[BusVehicle] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[employ_Date] [datetime] NULL,
 CONSTRAINT [PK_idDriver] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[driverStat]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[driverStat](
	[ID_STAT] [int] IDENTITY(1,1) NOT NULL,
	[DESC_STAT] [nvarchar](500) NULL,
	[DATE_STAT] [datetime] NULL,
 CONSTRAINT [PK_STAT] PRIMARY KEY CLUSTERED 
(
	[ID_STAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NOT NULL,
	[departure] [datetime] NULL,
	[arrival] [datetime] NULL,
 CONSTRAINT [PK_idSchedule] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bus]  WITH CHECK ADD  CONSTRAINT [FK_Bus_Schedule] FOREIGN KEY([ScheduleId])
REFERENCES [dbo].[Schedule] ([id])
GO
ALTER TABLE [dbo].[Bus] CHECK CONSTRAINT [FK_Bus_Schedule]
GO
ALTER TABLE [dbo].[Driver]  WITH CHECK ADD  CONSTRAINT [FK_Driver_Bus] FOREIGN KEY([BusVehicle])
REFERENCES [dbo].[Bus] ([vehicle])
GO
ALTER TABLE [dbo].[Driver] CHECK CONSTRAINT [FK_Driver_Bus]
GO
ALTER TABLE [dbo].[RouteStop]  WITH CHECK ADD  CONSTRAINT [FK_RouteStop_Route] FOREIGN KEY([RouteId])
REFERENCES [dbo].[Route] ([id])
GO
ALTER TABLE [dbo].[RouteStop] CHECK CONSTRAINT [FK_RouteStop_Route]
GO
ALTER TABLE [dbo].[RouteStop]  WITH CHECK ADD  CONSTRAINT [FK_RouteStop_Stop] FOREIGN KEY([StopId])
REFERENCES [dbo].[Stop] ([id])
GO
ALTER TABLE [dbo].[RouteStop] CHECK CONSTRAINT [FK_RouteStop_Stop]
GO
ALTER TABLE [dbo].[Schedule]  WITH CHECK ADD  CONSTRAINT [FK_Schedule_Route] FOREIGN KEY([RouteId])
REFERENCES [dbo].[Route] ([id])
GO
ALTER TABLE [dbo].[Schedule] CHECK CONSTRAINT [FK_Schedule_Route]
GO
/****** Object:  StoredProcedure [dbo].[Stops]    Script Date: 10/28/2020 6:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Stops] @vehicle NUMERIC
AS
SELECT * 
FROM    [dbo].[Bus] as B
        INNER JOIN 
        [dbo].[Schedule] as S
            ON B.ScheduleId = S.id
        INNER JOIN
        [dbo].[Route] AS R
            ON R.id = S.RouteId
        INNER JOIN
        [dbo].[RouteStop] AS RS
            ON RS.RouteId = R.id
        INNER JOIN 
        [dbo].[Stop] AS St
            ON St.id = RS.StopId
WHERE vehicle = @vehicle
GO
USE [master]
GO
ALTER DATABASE [Midterm_4259] SET  READ_WRITE 
GO
