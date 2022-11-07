USE [master]
GO
/****** Object:  Database [Zoopark]    Script Date: 07.11.2022 13:19:05 ******/
CREATE DATABASE [Zoopark]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Zoopark', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Zoopark.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Zoopark_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Zoopark_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Zoopark] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Zoopark].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Zoopark] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Zoopark] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Zoopark] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Zoopark] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Zoopark] SET ARITHABORT OFF 
GO
ALTER DATABASE [Zoopark] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Zoopark] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Zoopark] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Zoopark] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Zoopark] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Zoopark] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Zoopark] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Zoopark] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Zoopark] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Zoopark] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Zoopark] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Zoopark] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Zoopark] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Zoopark] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Zoopark] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Zoopark] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Zoopark] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Zoopark] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Zoopark] SET  MULTI_USER 
GO
ALTER DATABASE [Zoopark] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Zoopark] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Zoopark] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Zoopark] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Zoopark] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Zoopark] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Zoopark] SET QUERY_STORE = OFF
GO
USE [Zoopark]
GO
/****** Object:  Table [dbo].[AnimalFamily]    Script Date: 07.11.2022 13:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnimalFamily](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FamilyName] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_AnimalFamily] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeContinent]    Script Date: 07.11.2022 13:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeContinent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Continent] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_HomeContinent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KindOfAnimal]    Script Date: 07.11.2022 13:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KindOfAnimal](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](20) NOT NULL,
	[FoodConsumption] [int] NOT NULL,
	[RoomNumber] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IdFamily] [int] NOT NULL,
	[IdContinent] [int] NOT NULL,
	[IdComplex] [int] NOT NULL,
	[ImageA] [nvarchar](max) NULL,
 CONSTRAINT [PK_KindOfAnimal] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NameComplex]    Script Date: 07.11.2022 13:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameComplex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Complex] [nvarchar](45) NOT NULL,
 CONSTRAINT [PK_NameComplex] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AnimalFamily] ON 

INSERT [dbo].[AnimalFamily] ([Id], [FamilyName]) VALUES (1, N'Аллигаторовые')
INSERT [dbo].[AnimalFamily] ([Id], [FamilyName]) VALUES (2, N'Попугаевые')
SET IDENTITY_INSERT [dbo].[AnimalFamily] OFF
GO
SET IDENTITY_INSERT [dbo].[HomeContinent] ON 

INSERT [dbo].[HomeContinent] ([Id], [Continent]) VALUES (1, N'Азия')
INSERT [dbo].[HomeContinent] ([Id], [Continent]) VALUES (2, N'Южной Америка')
SET IDENTITY_INSERT [dbo].[HomeContinent] OFF
GO
SET IDENTITY_INSERT [dbo].[KindOfAnimal] ON 

INSERT [dbo].[KindOfAnimal] ([Id], [Name], [FoodConsumption], [RoomNumber], [Quantity], [IdFamily], [IdContinent], [IdComplex], [ImageA]) VALUES (1, N'Китайский аллигатор ', 25, 2, 4, 1, 1, 1, N'\Resources\аллигатор.jpg')
INSERT [dbo].[KindOfAnimal] ([Id], [Name], [FoodConsumption], [RoomNumber], [Quantity], [IdFamily], [IdContinent], [IdComplex], [ImageA]) VALUES (2, N'Венесуэльский амазон', 10, 5, 8, 2, 2, 2, N'\Resources\вен амазон.jpg')
INSERT [dbo].[KindOfAnimal] ([Id], [Name], [FoodConsumption], [RoomNumber], [Quantity], [IdFamily], [IdContinent], [IdComplex], [ImageA]) VALUES (3, N'Красный ара         ', 15, 3, 5, 2, 2, 2, N'\Resources\арабрат.jpg')
INSERT [dbo].[KindOfAnimal] ([Id], [Name], [FoodConsumption], [RoomNumber], [Quantity], [IdFamily], [IdContinent], [IdComplex], [ImageA]) VALUES (6, N'Крокодил            ', 43, 1, 2, 1, 2, 1, NULL)
INSERT [dbo].[KindOfAnimal] ([Id], [Name], [FoodConsumption], [RoomNumber], [Quantity], [IdFamily], [IdContinent], [IdComplex], [ImageA]) VALUES (7, N'Попугай             ', 12, 2, 7, 2, 1, 2, NULL)
SET IDENTITY_INSERT [dbo].[KindOfAnimal] OFF
GO
SET IDENTITY_INSERT [dbo].[NameComplex] ON 

INSERT [dbo].[NameComplex] ([Id], [Complex]) VALUES (1, N'Террариум')
INSERT [dbo].[NameComplex] ([Id], [Complex]) VALUES (2, N'Дом птиц')
SET IDENTITY_INSERT [dbo].[NameComplex] OFF
GO
ALTER TABLE [dbo].[KindOfAnimal]  WITH CHECK ADD  CONSTRAINT [FK_KindOfAnimal_AnimalFamily] FOREIGN KEY([IdFamily])
REFERENCES [dbo].[AnimalFamily] ([Id])
GO
ALTER TABLE [dbo].[KindOfAnimal] CHECK CONSTRAINT [FK_KindOfAnimal_AnimalFamily]
GO
ALTER TABLE [dbo].[KindOfAnimal]  WITH CHECK ADD  CONSTRAINT [FK_KindOfAnimal_HomeContinent] FOREIGN KEY([IdContinent])
REFERENCES [dbo].[HomeContinent] ([Id])
GO
ALTER TABLE [dbo].[KindOfAnimal] CHECK CONSTRAINT [FK_KindOfAnimal_HomeContinent]
GO
ALTER TABLE [dbo].[KindOfAnimal]  WITH CHECK ADD  CONSTRAINT [FK_KindOfAnimal_NameComplex] FOREIGN KEY([IdComplex])
REFERENCES [dbo].[NameComplex] ([Id])
GO
ALTER TABLE [dbo].[KindOfAnimal] CHECK CONSTRAINT [FK_KindOfAnimal_NameComplex]
GO
USE [master]
GO
ALTER DATABASE [Zoopark] SET  READ_WRITE 
GO
