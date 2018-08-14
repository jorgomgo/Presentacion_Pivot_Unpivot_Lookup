USE [master]
GO
/****** Object:  Database [Presentacion]    Script Date: 13-Aug-18 6:24:11 PM ******/
CREATE DATABASE [Presentacion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Presentacion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Presentacion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Presentacion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Presentacion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Presentacion] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Presentacion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Presentacion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Presentacion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Presentacion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Presentacion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Presentacion] SET ARITHABORT OFF 
GO
ALTER DATABASE [Presentacion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Presentacion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Presentacion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Presentacion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Presentacion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Presentacion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Presentacion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Presentacion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Presentacion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Presentacion] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Presentacion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Presentacion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Presentacion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Presentacion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Presentacion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Presentacion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Presentacion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Presentacion] SET RECOVERY FULL 
GO
ALTER DATABASE [Presentacion] SET  MULTI_USER 
GO
ALTER DATABASE [Presentacion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Presentacion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Presentacion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Presentacion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Presentacion] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Presentacion] SET QUERY_STORE = OFF
GO
USE [Presentacion]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Presentacion]
GO
/****** Object:  Table [dbo].[PivotDestination]    Script Date: 13-Aug-18 6:24:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PivotDestination](
	[Month] [nvarchar](50) NULL,
	[Saturday] [int] NULL,
	[Friday] [int] NULL,
	[Thursday] [int] NULL,
	[Wednesday] [int] NULL,
	[Tuesday] [int] NULL,
	[Monday] [int] NULL,
	[Sunday] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PivotOrigin]    Script Date: 13-Aug-18 6:24:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PivotOrigin](
	[Month] [nvarchar](50) NOT NULL,
	[DayOfWeek] [nvarchar](50) NOT NULL,
	[Expenses] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnpivotDestination]    Script Date: 13-Aug-18 6:24:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnpivotDestination](
	[Month] [nvarchar](50) NULL,
	[WeekDays] [nvarchar](255) NULL,
	[Expense] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnpivotOrigin]    Script Date: 13-Aug-18 6:24:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnpivotOrigin](
	[Month] [nvarchar](50) NULL,
	[Saturday] [int] NULL,
	[Friday] [int] NULL,
	[Thursday] [int] NULL,
	[Wednesday] [int] NULL,
	[Tuesday] [int] NULL,
	[Monday] [int] NULL,
	[Sunday] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Sunday', 200)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Monday', 100)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Tuesday', 123)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Wednesday', 154)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Thursday', 50)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Friday', 110)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'January', N'Saturday', 600)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Sunday', 400)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Monday', 200)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Tuesday', 523)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Wednesday', 754)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Thursday', 450)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Friday', 1810)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'February', N'Saturday', 6800)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Sunday', 2900)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Monday', 1900)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Tuesday', 1923)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Wednesday', 1954)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Thursday', 590)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Friday', 1910)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'March', N'Saturday', 6900)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Sunday', 800)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Monday', 10)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Tuesday', 12)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Wednesday', 15)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Thursday', 5)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Friday', 11)
INSERT [dbo].[PivotOrigin] ([Month], [DayOfWeek], [Expenses]) VALUES (N'April', N'Saturday', 60)
INSERT [dbo].[UnpivotOrigin] ([Month], [Saturday], [Friday], [Thursday], [Wednesday], [Tuesday], [Monday], [Sunday]) VALUES (N'January', 600, 110, 50, 154, 123, 100, 200)
INSERT [dbo].[UnpivotOrigin] ([Month], [Saturday], [Friday], [Thursday], [Wednesday], [Tuesday], [Monday], [Sunday]) VALUES (N'February', 6800, 1810, 450, 754, 523, 200, 400)
INSERT [dbo].[UnpivotOrigin] ([Month], [Saturday], [Friday], [Thursday], [Wednesday], [Tuesday], [Monday], [Sunday]) VALUES (N'March', 6900, 1910, 590, 1954, 1923, 1900, 2900)
INSERT [dbo].[UnpivotOrigin] ([Month], [Saturday], [Friday], [Thursday], [Wednesday], [Tuesday], [Monday], [Sunday]) VALUES (N'April', 60, 11, 5, 15, 12, 10, 800)
USE [master]
GO
ALTER DATABASE [Presentacion] SET  READ_WRITE 
GO
