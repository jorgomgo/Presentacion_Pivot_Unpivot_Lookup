USE [master]
GO
/****** Object:  Database [Presentacion]    Script Date: 13-Aug-18 7:38:54 PM ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 13-Aug-18 7:38:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] NULL,
	[CountryName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerDestination]    Script Date: 13-Aug-18 7:38:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerDestination](
	[SCustomerID] [int] NOT NULL,
	[SCustomerName] [nvarchar](50) NULL,
	[ScustomerAmount] [int] NULL,
	[SCustomerAddress] [nvarchar](50) NULL,
	[SCustomerCountry] [nvarchar](50) NULL,
	[SCustomerIsActive] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomerDestination] PRIMARY KEY CLUSTERED 
(
	[SCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerOrigin]    Script Date: 13-Aug-18 7:38:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOrigin](
	[SCustomerID] [int] NOT NULL,
	[SCustomerName] [nvarchar](50) NULL,
	[ScustomerAmount] [int] NULL,
	[SCustomerAddress] [nvarchar](50) NULL,
	[SCustomerCountry] [nvarchar](50) NULL,
	[SCustomerIsActive] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomerOrigin] PRIMARY KEY CLUSTERED 
(
	[SCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PivotDestination]    Script Date: 13-Aug-18 7:38:54 PM ******/
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
/****** Object:  Table [dbo].[PivotOrigin]    Script Date: 13-Aug-18 7:38:54 PM ******/
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
/****** Object:  Table [dbo].[UnpivotDestination]    Script Date: 13-Aug-18 7:38:54 PM ******/
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
/****** Object:  Table [dbo].[UnpivotOrigin]    Script Date: 13-Aug-18 7:38:54 PM ******/
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
USE [master]
GO
ALTER DATABASE [Presentacion] SET  READ_WRITE 
GO
