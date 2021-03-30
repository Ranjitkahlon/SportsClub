USE [master]
GO
/****** Object:  Database [SportClub]    Script Date: 22/03/2021 12:22:25 AM ******/
CREATE DATABASE [SportClub]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SportClub_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SportClub.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SportClub_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\SportClub.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SportClub] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SportClub].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SportClub] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SportClub] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SportClub] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SportClub] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SportClub] SET ARITHABORT OFF 
GO
ALTER DATABASE [SportClub] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SportClub] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SportClub] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SportClub] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SportClub] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SportClub] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SportClub] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SportClub] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SportClub] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SportClub] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SportClub] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SportClub] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SportClub] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SportClub] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SportClub] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SportClub] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SportClub] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SportClub] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SportClub] SET  MULTI_USER 
GO
ALTER DATABASE [SportClub] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SportClub] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SportClub] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SportClub] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SportClub] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SportClub] SET QUERY_STORE = OFF
GO
USE [SportClub]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 22/03/2021 12:22:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
	[plan] [varchar](50) NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 22/03/2021 12:22:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[payment] [varchar](50) NULL,
	[paymentDate] [nchar](10) NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan]    Script Date: 22/03/2021 12:22:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[planType] [varchar](50) NULL,
	[Duration] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
 CONSTRAINT [PK_Plan_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([id], [Name], [Email], [Contact], [plan]) VALUES (1, N'Gur', N'gur@gmail.com', N'6198951989', N'Jogging')
INSERT [dbo].[Member] ([id], [Name], [Email], [Contact], [plan]) VALUES (2, N'happy', N'happy@gmail.com', N'6468416589', N'Playing')
SET IDENTITY_INSERT [dbo].[Member] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([id], [Name], [payment], [paymentDate]) VALUES (1, N'Happy', N'52', N'23/02/2020')
INSERT [dbo].[Payment] ([id], [Name], [payment], [paymentDate]) VALUES (2, N'Gur', N'656', N'22/02/2020')
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[Plan] ON 

INSERT [dbo].[Plan] ([id], [planType], [Duration], [Price]) VALUES (1, N'Playing', N'2 months', N'230')
INSERT [dbo].[Plan] ([id], [planType], [Duration], [Price]) VALUES (2, N'Jogging', N'6 months', N'560')
SET IDENTITY_INSERT [dbo].[Plan] OFF
USE [master]
GO
ALTER DATABASE [SportClub] SET  READ_WRITE 
GO
