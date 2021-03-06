USE [master]
GO
/****** Object:  Database [echange connisance]    Script Date: 11/01/2021 13:45:18 ******/
CREATE DATABASE [echange connisance]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestDb1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestDb1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestDb1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\TestDb1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [echange connisance] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [echange connisance].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [echange connisance] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [echange connisance] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [echange connisance] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [echange connisance] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [echange connisance] SET ARITHABORT OFF 
GO
ALTER DATABASE [echange connisance] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [echange connisance] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [echange connisance] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [echange connisance] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [echange connisance] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [echange connisance] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [echange connisance] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [echange connisance] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [echange connisance] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [echange connisance] SET  ENABLE_BROKER 
GO
ALTER DATABASE [echange connisance] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [echange connisance] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [echange connisance] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [echange connisance] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [echange connisance] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [echange connisance] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [echange connisance] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [echange connisance] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [echange connisance] SET  MULTI_USER 
GO
ALTER DATABASE [echange connisance] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [echange connisance] SET DB_CHAINING OFF 
GO
ALTER DATABASE [echange connisance] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [echange connisance] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [echange connisance] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [echange connisance] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'echange connisance', N'ON'
GO
ALTER DATABASE [echange connisance] SET QUERY_STORE = OFF
GO
USE [echange connisance]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/01/2021 13:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[userName] [varchar](50) NULL,
	[fullName] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[phoneNumber] [int] NULL,
	[email] [varchar](255) NULL,
	[solde] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evaliation]    Script Date: 11/01/2021 13:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaliation](
	[idQuestion] [int] NULL,
	[idReponse] [int] NULL,
	[idNote] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Intervenant]    Script Date: 11/01/2021 13:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Intervenant](
	[id] [int] NOT NULL,
	[userName] [varchar](20) NULL,
	[fullName] [varchar](50) NULL,
	[passeword] [varchar](20) NULL,
	[phoneNumber] [int] NULL,
	[email] [varchar](200) NULL,
	[solde] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Note]    Script Date: 11/01/2021 13:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Note](
	[id] [int] NOT NULL,
	[value] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Questions]    Script Date: 11/01/2021 13:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Questions](
	[id] [int] NOT NULL,
	[prix] [float] NULL,
	[introduction] [text] NULL,
	[descriptions] [text] NULL,
	[formule] [text] NULL,
	[tags] [varchar](200) NULL,
	[IdIntervenant] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Redacteur]    Script Date: 11/01/2021 13:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Redacteur](
	[id] [int] NOT NULL,
	[userName] [varchar](20) NULL,
	[fullName] [varchar](50) NULL,
	[passeword] [varchar](20) NULL,
	[phoneNumber] [int] NULL,
	[email] [varchar](200) NULL,
	[domaineConnaissance] [varchar](255) NULL,
	[niveuConnaissance] [varchar](255) NULL,
	[solde] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reponse]    Script Date: 11/01/2021 13:45:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reponse](
	[id] [int] NOT NULL,
	[questionId] [int] NULL,
	[redacteurId] [int] NULL,
	[notation] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Evaliation]  WITH CHECK ADD FOREIGN KEY([idNote])
REFERENCES [dbo].[Note] ([id])
GO
ALTER TABLE [dbo].[Evaliation]  WITH CHECK ADD FOREIGN KEY([idQuestion])
REFERENCES [dbo].[Questions] ([id])
GO
ALTER TABLE [dbo].[Evaliation]  WITH CHECK ADD FOREIGN KEY([idReponse])
REFERENCES [dbo].[Reponse] ([id])
GO
ALTER TABLE [dbo].[Questions]  WITH CHECK ADD FOREIGN KEY([IdIntervenant])
REFERENCES [dbo].[Intervenant] ([id])
GO
ALTER TABLE [dbo].[Reponse]  WITH CHECK ADD FOREIGN KEY([questionId])
REFERENCES [dbo].[Questions] ([id])
GO
ALTER TABLE [dbo].[Reponse]  WITH CHECK ADD FOREIGN KEY([redacteurId])
REFERENCES [dbo].[Redacteur] ([id])
GO
USE [master]
GO
ALTER DATABASE [echange connisance] SET  READ_WRITE 
GO
