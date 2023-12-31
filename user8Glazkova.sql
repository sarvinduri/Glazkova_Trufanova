USE [master]
GO
/****** Object:  Database [user8Glazkova]    Script Date: 09.11.2023 9:47:34 ******/
CREATE DATABASE [user8Glazkova]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'user8Glazkova', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\user8Glazkova.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'user8Glazkova_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\user8Glazkova_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [user8Glazkova] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [user8Glazkova].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [user8Glazkova] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [user8Glazkova] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [user8Glazkova] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [user8Glazkova] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [user8Glazkova] SET ARITHABORT OFF 
GO
ALTER DATABASE [user8Glazkova] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [user8Glazkova] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [user8Glazkova] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [user8Glazkova] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [user8Glazkova] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [user8Glazkova] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [user8Glazkova] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [user8Glazkova] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [user8Glazkova] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [user8Glazkova] SET  DISABLE_BROKER 
GO
ALTER DATABASE [user8Glazkova] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [user8Glazkova] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [user8Glazkova] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [user8Glazkova] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [user8Glazkova] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [user8Glazkova] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [user8Glazkova] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [user8Glazkova] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [user8Glazkova] SET  MULTI_USER 
GO
ALTER DATABASE [user8Glazkova] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [user8Glazkova] SET DB_CHAINING OFF 
GO
ALTER DATABASE [user8Glazkova] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [user8Glazkova] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [user8Glazkova] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [user8Glazkova] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [user8Glazkova] SET QUERY_STORE = OFF
GO
USE [user8Glazkova]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 09.11.2023 9:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id_client] [int] NOT NULL,
	[Last_Name] [nvarchar](max) NOT NULL,
	[First_Name] [nvarchar](max) NOT NULL,
	[Surname] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[Id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 09.11.2023 9:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id_employee] [int] NOT NULL,
	[Last_Name] [varchar](50) NULL,
	[First_name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [nvarchar](255) NULL,
	[Id_position] [int] NULL,
 CONSTRAINT [PK_Лист1$_3] PRIMARY KEY CLUSTERED 
(
	[Id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 09.11.2023 9:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id_Order] [int] NOT NULL,
	[Id_client] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Id_employee] [int] NULL,
	[Accepted] [bit] NOT NULL,
 CONSTRAINT [PK_Лист1$_4] PRIMARY KEY CLUSTERED 
(
	[Id_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderService]    Script Date: 09.11.2023 9:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderService](
	[Id_OrderServise] [int] NOT NULL,
	[Id_service] [int] NOT NULL,
	[Id_order] [int] NOT NULL,
 CONSTRAINT [PK_Лист1$] PRIMARY KEY CLUSTERED 
(
	[Id_OrderServise] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 09.11.2023 9:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id_Position] [int] NOT NULL,
	[Name] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_Лист1$_1] PRIMARY KEY CLUSTERED 
(
	[Id_Position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 09.11.2023 9:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id_Service] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_Лист1$_2] PRIMARY KEY CLUSTERED 
(
	[Id_Service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([Id_position])
REFERENCES [dbo].[Position] ([Id_Position])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Client] FOREIGN KEY([Id_client])
REFERENCES [dbo].[Client] ([Id_client])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Client]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Employee] FOREIGN KEY([Id_employee])
REFERENCES [dbo].[Employee] ([Id_employee])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Employee]
GO
USE [master]
GO
ALTER DATABASE [user8Glazkova] SET  READ_WRITE 
GO
