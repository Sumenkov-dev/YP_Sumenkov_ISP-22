USE [master]
GO
/****** Object:  Database [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF]    Script Date: 19.06.2022 22:59:08 ******/
CREATE DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'InsuranceCompanyMAX', FILENAME = N'D:\Учеба\InsuranceCompanyMAX.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'InsuranceCompanyMAX_log', FILENAME = N'D:\Учеба\InsuranceCompanyMAX_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET ARITHABORT OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET  DISABLE_BROKER 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET RECOVERY FULL 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET  MULTI_USER 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET DB_CHAINING OFF 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'D:\УЧЕБА\INSURANCECOMPANYMAX.MDF', N'ON'
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET QUERY_STORE = OFF
GO
USE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF]
GO
/****** Object:  Table [dbo].[Agent]    Script Date: 19.06.2022 22:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fio] [varchar](100) NOT NULL,
	[dateOfEntry] [date] NOT NULL,
	[InsuranceTypeID] [int] NOT NULL,
	[SerNumPass] [varchar](12) NOT NULL,
	[AgAddress] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Agent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 19.06.2022 22:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[ClAddress] [varchar](100) NOT NULL,
	[inn] [varchar](12) NOT NULL,
	[telephone] [varchar](11) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 19.06.2022 22:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AgentID] [int] NOT NULL,
	[InsuranceCaseID] [int] NOT NULL,
	[ClientID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[years] [int] NOT NULL,
	[sum] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InsuranceCase]    Script Date: 19.06.2022 22:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsuranceCase](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[InsuranceTypeID] [int] NOT NULL,
	[costInYear] [money] NOT NULL,
 CONSTRAINT [PK_InsuranceCase] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeOfInsurance]    Script Date: 19.06.2022 22:59:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeOfInsurance](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TypeOfInsurance] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agent] ON 

INSERT [dbo].[Agent] ([id], [fio], [dateOfEntry], [InsuranceTypeID], [SerNumPass], [AgAddress]) VALUES (1, N'Прохоров Андрей Дмитриевич', CAST(N'2022-05-15' AS Date), 1, N'34 12 341533', N'Матросова 59')
INSERT [dbo].[Agent] ([id], [fio], [dateOfEntry], [InsuranceTypeID], [SerNumPass], [AgAddress]) VALUES (2, N'Александрова Мария Викторовна', CAST(N'2022-04-05' AS Date), 2, N'31 12 435123', N'Ленина 51')
SET IDENTITY_INSERT [dbo].[Agent] OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([id], [Name], [ClAddress], [inn], [telephone]) VALUES (1, N'Трунов Петр Николаевич', N'Строителей 58', N'312341531233', N'89178211232')
INSERT [dbo].[Client] ([id], [Name], [ClAddress], [inn], [telephone]) VALUES (2, N'ООО "Каир"', N'Ленина 61', N'343134351341', N'83141434451')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[Contract] ON 

INSERT [dbo].[Contract] ([id], [AgentID], [InsuranceCaseID], [ClientID], [date], [years], [sum]) VALUES (1, 1, 1, 1, CAST(N'2022-06-10' AS Date), 10, N'20000')
INSERT [dbo].[Contract] ([id], [AgentID], [InsuranceCaseID], [ClientID], [date], [years], [sum]) VALUES (2, 2, 4, 2, CAST(N'2022-05-18' AS Date), 12, N'34800')
SET IDENTITY_INSERT [dbo].[Contract] OFF
GO
SET IDENTITY_INSERT [dbo].[InsuranceCase] ON 

INSERT [dbo].[InsuranceCase] ([id], [Name], [InsuranceTypeID], [costInYear]) VALUES (1, N'Смерть', 1, 2000.0000)
INSERT [dbo].[InsuranceCase] ([id], [Name], [InsuranceTypeID], [costInYear]) VALUES (2, N'Несчастный случай', 1, 3000.0000)
INSERT [dbo].[InsuranceCase] ([id], [Name], [InsuranceTypeID], [costInYear]) VALUES (3, N'Дожитие до обусловленного года', 1, 1500.0000)
INSERT [dbo].[InsuranceCase] ([id], [Name], [InsuranceTypeID], [costInYear]) VALUES (4, N'Стихийное бедствие', 2, 2900.0000)
INSERT [dbo].[InsuranceCase] ([id], [Name], [InsuranceTypeID], [costInYear]) VALUES (5, N'Катастрофа', 2, 3000.0000)
SET IDENTITY_INSERT [dbo].[InsuranceCase] OFF
GO
INSERT [dbo].[TypeOfInsurance] ([id], [Name]) VALUES (1, N'Личный')
INSERT [dbo].[TypeOfInsurance] ([id], [Name]) VALUES (2, N'Имущественный')
GO
ALTER TABLE [dbo].[Agent]  WITH CHECK ADD  CONSTRAINT [FK_Agent_TypeOfInsurance] FOREIGN KEY([InsuranceTypeID])
REFERENCES [dbo].[TypeOfInsurance] ([id])
GO
ALTER TABLE [dbo].[Agent] CHECK CONSTRAINT [FK_Agent_TypeOfInsurance]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Agent] FOREIGN KEY([AgentID])
REFERENCES [dbo].[Agent] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Agent]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Client]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_InsuranceCase] FOREIGN KEY([InsuranceCaseID])
REFERENCES [dbo].[InsuranceCase] ([id])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_InsuranceCase]
GO
ALTER TABLE [dbo].[InsuranceCase]  WITH CHECK ADD  CONSTRAINT [FK_InsuranceCase_TypeOfInsurance] FOREIGN KEY([InsuranceTypeID])
REFERENCES [dbo].[TypeOfInsurance] ([id])
GO
ALTER TABLE [dbo].[InsuranceCase] CHECK CONSTRAINT [FK_InsuranceCase_TypeOfInsurance]
GO
USE [master]
GO
ALTER DATABASE [D:\УЧЕБА\INSURANCECOMPANYMAX.MDF] SET  READ_WRITE 
GO
