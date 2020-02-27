USE [master]
GO
/****** Object:  Database [BilgeAdamTour]    Script Date: 2/27/2020 3:15:06 PM ******/
CREATE DATABASE [BilgeAdamTour]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BilgeAdamTour', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BilgeAdamTour.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BilgeAdamTour_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BilgeAdamTour_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BilgeAdamTour] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BilgeAdamTour].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BilgeAdamTour] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET ARITHABORT OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BilgeAdamTour] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BilgeAdamTour] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BilgeAdamTour] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BilgeAdamTour] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BilgeAdamTour] SET  MULTI_USER 
GO
ALTER DATABASE [BilgeAdamTour] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BilgeAdamTour] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BilgeAdamTour] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BilgeAdamTour] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BilgeAdamTour] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BilgeAdamTour', N'ON'
GO
ALTER DATABASE [BilgeAdamTour] SET QUERY_STORE = OFF
GO
USE [BilgeAdamTour]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[KurAdi] [nvarchar](10) NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[MusteriAdiSoyadi] [nvarchar](100) NOT NULL,
	[UyrukId] [int] NOT NULL,
	[OtelId] [int] NOT NULL,
	[OdaNo] [nvarchar](50) NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Musteri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otel]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otel](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[OtelAdi] [nvarchar](255) NOT NULL,
	[BolgeId] [int] NOT NULL,
	[BolgeUzaklikFaktoru] [int] NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Otel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sube]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sube](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[SubeAdi] [nvarchar](50) NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Sube] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Tarih] [smalldatetime] NOT NULL,
	[TourTipId] [int] NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Tour] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourTip]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourTip](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[TourAdi] [nvarchar](50) NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_TourTipi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uyruk]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyruk](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[UyrukAdi] [nvarchar](50) NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Uyruk] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bilet]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bilet](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[BiletNo] [nvarchar](50) NOT NULL,
	[BiletTarihi] [smalldatetime] NOT NULL,
	[SubeId] [int] NULL,
	[TourId] [int] NOT NULL,
	[MusteriId] [int] NOT NULL,
	[ServisIstiyorMu] [bit] NOT NULL,
	[Paid] [numeric](12, 2) NULL,
	[Total] [numeric](12, 2) NULL,
	[CurrencyId] [int] NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Bilet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_BiletSatis]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_BiletSatis]
AS
SELECT     dbo.Bilet.Id, dbo.Bilet.BiletNo, dbo.Bilet.BiletTarihi, dbo.Sube.SubeAdi, dbo.TourTip.TourAdi, dbo.Tour.Tarih, dbo.Musteri.MusteriAdiSoyadi, dbo.Uyruk.UyrukAdi, 
                      dbo.Otel.OtelAdi, dbo.Bilet.ServisIstiyorMu, dbo.Bilet.Total, dbo.Bilet.Paid, dbo.Currency.KurAdi
FROM         dbo.Otel INNER JOIN
                      dbo.Bilet INNER JOIN
                      dbo.Musteri ON dbo.Bilet.MusteriId = dbo.Musteri.Id INNER JOIN
                      dbo.Currency ON dbo.Bilet.CurrencyId = dbo.Currency.Id ON dbo.Otel.Id = dbo.Musteri.OtelId INNER JOIN
                      dbo.Sube ON dbo.Bilet.SubeId = dbo.Sube.Id INNER JOIN
                      dbo.Tour ON dbo.Bilet.TourId = dbo.Tour.Id INNER JOIN
                      dbo.TourTip ON dbo.Tour.TourTipId = dbo.TourTip.Id INNER JOIN
                      dbo.Uyruk ON dbo.Musteri.UyrukId = dbo.Uyruk.Id
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AracPark]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AracPark](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[AracPlakasi] [nvarchar](50) NOT NULL,
	[AracTipId] [int] NOT NULL,
	[AracKapasitesi] [int] NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Arac] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AracTanzim]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AracTanzim](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[TourId] [int] NOT NULL,
	[AracParkId] [int] NOT NULL,
	[TourMusteriPaxId] [int] NOT NULL,
	[KoltukNo] [int] NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_AracTanzim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AracTip]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AracTip](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[AracTipAdi] [nvarchar](50) NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_AracTip] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bolge]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolge](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[BolgeAdi] [nvarchar](255) NOT NULL,
	[MerkezeUzaklikFaktoru] [int] NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Bolge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pax]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pax](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[PaxAdi] [nvarchar](1) NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_Pax] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatisSorumlusu]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisSorumlusu](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[AdiSoyadi] [nvarchar](255) NOT NULL,
	[SubeId] [int] NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhenDeleted] [datetime2](7) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
 CONSTRAINT [PK_SatisSorumlusu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TourMusteriPax]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TourMusteriPax](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[BiletId] [int] NOT NULL,
	[PaxId] [int] NOT NULL,
	[PaxAdedi] [int] NOT NULL,
	[PaxInfo] [nvarchar](255) NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_TourMusteriPax] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TurBolgeServisSaatleri]    Script Date: 2/27/2020 3:15:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TurBolgeServisSaatleri](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[TourTipId] [int] NOT NULL,
	[BolgeId] [int] NOT NULL,
	[ServisSaati] [int] NOT NULL,
	[WhoInserted] [nvarchar](256) NULL,
	[WhoUpdated] [nvarchar](256) NULL,
	[WhoDeleted] [nvarchar](256) NULL,
	[WhenInserted] [datetime2](7) NULL,
	[WhenUpdated] [datetime2](7) NULL,
	[WhenDeleted] [datetime2](7) NULL,
 CONSTRAINT [PK_TurBolgeServisSaatleri] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201905071836343_InitialCreate', N'BilgeAdamTour.UI.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE3B6127E2F70FE83A0A7738AD4CAE5EC624F60B7C83A491B9CCD05EBA4386F0B5AA21D62254A95A83441D15FD687FEA4FE8533942859E245175BB19D628185450EBF190E87E47038CC5F7FFC39FEE139F0AD271C2724A413FB6874685B98BAA147E87262A76CF1DD07FB87EFFFF1CDF8C20B9EAD9F0BBA134E072D6932B11F198B4E1D27711F7180925140DC384CC2051BB961E0202F748E0F0FFFE31C1D3918206CC0B2ACF1E7943212E0EC033EA7217571C452E45F871EF613510E35B30CD5BA41014E22E4E289FD91F84B7CE6A1E03E4CE3D1C3D5286F625B673E4120CE0CFB0BDB4294860C3110F6F421C133168774398BA000F9F72F1106BA05F2132C3A71BA22EFDA9FC363DE1F67D5B08072D38485414FC0A313A120476EBE969AED5281A0C20B50357BE1BDCED438B1AF3C9C157D0E7D5080CCF074EAC79C78625F972CCE92E806B351D17094435EC600F76B187F1D55110FACCEED0E4A833A1E1DF27F07D634F5591AE309C5298B917F60DDA5739FB8FFC52FF7E1574C272747F3C5C98777EF9177F2FEDFF8E45DB5A7D057A0AB1540D15D1C463806D9F0A2ECBF6D39F5768EDCB06C5669936B056C09E6866D5DA3E74F982ED923CC9AE30FB675499EB1579408E37AA004A6123462710A9F37A9EFA3B98FCB7AA79127FFBF81EBF1BBF78370BD414F64990DBDC41F264E0CF3EA33F6B3DAE49144F9F4AA8DF7174176198701FFAEDB575EFB650673D5E59D098D24F7285E6256976EECAC8CB7934973A8E1CDBA40DD7FD3E692AAE6AD25E51D5A6726142CB63D1B0A795F976F678B3B8B2218BCCCB4B8469A0CCEB0638D2488034B265C19D1515723A2D0B9BFF39A781120E20FB02876E0024EC982C4012E7BF931041344B4B7CC772849604DF07E42C96383E8F07300D167D84D6330D5194341F4EADCEE1E438A6FD260CE67C0F6780D3634F7BF8697C865617C4179AB8DF13E85EED7306517D43B470C3F30B700E49FF724E80E30883867AE8B93E4128C197BD3107CEE02F08AB293E3DE707C95DAB55332F51109F45E89B49E7E2948579E899E42F14E0C643A0FA549D44FE192D06EA216A46651738A565105595F513958374905A559D08CA055CE9C6A309F2F1BA1E19DBE0C76FFBDBECD366FD35A5051E30C5648FC23A6388665CCBB438CE198AE46A0CBBAB10B67211B3ECEF4D5F7A68CD3CFC84F8766B5D66CC81681E1674306BBFFB32113138A9F88C7BD920E47A18218E03BD1EB4F59ED734E926CDBD3A1D6CD6D33DFCE1A609A2E674912BA249B059A20980861D4E5071FCE6A8F67E4BD916322D0313074C2B73C2881BED9B251DDD273EC6386AD33370F124E51E2224F552374C8EB2158B1A36A045BC546EAC27DABF0044BC7316F84F8212881994A2853A705A12E8990DFAA25A965C72D8CF7BDE421D79CE30853CEB055135D98EB43215C80928F34286D1A1A3B158B6B364483D76A1AF336177635EE4A84622B36D9E23B1BEC52F86FAF6298CD1ADB827136ABA48B00C6B0DE2E0C549C55BA1A807C70D93703954E4C0603152ED5560CB4AEB11D18685D256FCE40F3236AD7F197CEABFB669EF583F2F6B7F54675EDC0366BFAD833D3CC7D4F68C3A0058E55F33C9FF34AFCCC34873390539CCF12E1EACA26C2C16798D543362B7F57EB873ACD20B2113501AE0CAD05545C082A40CA84EA215C11CB6B944E78113D608BB85B23AC58FB25D88A0DA8D8D58BD10AA1F9FA5436CE4EA78FB267A5352846DEE9B050C1D11884BC78D53BDE4129A6B8ACAA982EBE701F6FB8D23131180D0A6AF15C0D4A2A3A33B8960AD36CD792CE21EBE3926DA425C97D3268A9E8CCE05A1236DAAE248D53D0C32DD84845F52D7CA0C956443ACADDA6AC1B3B79D29428183B86ECAAF1358A224297956C2B5162CDF254ABE977B3FEE947418EE1B889260BA994B6E4C4C2182DB1540BAC41D24B1227EC1C3134473CCE33F502854CBBB71A96FF826575FB5407B1D8070A6AFE3B6F61BAC6AF6DB8AA4722802EA19B01776BB258BAC608F4CD2D9E02877C146BC2F7D3D04F036AF6B2CCADF34BBC6AFBBC4445183B92FC8A17A5A84CF175EBFAEF343AEACC1872A44A4F66FDD1324398745EF8A155AD9B7C53334A11AAAAA298C2573B1B3D934BD37FC46497B1FF80B522BCCE0C13792A550051D413A392EAA08055EABAA3D6B351AA98F59AEE8852CA491552AAEA216535B1A42664B5622D3C8346F514DD39A8A9245574B5B63BB226A9A40AADA95E035B23B35CD71D5593775205D65477C75E25A1C82BE91EEF61C683CC669B587EE0DD6C173360BCCEB238CC2658B9D7AF02558A7B62899B7B054C94EFA549194F7D9B99541EECD8CCA40C18E635A8762D5E5F821AEFF2CD98B5BBEEDA32DF74D76FC6EB67B8AF6A1ECAC94F2629B9972740E9A43716A7AEF6C736CA312C27B1AD428DB0C5BF240C07234E309AFDE24F7D82F9825E105C234A163861797E877D7C78742C3DD5D99F67334E9278BEE6D46A7A3B531FB32DA46AD12714BB8F2856132736785AB2025562D257D4C3CF13FBB7ACD56916DEE0BFB2E203EB2A79A0E497142AEEE3145BBFAB89A0C3A4DA7778DC510AFAFB9B7835D15DE557FFFB92373DB06E63984EA7D6A1A4E87586BFFE96A2973479D30DA459FB85C5DB9D6DB5470B5A5469B6ACFF46614ED820EF130A29FF19A0E77FF5154DFB06612344CD3B83A1F00651A1E91DC13A58C637041E7CB2EC0D41BFCEEADF14AC239AF13D01A1FDC1E4D704DD97A1A2E50EF721CDA9691B4B52A6E7D66CEC8D523377BD372949DB1B4D743531BB07DCA0C9D79BB9286F2CA979B0AD5393B33C18F62EEDFED51395F7253779E5B4EF3625799B59C80DF74B7FABE4E33D4897D3A4FFEC3EC578DBB6660A03EF799E66BF44E23D3336B1CDEF3E5D78DBC6660A10EFB9B1F54A0ADE335BDBD5FEB9634BEBBC85EE3CC557CD56325CE7E8A2C86D29BC79C81D8EFFF3108C20F728F39797FA9CB1A67CD716862B12335373B29ACC5899380A5F85A2996DBFBE8A0DBFB1B382A699AD21C5B389B758FF1B790B9A66DE86C4C95D241F6B53177509E12DEB585336D55B4A36AEF5A425B7BDCD676DBC9B7F4BB9C58328A5367B0CB7CB6F27957810950C39757AA40EAB17C5B07756FE7623ECDF0959AE20F85F72A4D8ADED9A25CD155D84C5E62D49549048119A6BCC90075BEA59CCC802B90CAA79003A7B3A9E05F5F835C81C7B57F4366551CAA0CB3898FBB5801777029AF867F9D17599C7B711FF4A86E802884978E0FE967E4C89EF95725F6A62420608EE5D88702F1F4BC6C3BECB9712E926A41D8184FA4AA7E81E07910F60C92D9DA127BC8E6C607E9FF012B92FAB08A009A47D20EA6A1F9F13B48C5190088C557BF8041BF682E7EFFF0FF3D875B5C2540000, N'6.2.0-61023')
GO
INSERT [dbo].[AracPark] ([Id], [Description], [AracPlakasi], [AracTipId], [AracKapasitesi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'31 YA 556', 1, 4, N'TestUser', N'TestUser', NULL, CAST(N'2020-02-08T18:49:09.4629910' AS DateTime2), CAST(N'2020-02-08T18:49:24.0731646' AS DateTime2), NULL)
GO
INSERT [dbo].[AracPark] ([Id], [Description], [AracPlakasi], [AracTipId], [AracKapasitesi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'31 YB 845', 2, 52, N'TestUser', N'TestUser', NULL, CAST(N'2020-02-08T18:49:43.3326810' AS DateTime2), CAST(N'2020-02-22T23:44:06.8555445' AS DateTime2), NULL)
GO
INSERT [dbo].[AracTanzim] ([Id], [Description], [TourId], [AracParkId], [TourMusteriPaxId], [KoltukNo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, 3, 1, 3, 54, N'TestUser', N'TestUser', NULL, CAST(N'2020-02-08T19:34:11.2122264' AS DateTime2), CAST(N'2020-02-08T19:37:50.2448726' AS DateTime2), NULL)
GO
INSERT [dbo].[AracTanzim] ([Id], [Description], [TourId], [AracParkId], [TourMusteriPaxId], [KoltukNo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, 2, 2, 2, 12, N'TestUser', NULL, NULL, CAST(N'2020-02-08T19:38:19.7119720' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[AracTip] ([Id], [Description], [AracTipAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'Minibus', N'TestUser', NULL, NULL, CAST(N'2020-02-07T13:51:25.8238397' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[AracTip] ([Id], [Description], [AracTipAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'Otobus', N'TestUser', NULL, NULL, CAST(N'2020-02-07T13:51:36.8473140' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'dddd0054-413b-42aa-846f-7786d40a9492', N'admin')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'639f41ff-02cc-4e9c-ac95-267f9183df95', N'muhasebe')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'931f7660-f32f-4bcf-9db6-a0f2a962075c', N'satis')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8235475b-42e5-4c2a-a0cd-7f71cb0ce967', N'639f41ff-02cc-4e9c-ac95-267f9183df95')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'383004ae-f4b0-4088-8ec4-ed2dc3d22adb', N'suzan@bilgeadamtour.com', 0, N'AAwEHue2J6c6zHj/tYAkxlVBn4QpSIHcxyaCoEDGuBIbixDdxQRqusOo4P6INA9JPQ==', N'f0bbc62f-18f0-47b8-9305-111e475e30ab', NULL, 0, 0, NULL, 1, 0, N'suzan@bilgeadamtour.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'53887336-2467-4354-9716-da084834e019', N'ozan@bilgeadamtour.com', 0, N'AOiESBoLK5VetSsXWWnabT4mkyrXRMvwPVqQqGnRdIJpz5QkQUgcc9iv9nzioIEWaA==', N'd00a41aa-0b5d-42f2-8be3-8ed365eae89c', NULL, 0, 0, NULL, 1, 0, N'ozan@bilgeadamtour.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'59ed4a0f-a9ee-4d80-9e3f-6c42684fa95a', N'necati@bilgeadamtour.com', 0, N'AG6pMj5vdmELWBEbJUBdY3eJvd9O1cHJUNaEpx3XI8SrWhan0vlIquepX3EUnJ/0NQ==', N'2ecccb7a-a283-49d7-8ff8-db5f497d0257', NULL, 0, 0, NULL, 1, 0, N'necati@bilgeadamtour.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8235475b-42e5-4c2a-a0cd-7f71cb0ce967', N'mustafa@bilgeadamtour.com', 0, N'AGt+7NafjTJS+Ypg/GJBXYOSlpfb9wEcLbLYz6fj93zMxrMi5bIqEvIsyNjYj36Iag==', N'8af535fa-34cd-4a49-a973-8f910346a425', NULL, 0, 0, NULL, 1, 0, N'mustafa@bilgeadamtour.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8f42fe32-7990-4984-96d7-c20438602b9f', N'rasim@bilgeadamtour.com', 0, N'ACqLjOGPl5vIrCH5E6ttsMh3aO0rLHayfHbl1zxltc3iifnvqIoouubtz01KQCjYLQ==', N'0338b8c0-f1fb-4c3b-a84b-949dbf347c8f', NULL, 0, 0, NULL, 1, 0, N'rasim@bilgeadamtour.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b036827d-875b-4dec-864b-c59d8e94da74', N'nurdan@bilgeadamtour.com', 0, N'AGtg6aawzq28KGmj9O+BO1wZZLgJslNiGnYzF70jyWnKo44U3dJnn5kZe19tj7SnIQ==', N'8bd9c2de-f57a-412d-aac1-f849db26585c', NULL, 0, 0, NULL, 1, 0, N'nurdan@bilgeadamtour.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd0988773-7aae-42ff-8f98-574124c7296d', N'savas.erzin@gmail.com', 0, N'APs2jo5Smgh6RuumlliYE8q+VLYgfxB65mwFFy/eya0y7gs0ZYeDy41/6LfK5r6GZg==', N'c3ff0b55-d4be-4236-b67e-00c19cf61351', NULL, 0, 0, NULL, 1, 0, N'savas.erzin@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd68f786f-fc7f-4215-950a-b939bb7e635c', N'nergiz@bilgeadamtour.com', 0, N'AO1BEDtQYfe4uqiRp0id0wXJrmsvbbpj73OXpw6XbnPBGm5PW/9Jzux6wuZ3erHhnQ==', N'903407e8-22c3-4f19-9fbf-cbf7aaecb110', NULL, 0, 0, NULL, 1, 0, N'nergiz@bilgeadamtour.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e632a4dc-630c-4cae-8aef-5ebfc1f81768', N'celal@bilgeadamtour.com', 0, N'AMs0dOK2LzRRPV7MjZoyNm9AS4VkSc4NK1GfM9a0Xy5uZkadvgJpfPvmiUc7Hyv8rg==', N'827d6272-1c8f-44e4-a0f1-5205832c9d29', NULL, 0, 0, NULL, 1, 0, N'celal@bilgeadamtour.com')
GO
INSERT [dbo].[Bilet] ([Id], [Description], [BiletNo], [BiletTarihi], [SubeId], [TourId], [MusteriId], [ServisIstiyorMu], [Paid], [Total], [CurrencyId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'TX12389', CAST(N'2019-04-25T00:00:00' AS SmallDateTime), 1, 1, 1, 1, NULL, CAST(100.00 AS Numeric(12, 2)), 2, N'', NULL, NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Bilet] ([Id], [Description], [BiletNo], [BiletTarihi], [SubeId], [TourId], [MusteriId], [ServisIstiyorMu], [Paid], [Total], [CurrencyId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'TX124', CAST(N'2019-04-23T00:00:00' AS SmallDateTime), 1, 1, 2, 1, NULL, CAST(100.00 AS Numeric(12, 2)), 2, N'', NULL, NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Bilet] ([Id], [Description], [BiletNo], [BiletTarihi], [SubeId], [TourId], [MusteriId], [ServisIstiyorMu], [Paid], [Total], [CurrencyId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, N'TR158', CAST(N'2019-04-21T00:00:00' AS SmallDateTime), 1, 2, 4, 1, NULL, CAST(80.00 AS Numeric(12, 2)), 1, N'', N'TestUser', NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), CAST(N'2020-02-08T17:46:06.3225934' AS DateTime2), NULL)
GO
INSERT [dbo].[Bilet] ([Id], [Description], [BiletNo], [BiletTarihi], [SubeId], [TourId], [MusteriId], [ServisIstiyorMu], [Paid], [Total], [CurrencyId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (4, NULL, N'TR159', CAST(N'2019-04-24T00:00:00' AS SmallDateTime), 1, 2, 2, 1, NULL, CAST(100.23 AS Numeric(12, 2)), 2, N'', N'TestUser', NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), CAST(N'2020-02-08T17:49:56.3976553' AS DateTime2), NULL)
GO
INSERT [dbo].[Bilet] ([Id], [Description], [BiletNo], [BiletTarihi], [SubeId], [TourId], [MusteriId], [ServisIstiyorMu], [Paid], [Total], [CurrencyId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (5, NULL, N'BX00005', CAST(N'2019-05-20T00:00:00' AS SmallDateTime), 2, 1, 4, 0, CAST(0.00 AS Numeric(12, 2)), CAST(13.00 AS Numeric(12, 2)), 2, N'nurdan@bilgeadamtour.com', N'TestUser', NULL, CAST(N'2019-05-20T02:27:21.5613904' AS DateTime2), CAST(N'2020-02-08T17:34:27.9284230' AS DateTime2), NULL)
GO
INSERT [dbo].[Bilet] ([Id], [Description], [BiletNo], [BiletTarihi], [SubeId], [TourId], [MusteriId], [ServisIstiyorMu], [Paid], [Total], [CurrencyId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (6, NULL, N'7898', CAST(N'2020-02-17T21:00:00' AS SmallDateTime), 3, 1, 3, 0, NULL, NULL, 3, N'TestUser', NULL, NULL, CAST(N'2020-02-08T17:43:40.7730903' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Bolge] ([Id], [Description], [BolgeAdi], [MerkezeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'Goynuk', 10, N'', NULL, NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Bolge] ([Id], [Description], [BolgeAdi], [MerkezeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, N'asdf', N'Beldibi', 15, N'', N'TestUser', NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), CAST(N'2020-02-07T11:38:35.9783258' AS DateTime2), NULL)
GO
INSERT [dbo].[Bolge] ([Id], [Description], [BolgeAdi], [MerkezeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, N'Kiris', 12, N'', NULL, NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Bolge] ([Id], [Description], [BolgeAdi], [MerkezeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (4, NULL, N'Camyuva', 12, N'', NULL, NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Bolge] ([Id], [Description], [BolgeAdi], [MerkezeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (5, NULL, N'Belek', 12, N'', N'', NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), CAST(N'2019-06-19T04:56:01.1793800' AS DateTime2), NULL)
GO
INSERT [dbo].[Bolge] ([Id], [Description], [BolgeAdi], [MerkezeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (6, NULL, N'Tekirova', 12, N'', NULL, NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Currency] ([Id], [Description], [KurAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'Euro', N'', NULL, NULL, CAST(N'2019-04-23T05:20:23.1527117' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Currency] ([Id], [Description], [KurAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'Dolar', N'', NULL, NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Currency] ([Id], [Description], [KurAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, N'Lira', N'', NULL, NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Musteri] ([Id], [Description], [MusteriAdiSoyadi], [UyrukId], [OtelId], [OdaNo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'Elena Bulgakova', 2728, 2, N'203', N'', N'', NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), CAST(N'2019-05-07T21:26:07.2695651' AS DateTime2), NULL)
GO
INSERT [dbo].[Musteri] ([Id], [Description], [MusteriAdiSoyadi], [UyrukId], [OtelId], [OdaNo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'Thomas Switch', 2476, 3, N'158', N'', N'', NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), CAST(N'2019-05-07T21:26:07.2695651' AS DateTime2), NULL)
GO
INSERT [dbo].[Musteri] ([Id], [Description], [MusteriAdiSoyadi], [UyrukId], [OtelId], [OdaNo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, N'Eric From', 1018, 1, N'485', N'', N'TestUser', NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), CAST(N'2020-02-08T15:49:01.5055452' AS DateTime2), NULL)
GO
INSERT [dbo].[Musteri] ([Id], [Description], [MusteriAdiSoyadi], [UyrukId], [OtelId], [OdaNo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (4, NULL, N'tam gorl', 1113, 3, N'12', N'nurdan@bilgeadamtour.com', NULL, NULL, CAST(N'2019-05-20T02:27:21.5613904' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Otel] ([Id], [Description], [OtelAdi], [BolgeId], [BolgeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'Otel Goynuk', 1, 10, N'', NULL, NULL, CAST(N'2019-04-25T15:41:54.4202324' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Otel] ([Id], [Description], [OtelAdi], [BolgeId], [BolgeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'Sevgi Oteli', 1, 12, N'', NULL, NULL, CAST(N'2019-04-25T15:41:54.4202324' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Otel] ([Id], [Description], [OtelAdi], [BolgeId], [BolgeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, N'Otel Susam', 2, 13, N'', NULL, NULL, CAST(N'2019-04-25T15:41:54.4202324' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Otel] ([Id], [Description], [OtelAdi], [BolgeId], [BolgeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (4, NULL, N'Belfast Otel', 4, 14, N'', N'TestUser', NULL, CAST(N'2019-04-25T15:41:54.4202324' AS DateTime2), CAST(N'2020-02-07T16:01:20.8117541' AS DateTime2), NULL)
GO
INSERT [dbo].[Otel] ([Id], [Description], [OtelAdi], [BolgeId], [BolgeUzaklikFaktoru], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (5, N'fdsa', N'fdsa df', 4, 0, N'TestUser', N'TestUser', NULL, CAST(N'2020-02-08T14:43:30.4750668' AS DateTime2), CAST(N'2020-02-08T14:43:41.3083384' AS DateTime2), NULL)
GO
INSERT [dbo].[Pax] ([Id], [Description], [PaxAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'F', N'', NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Pax] ([Id], [Description], [PaxAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'H', N'', N'TestUser', NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), CAST(N'2020-02-07T13:44:40.5647996' AS DateTime2), NULL)
GO
INSERT [dbo].[Pax] ([Id], [Description], [PaxAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, N'G', N'', N'TestUser', NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), CAST(N'2020-02-07T13:45:35.5625004' AS DateTime2), NULL)
GO
INSERT [dbo].[SatisSorumlusu] ([Id], [Description], [AdiSoyadi], [SubeId], [WhoInserted], [WhenDeleted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated]) VALUES (1, NULL, N'suzan@bilgeadamtour.com', 2, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SatisSorumlusu] ([Id], [Description], [AdiSoyadi], [SubeId], [WhoInserted], [WhenDeleted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated]) VALUES (2, NULL, N'ozan@bilgeadamtour.com', 2, N'', NULL, NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL)
GO
INSERT [dbo].[SatisSorumlusu] ([Id], [Description], [AdiSoyadi], [SubeId], [WhoInserted], [WhenDeleted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated]) VALUES (3, NULL, N'mustafa@bilgeadamtour.com', 1, N'', NULL, NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL)
GO
INSERT [dbo].[SatisSorumlusu] ([Id], [Description], [AdiSoyadi], [SubeId], [WhoInserted], [WhenDeleted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated]) VALUES (4, NULL, N'necati@bilgeadamtour.com', 1, N'', NULL, NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL)
GO
INSERT [dbo].[SatisSorumlusu] ([Id], [Description], [AdiSoyadi], [SubeId], [WhoInserted], [WhenDeleted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated]) VALUES (5, NULL, N'rasim@bilgeadamtour.com', 3, N'', NULL, NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL)
GO
INSERT [dbo].[SatisSorumlusu] ([Id], [Description], [AdiSoyadi], [SubeId], [WhoInserted], [WhenDeleted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated]) VALUES (6, NULL, N'nurdan@bilgeadamtour.com', 3, N'', NULL, NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL)
GO
INSERT [dbo].[SatisSorumlusu] ([Id], [Description], [AdiSoyadi], [SubeId], [WhoInserted], [WhenDeleted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated]) VALUES (7, NULL, N'nergiz@bilgeadamtour.com', 4, N'', NULL, NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL)
GO
INSERT [dbo].[SatisSorumlusu] ([Id], [Description], [AdiSoyadi], [SubeId], [WhoInserted], [WhenDeleted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated]) VALUES (8, NULL, N'celal@bilgeadamtour.com', 4, N'', NULL, NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL)
GO
INSERT [dbo].[Sube] ([Id], [Description], [SubeAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'Goynuk', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sube] ([Id], [Description], [SubeAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'Beldibi', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Sube] ([Id], [Description], [SubeAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, N'Kiris', N'', N'TestUser', NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), CAST(N'2020-02-08T16:13:05.9554880' AS DateTime2), NULL)
GO
INSERT [dbo].[Sube] ([Id], [Description], [SubeAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (4, NULL, N'Camyuva', N'', NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Sube] ([Id], [Description], [SubeAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (5, NULL, N'Belek', N'', NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Sube] ([Id], [Description], [SubeAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (6, NULL, N'Tekirova', N'', NULL, NULL, CAST(N'2019-05-17T18:48:18.2953830' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Tour] ([Id], [Description], [Tarih], [TourTipId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, N'Yat Turu (28-04-2019)', CAST(N'2019-04-28T00:00:00' AS SmallDateTime), 1, N'', N'TestUser', NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), CAST(N'2020-02-08T17:21:33.6969270' AS DateTime2), NULL)
GO
INSERT [dbo].[Tour] ([Id], [Description], [Tarih], [TourTipId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, N'Yat Turu (30-04-2019)', CAST(N'2019-04-30T00:00:00' AS SmallDateTime), 1, N'', N'TestUser', NULL, CAST(N'2019-04-25T15:56:50.9235095' AS DateTime2), CAST(N'2020-02-08T17:21:41.5390595' AS DateTime2), NULL)
GO
INSERT [dbo].[Tour] ([Id], [Description], [Tarih], [TourTipId], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, N'Park (28-04-2019)', CAST(N'2020-02-26T21:00:00' AS SmallDateTime), 2, N'TestUser', N'TestUser', NULL, CAST(N'2020-02-08T16:54:03.0243836' AS DateTime2), CAST(N'2020-02-08T17:21:52.0803317' AS DateTime2), NULL)
GO
INSERT [dbo].[TourMusteriPax] ([Id], [Description], [BiletId], [PaxId], [PaxAdedi], [PaxInfo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, N'BX00005 -F', 5, 1, 2, NULL, N'nurdan@bilgeadamtour.com', N'TestUser', NULL, CAST(N'2019-05-20T02:27:21.5613904' AS DateTime2), CAST(N'2020-02-08T19:37:11.6509730' AS DateTime2), NULL)
GO
INSERT [dbo].[TourMusteriPax] ([Id], [Description], [BiletId], [PaxId], [PaxAdedi], [PaxInfo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, N'BX00005 -H', 5, 2, 3, NULL, N'nurdan@bilgeadamtour.com', N'TestUser', NULL, CAST(N'2019-05-20T02:27:21.5613904' AS DateTime2), CAST(N'2020-02-08T19:37:19.8937819' AS DateTime2), NULL)
GO
INSERT [dbo].[TourMusteriPax] ([Id], [Description], [BiletId], [PaxId], [PaxAdedi], [PaxInfo], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, N'TX124 -G', 2, 3, 3, NULL, N'TestUser', N'TestUser', NULL, CAST(N'2020-02-08T19:10:46.6158400' AS DateTime2), CAST(N'2020-02-08T19:37:27.8730548' AS DateTime2), NULL)
GO
INSERT [dbo].[TourTip] ([Id], [Description], [TourAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, N'Yat Turu', N'', N'TestUser', NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), CAST(N'2020-02-06T08:03:02.5201635' AS DateTime2), NULL)
GO
INSERT [dbo].[TourTip] ([Id], [Description], [TourAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, N'Park', N'', N'TestUser', NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), CAST(N'2020-02-06T08:57:26.7941801' AS DateTime2), NULL)
GO
INSERT [dbo].[TourTip] ([Id], [Description], [TourAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, N'Jeep Safari Turu', N'', N'TestUser', NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), CAST(N'2020-02-06T15:58:28.2393378' AS DateTime2), NULL)
GO
INSERT [dbo].[TourTip] ([Id], [Description], [TourAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (4, N'asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf asdf ', N'Hamam Turu', N'', N'TestUser', NULL, CAST(N'2019-04-23T05:37:31.0225025' AS DateTime2), CAST(N'2020-02-07T10:42:29.8756709' AS DateTime2), NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1, NULL, 1, 1, -5399595, N'', N'TestUser', NULL, NULL, CAST(N'2020-02-08T20:23:23.6111702' AS DateTime2), NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2, NULL, 1, 2, 420, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3, NULL, 1, 3, 390, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (4, NULL, 1, 4, 375, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (5, NULL, 1, 5, 360, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (6, NULL, 1, 6, 360, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (7, NULL, 2, 1, 405, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (8, NULL, 2, 2, 420, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (9, NULL, 2, 3, 390, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (10, NULL, 2, 4, 375, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (11, NULL, 2, 5, 360, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (12, NULL, 2, 6, 360, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (13, NULL, 3, 1, 405, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (14, NULL, 3, 2, 420, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (15, NULL, 3, 3, 390, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (16, NULL, 3, 4, 375, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (17, NULL, 3, 5, 360, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (18, NULL, 3, 6, 360, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (19, NULL, 4, 1, 405, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (20, NULL, 4, 2, 420, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (21, NULL, 4, 3, 390, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (22, NULL, 4, 4, 375, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (23, NULL, 4, 5, 360, N'', N'', N'', NULL, NULL, NULL)
GO
INSERT [dbo].[TurBolgeServisSaatleri] ([Id], [Description], [TourTipId], [BolgeId], [ServisSaati], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (24, NULL, 4, 6, 360, N'TestUser', NULL, NULL, CAST(N'2020-02-08T20:13:07.3844427' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1018, NULL, N'AFGANİSTAN', NULL, N'TestUser', NULL, NULL, CAST(N'2020-02-07T12:26:26.5641077' AS DateTime2), NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1021, NULL, N'ARNAVUTLUK', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1033, NULL, N'CEZAİR', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1045, NULL, N'ANGOLA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1057, NULL, N'ARJANTİN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1069, NULL, N'AVUSTURALYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1072, NULL, N'AVUSTURYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1084, NULL, N'BAHAMA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1096, NULL, N'BAHREYİN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1101, NULL, N'BANGLADEŞ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1113, NULL, N'BARBADOS', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1125, NULL, N'BELÇİKA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1137, NULL, N'BENİN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1149, NULL, N'BHUTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1152, NULL, N'BOLİVYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1164, NULL, N'BOSTVANA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1176, NULL, N'BREZİLYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1188, NULL, N'BULGARİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1205, NULL, N'BURİNDİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1229, NULL, N'KANADA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1232, NULL, N'CAPE VERDE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1244, NULL, N'ORTA AFRİKA CUMHURİYETİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1256, NULL, N'ÇAD', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1268, NULL, N'ŞİLİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1271, NULL, N'ÇİN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1283, NULL, N'KOLOMBİYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1295, NULL, N'KOMOR', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1312, NULL, N'KOSTA RİKA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1324, NULL, N'KÜBA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1348, NULL, N'ÇEK CUMHURİYETİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1351, NULL, N'KAMBOÇYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1375, NULL, N'DANİMARKA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1387, NULL, N'CİBUTİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1399, NULL, N'DOMİNİK', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1404, NULL, N'DOMİNİK CUMHURİYETİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1416, NULL, N'EKVADOR', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1428, NULL, N'MISIR', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1431, NULL, N'EL SALVADOR', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1443, NULL, N'EKVATOR GİNESİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1455, NULL, N'ETİYOPYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1467, NULL, N'FİJİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1479, NULL, N'FİNLANDİYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1482, NULL, N'FRANSA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1494, NULL, N'GABON', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1508, NULL, N'GAMBİYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1523, NULL, N'ALMANYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1535, NULL, N'GANA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1547, NULL, N'YUNANİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1559, NULL, N'GRENADA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1562, NULL, N'GUATEMALA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1574, NULL, N'GİNE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1586, NULL, N'GİNE BİSAU', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1603, NULL, N'HAİTİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1615, NULL, N'HONDURAS', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1627, NULL, N'MACARİSTAN', NULL, N'TestUser', NULL, NULL, CAST(N'2020-02-07T12:27:07.5689704' AS DateTime2), NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1639, NULL, N'İZLANDA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1642, NULL, N'HİNDİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1654, NULL, N'ENDONEZYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1666, NULL, N'İRAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1678, NULL, N'IRAK', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1681, NULL, N'İRLANDA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1693, NULL, N'İSRAİL', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1707, NULL, N'İTALYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1719, NULL, N'FİLDİŞİ SAHİLİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1722, NULL, N'JAMEİKA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1734, NULL, N'JAPONYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1746, NULL, N'ÜRDÜN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1758, NULL, N'KENYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1761, NULL, N'KUVEYT', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1773, NULL, N'LAOS', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1785, NULL, N'LÜBNAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1797, NULL, N'LESOTHA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1802, NULL, N'LİBERYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1814, NULL, N'LİBYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1826, NULL, N'LÜKSEMBURK', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1838, NULL, N'MADAGASKAR', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1841, NULL, N'MALAVİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1853, NULL, N'MALEZYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1865, NULL, N'MALDİV', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1877, NULL, N'MALİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1889, NULL, N'MALTA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1892, NULL, N'MORİTANYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1906, NULL, N'MAURITIUS', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1918, NULL, N'MEKSİKA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1921, NULL, N'MOĞOLİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1933, NULL, N'FAS', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1945, NULL, N'MOZAMBİK', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1957, NULL, N'NEPAL', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1969, NULL, N'HOLLANDA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1972, NULL, N'YENİ ZELLANDA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1984, NULL, N'NİKARAGUA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (1996, NULL, N'NİJER', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2003, NULL, N'NİJERYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2027, NULL, N'NORVEÇ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2039, NULL, N'UMMAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2042, NULL, N'PAKİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2054, NULL, N'FİLİSTİN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2066, NULL, N'PANAMA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2078, NULL, N'PAPUA YENİ GİNE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2081, NULL, N'PARAGUAY', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2093, NULL, N'PERU', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2107, NULL, N'FİLİPİNLER', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2119, NULL, N'POLONYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2122, NULL, N'PORTEKİZ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2134, NULL, N'KATAR', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2146, NULL, N'ROMANYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2158, NULL, N'RUANDA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2161, NULL, N'SAINT LUCIA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2173, NULL, N'SAINT-VINCENT AND GRENADINES', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2185, NULL, N'SAMOA ADALARI', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2197, NULL, N'SAO TOME AND PRINCIPE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2202, NULL, N'SUDİ ARABİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2214, NULL, N'SENEGAL', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2226, NULL, N'SEYŞELLER', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2238, NULL, N'SIERRA LEONE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2241, NULL, N'SİNGAPUR', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2253, NULL, N'SOLOMON ADALARI', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2265, NULL, N'SOMALİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2292, NULL, N'İSPANYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2306, NULL, N'SRİ LANKA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2318, NULL, N'SUDAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2321, NULL, N'SURİNAM', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2333, NULL, N'SVEZİLAND', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2345, NULL, N'İSVEÇ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2357, NULL, N'İSVİÇRE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2369, NULL, N'SURİYE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2384, NULL, N'TAYLAND', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2396, NULL, N'TOGO', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2401, NULL, N'TRINIDAD VE TOBAGO', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2413, NULL, N'TUNUS', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2425, NULL, N'TÜRKİYE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2437, NULL, N'UGANDA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2464, NULL, N'BİRLEŞİK ARAP EMİRLİKLERİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2476, NULL, N'BÜYÜK BİRİTANYA VE KUZEY İRLANDA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2488, NULL, N'KAMERUN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2491, NULL, N'TANZANYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2505, NULL, N'AMERİKA BİRLEŞİK DEVLETLERİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2517, NULL, N'BURKİNA FASO', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2529, NULL, N'URUGUAY', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2532, NULL, N'VENEZUELA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2544, NULL, N'VİETNAM', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2556, NULL, N'YEMEN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2568, NULL, N'SIRBİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2571, NULL, N'KONGO DEMOKRATİK CUMHURİYETİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2583, NULL, N'ZAMBİA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2595, NULL, N'ZİMBAVE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2609, NULL, N'ERMENİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2612, NULL, N'AZERBAYCAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2624, NULL, N'BEYAZ RUSYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2636, NULL, N'BOSNA HERSEK', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2648, NULL, N'HIRVATİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2651, NULL, N'GÜRCİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2675, NULL, N'KAZAKİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2687, NULL, N'KIRGIZİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2699, NULL, N'MAKEDONYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2704, NULL, N'MOLDOVA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2728, NULL, N'RUSYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2731, NULL, N'SILOVENYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2743, NULL, N'TACİKİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2755, NULL, N'TÜRKMENİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2767, NULL, N'UKRAYNA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2779, NULL, N'ÖZBEKİSTAN', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2782, NULL, N'SLOVAKYA CUMHURİYETİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2794, NULL, N'ESTONYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2808, NULL, N'KORE DEMOKRAT CUMHURİYETİ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2811, NULL, N'KORE', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2823, NULL, N'LETONYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2835, NULL, N'LİTVANYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2847, NULL, N'GÜNEY AFRİKA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2862, NULL, N'BİRMANYA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (2874, NULL, N'KARADAĞ', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3009, NULL, N'DİĞER ÜLKELER', NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Uyruk] ([Id], [Description], [UyrukAdi], [WhoInserted], [WhoUpdated], [WhoDeleted], [WhenInserted], [WhenUpdated], [WhenDeleted]) VALUES (3024, NULL, N'KOSOVA', NULL, NULL, NULL, NULL, NULL, NULL)
GO
/****** Object:  Index [IX_AracTanzim]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AracTanzim] ON [dbo].[AracTanzim]
(
	[TourId] ASC,
	[TourMusteriPaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AracTip]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AracTip] ON [dbo].[AracTip]
(
	[AracTipAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bilet]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Bilet] ON [dbo].[Bilet]
(
	[TourId] ASC,
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Bolge]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Bolge] ON [dbo].[Bolge]
(
	[BolgeAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Currency]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Currency] ON [dbo].[Currency]
(
	[KurAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Otel]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Otel] ON [dbo].[Otel]
(
	[BolgeId] ASC,
	[OtelAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Pax]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Pax] ON [dbo].[Pax]
(
	[PaxAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SatisSorumlusu]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_SatisSorumlusu] ON [dbo].[SatisSorumlusu]
(
	[AdiSoyadi] ASC,
	[SubeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TourMusteriPax]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TourMusteriPax] ON [dbo].[TourMusteriPax]
(
	[PaxId] ASC,
	[BiletId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TurBolgeServisSaatleri]    Script Date: 2/27/2020 3:15:07 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_TurBolgeServisSaatleri] ON [dbo].[TurBolgeServisSaatleri]
(
	[TourTipId] ASC,
	[BolgeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AracPark]  WITH CHECK ADD  CONSTRAINT [FK_AracPark_AracTip] FOREIGN KEY([AracTipId])
REFERENCES [dbo].[AracTip] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AracPark] CHECK CONSTRAINT [FK_AracPark_AracTip]
GO
ALTER TABLE [dbo].[AracTanzim]  WITH CHECK ADD  CONSTRAINT [FK_AracTanzim_AracPark] FOREIGN KEY([AracParkId])
REFERENCES [dbo].[AracPark] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AracTanzim] CHECK CONSTRAINT [FK_AracTanzim_AracPark]
GO
ALTER TABLE [dbo].[AracTanzim]  WITH CHECK ADD  CONSTRAINT [FK_AracTanzim_Tour] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tour] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[AracTanzim] CHECK CONSTRAINT [FK_AracTanzim_Tour]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Bilet]  WITH CHECK ADD  CONSTRAINT [FK_Bilet_Currency] FOREIGN KEY([CurrencyId])
REFERENCES [dbo].[Currency] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Bilet] CHECK CONSTRAINT [FK_Bilet_Currency]
GO
ALTER TABLE [dbo].[Bilet]  WITH CHECK ADD  CONSTRAINT [FK_Bilet_Musteri] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[Musteri] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Bilet] CHECK CONSTRAINT [FK_Bilet_Musteri]
GO
ALTER TABLE [dbo].[Bilet]  WITH CHECK ADD  CONSTRAINT [FK_Bilet_Sube] FOREIGN KEY([SubeId])
REFERENCES [dbo].[Sube] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Bilet] CHECK CONSTRAINT [FK_Bilet_Sube]
GO
ALTER TABLE [dbo].[Bilet]  WITH CHECK ADD  CONSTRAINT [FK_Bilet_Tour] FOREIGN KEY([TourId])
REFERENCES [dbo].[Tour] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Bilet] CHECK CONSTRAINT [FK_Bilet_Tour]
GO
ALTER TABLE [dbo].[Musteri]  WITH CHECK ADD  CONSTRAINT [FK_Musteri_Otel] FOREIGN KEY([OtelId])
REFERENCES [dbo].[Otel] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Musteri] CHECK CONSTRAINT [FK_Musteri_Otel]
GO
ALTER TABLE [dbo].[Musteri]  WITH CHECK ADD  CONSTRAINT [FK_Musteri_Uyruk] FOREIGN KEY([UyrukId])
REFERENCES [dbo].[Uyruk] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Musteri] CHECK CONSTRAINT [FK_Musteri_Uyruk]
GO
ALTER TABLE [dbo].[Otel]  WITH CHECK ADD  CONSTRAINT [FK_Otel_Bolge] FOREIGN KEY([BolgeId])
REFERENCES [dbo].[Bolge] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Otel] CHECK CONSTRAINT [FK_Otel_Bolge]
GO
ALTER TABLE [dbo].[SatisSorumlusu]  WITH CHECK ADD  CONSTRAINT [FK_SatisSorumlusu_Sube] FOREIGN KEY([SubeId])
REFERENCES [dbo].[Sube] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SatisSorumlusu] CHECK CONSTRAINT [FK_SatisSorumlusu_Sube]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_TourTip] FOREIGN KEY([TourTipId])
REFERENCES [dbo].[TourTip] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_TourTip]
GO
ALTER TABLE [dbo].[TourMusteriPax]  WITH CHECK ADD  CONSTRAINT [FK_TourMusteriPax_Bilet] FOREIGN KEY([BiletId])
REFERENCES [dbo].[Bilet] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TourMusteriPax] CHECK CONSTRAINT [FK_TourMusteriPax_Bilet]
GO
ALTER TABLE [dbo].[TourMusteriPax]  WITH CHECK ADD  CONSTRAINT [FK_TourMusteriPax_Pax] FOREIGN KEY([PaxId])
REFERENCES [dbo].[Pax] ([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TourMusteriPax] CHECK CONSTRAINT [FK_TourMusteriPax_Pax]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AracPark', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Otel"
            Begin Extent = 
               Top = 6
               Left = 1049
               Bottom = 114
               Right = 1224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Bilet"
            Begin Extent = 
               Top = 45
               Left = 456
               Bottom = 342
               Right = 610
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Musteri"
            Begin Extent = 
               Top = 6
               Left = 660
               Bottom = 114
               Right = 822
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Currency"
            Begin Extent = 
               Top = 223
               Left = 753
               Bottom = 331
               Right = 904
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sube"
            Begin Extent = 
               Top = 17
               Left = 241
               Bottom = 125
               Right = 392
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tour"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 262
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TourTip"
            Begin Extent = 
               Top = 203
               Left = 241
               Bottom = 337
               Right = 392
            End
            DisplayFlags = 280
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_BiletSatis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     TopColumn = 0
         End
         Begin Table = "Uyruk"
            Begin Extent = 
               Top = 195
               Left = 1270
               Bottom = 303
               Right = 1421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_BiletSatis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_BiletSatis'
GO
USE [master]
GO
ALTER DATABASE [BilgeAdamTour] SET  READ_WRITE 
GO
