USE [DB_Colruyt]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27/07/2022 11:14:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Product]') AND type in (N'U'))
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[Klanten]    Script Date: 27/07/2022 11:14:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Klanten]') AND type in (N'U'))
DROP TABLE [dbo].[Klanten]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 27/07/2022 11:14:32 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoice]') AND type in (N'U'))
DROP TABLE [dbo].[Invoice]
GO
USE [master]
GO
/****** Object:  Database [DB_Colruyt]    Script Date: 27/07/2022 11:14:32 ******/
DROP DATABASE [DB_Colruyt]
GO
/****** Object:  Database [DB_Colruyt]    Script Date: 27/07/2022 11:14:32 ******/
CREATE DATABASE [DB_Colruyt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Colruyt', FILENAME = N'C:\Users\Abdel\DB_Colruyt.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Colruyt_log', FILENAME = N'C:\Users\Abdel\DB_Colruyt_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB_Colruyt] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_Colruyt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_Colruyt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_Colruyt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_Colruyt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_Colruyt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_Colruyt] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_Colruyt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_Colruyt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_Colruyt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_Colruyt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_Colruyt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_Colruyt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_Colruyt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_Colruyt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_Colruyt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_Colruyt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_Colruyt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_Colruyt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_Colruyt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_Colruyt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_Colruyt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_Colruyt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_Colruyt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_Colruyt] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_Colruyt] SET  MULTI_USER 
GO
ALTER DATABASE [DB_Colruyt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_Colruyt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_Colruyt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_Colruyt] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_Colruyt] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_Colruyt] SET QUERY_STORE = OFF
GO
USE [DB_Colruyt]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DB_Colruyt]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 27/07/2022 11:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[id] [int] NULL,
	[klant_id] [int] NULL,
	[bedrag] [decimal](18, 2) NULL,
	[datum] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klanten]    Script Date: 27/07/2022 11:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klanten](
	[id] [int] NULL,
	[voornaam] [nvarchar](50) NULL,
	[achternaam] [nvarchar](50) NULL,
	[geboortedatum] [nchar](10) NULL,
	[sex] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27/07/2022 11:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NULL,
	[naam] [nvarchar](50) NULL,
	[prijs] [nchar](10) NULL,
	[description] [nvarchar](120) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DB_Colruyt] SET  READ_WRITE 
GO
