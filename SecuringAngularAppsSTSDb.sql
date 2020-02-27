USE [master]
GO
/****** Object:  Database [SecuringAngularAppsSTS]    Script Date: 2/27/2020 3:16:29 PM ******/
CREATE DATABASE [SecuringAngularAppsSTS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SecuringAngularAppsSTS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SecuringAngularAppsSTS.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SecuringAngularAppsSTS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\SecuringAngularAppsSTS.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SecuringAngularAppsSTS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET ARITHABORT OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET  MULTI_USER 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SecuringAngularAppsSTS', N'ON'
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET QUERY_STORE = OFF
GO
USE [SecuringAngularAppsSTS]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/27/2020 3:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/27/2020 3:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/27/2020 3:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/27/2020 3:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/27/2020 3:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/27/2020 3:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/27/2020 3:16:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'11d021c8-1453-43d5-a07f-636fcedc6d4b', 0, N'0b9afb62-8878-4efc-ac7a-a91c026098ff', N'test@test.com', 0, 1, NULL, N'TEST@TEST.COM', N'TEST@TEST.COM', N'AQAAAAEAACcQAAAAEJ5mMeA1A08GCUgEv6R+V4gF/oefKSTZoXESYXxE8SYvxNiyLcO879CEZukzBFIX7g==', NULL, 0, N'THGUDJXWCM7RG65LCFH5XEFVYNQHIQRJ', 0, N'test@test.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'151dba72-2400-43d6-9e33-cadbb71b865b', 0, N'f1ea7244-12e2-4bf4-9d38-d774ec372d4b', N'admin@globomantics.com', 0, 1, NULL, N'ADMIN@GLOBOMANTICS.COM', N'ADMIN@GLOBOMANTICS.COM', N'AQAAAAEAACcQAAAAEAWo+w0qL0HHckivKJpHxBLo93wcLlDPa2T+CPtDykGCqKmuM2HAREDMWe4cTPLRmA==', NULL, 0, N'9ea80b23-9b95-4f25-b932-38cf1a713a1c', 0, N'admin@globomantics.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'34a2101b-3f25-4a2d-87d2-ca7adb3feb11', 0, N'0b4c0f5c-c249-4aa8-a76f-7242be970b98', N'bob@globomatics.com', 0, 1, NULL, N'BOB@GLOBOMATICS.COM', N'BOB@GLOBOMATICS.COM', N'AQAAAAEAACcQAAAAEAWo+w0qL0HHckivKJpHxBLo93wcLlDPa2T+CPtDykGCqKmuM2HAREDMWe4cTPLRmA==', NULL, 0, N'd6ec7b4a-ce49-4376-8721-989c97776e78', 0, N'bob@globomatics.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'510df9ac-baca-43b6-9e4a-cdda5f419428', 0, N'0270592c-5b93-4cbd-9050-722e3bc9250d', N'alice@globomantics.com', 0, 1, NULL, N'ALICE@GLOBOMANTICS.COM', N'ALICE@GLOBOMANTICS.COM', N'AQAAAAEAACcQAAAAEAWo+w0qL0HHckivKJpHxBLo93wcLlDPa2T+CPtDykGCqKmuM2HAREDMWe4cTPLRmA==', NULL, 0, N'103eaa35-a3cb-41e9-9b70-bcea02691bc9', 0, N'alice@globomantics.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'91dd93b1-403c-4913-b7fe-917bb0c35996', 0, N'd7c42f8d-477d-49fe-ae4f-7b4301985acd', N'mary@globomatics.com', 0, 1, NULL, N'MARY@GLOBOMATICS.COM', N'MARY@GLOBOMATICS.COM', N'AQAAAAEAACcQAAAAEAWo+w0qL0HHckivKJpHxBLo93wcLlDPa2T+CPtDykGCqKmuM2HAREDMWe4cTPLRmA==', NULL, 0, N'a95f50c2-7c3b-499e-ac70-13b3849b0e8f', 0, N'mary@globomatics.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'c8cc169a-2f73-4a93-875b-9b0a6bdfd438', 0, N'a25f4f1e-c6a5-4bb7-b98f-aff45d109f5b', N'savas@savas.com', 0, 1, NULL, N'SAVAS@SAVAS.COM', N'SAVAS@SAVAS.COM', N'AQAAAAEAACcQAAAAEAWo+w0qL0HHckivKJpHxBLo93wcLlDPa2T+CPtDykGCqKmuM2HAREDMWe4cTPLRmA==', NULL, 0, N'9e54385d-615d-439c-95c8-7bbda354db6f', 0, N'savas@savas.com')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2/27/2020 3:16:29 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2/27/2020 3:16:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2/27/2020 3:16:29 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2/27/2020 3:16:29 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2/27/2020 3:16:29 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2/27/2020 3:16:29 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2/27/2020 3:16:29 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [SecuringAngularAppsSTS] SET  READ_WRITE 
GO
