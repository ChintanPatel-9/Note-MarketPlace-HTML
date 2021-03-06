USE [master]
GO
/****** Object:  Database [Notes-Marketplace]    Script Date: 12-Feb-21 10:22:55 AM ******/
CREATE DATABASE [Notes-Marketplace]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Notes-Marketplace', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Notes-Marketplace.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Notes-Marketplace_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Notes-Marketplace_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Notes-Marketplace] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Notes-Marketplace].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Notes-Marketplace] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET ARITHABORT OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Notes-Marketplace] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Notes-Marketplace] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Notes-Marketplace] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Notes-Marketplace] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET RECOVERY FULL 
GO
ALTER DATABASE [Notes-Marketplace] SET  MULTI_USER 
GO
ALTER DATABASE [Notes-Marketplace] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Notes-Marketplace] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Notes-Marketplace] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Notes-Marketplace] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Notes-Marketplace] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Notes-Marketplace] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Notes-Marketplace', N'ON'
GO
ALTER DATABASE [Notes-Marketplace] SET QUERY_STORE = OFF
GO
USE [Notes-Marketplace]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 12-Feb-21 10:22:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CountryCode] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IsActive] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Downloads]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Downloads](
	[ID] [int] NOT NULL,
	[NoteID] [int] NOT NULL,
	[Seller] [varchar](50) NOT NULL,
	[Downloader] [varchar](50) NOT NULL,
	[IsSellerHasAllowedDownload] [varchar](50) NULL,
	[AttachmentPath] [varchar](50) NOT NULL,
	[IsAttachmentDownloaded] [varchar](50) NULL,
	[AttachmentDownloadedDate] [date] NOT NULL,
	[IsPaid] [varchar](50) NOT NULL,
	[PurchasedPrice] [int] NOT NULL,
	[NoteTitle] [varchar](50) NOT NULL,
	[NoteCategory] [varchar](50) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoteCategories]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteCategories](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IsActive] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NoteTypes]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NoteTypes](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IsActive] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RefrenceData]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefrenceData](
	[ID] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[DataValue] [int] NOT NULL,
	[RefCategory] [varchar](50) NOT NULL,
	[CreratedDate] [date] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IsActive] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellerNotes]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerNotes](
	[ID] [int] NULL,
	[SellerID] [int] NULL,
	[Status] [varchar](50) NULL,
	[ActionedBy] [varchar](50) NULL,
	[AdminRemarks] [varchar](50) NULL,
	[PublishedDate] [datetime] NULL,
	[Title] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[DisplayPicture] [varchar](50) NULL,
	[NoteType] [varchar](50) NULL,
	[NumberofPages] [int] NULL,
	[Description] [text] NULL,
	[UniversityName] [text] NULL,
	[Country] [varchar](50) NULL,
	[Course] [varchar](50) NULL,
	[CourseCode] [varchar](50) NULL,
	[Professor] [varchar](50) NULL,
	[IsPaid] [varchar](50) NULL,
	[SellingPrice] [int] NULL,
	[NotesPreview] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IsActive] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellerNotesAttachements]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerNotesAttachements](
	[ID] [int] NOT NULL,
	[NoteID] [int] NOT NULL,
	[FileName] [varchar](50) NOT NULL,
	[FilePath] [varchar](50) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[IsActive] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellerNotesReportedIssues]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerNotesReportedIssues](
	[ID] [int] NOT NULL,
	[NoteID] [int] NOT NULL,
	[ReportedByID] [int] NOT NULL,
	[AgainstDownloadID] [int] NOT NULL,
	[Remarks] [varchar](50) NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SellerNotesReviews]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SellerNotesReviews](
	[ID] [int] NOT NULL,
	[NoteID] [int] NOT NULL,
	[ReviewedByID] [int] NOT NULL,
	[AgainstDownloadsID] [int] NOT NULL,
	[Ratings] [int] NOT NULL,
	[Comments] [varchar](50) NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedDate] [date] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[IsActive] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfigurations]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfigurations](
	[ID] [int] NOT NULL,
	[Key] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[Modifieddate] [date] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[IsActive] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[ID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[DOB] [datetime] NOT NULL,
	[Gender] [ntext] NOT NULL,
	[SecondaryEmailAddress] [varchar](50) NULL,
	[CountryCode] [int] NOT NULL,
	[PhoneNumber] [int] NOT NULL,
	[ProfilePicture] [varchar](50) NULL,
	[AddressLine1] [varchar](50) NOT NULL,
	[AddressLine2] [varchar](50) NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[ZipCode] [int] NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[University] [varchar](50) NULL,
	[Collage] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [ntext] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [text] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12-Feb-21 10:22:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[EmailID] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[IsEmailVerified] [bit] NOT NULL,
	[CreatedDate] [smalldatetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [smalldatetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Countries] ([ID], [Name], [CountryCode], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Chintu', 91, CAST(N'1999-04-12' AS Date), N'Chintu', NULL, N'Chintu', N'Yes')
GO
INSERT [dbo].[Downloads] ([ID], [NoteID], [Seller], [Downloader], [IsSellerHasAllowedDownload], [AttachmentPath], [IsAttachmentDownloaded], [AttachmentDownloadedDate], [IsPaid], [PurchasedPrice], [NoteTitle], [NoteCategory], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, 111, N'Chintu', N'DBO', N'Yes', N'www.google.com', N'Yes', CAST(N'2020-01-12' AS Date), N'Yes', 12, N'Hello,Guys', N'Funny', CAST(N'2020-03-13' AS Date), N'Chintu', CAST(N'2020-03-28' AS Date), N'DBO')
GO
INSERT [dbo].[NoteCategories] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Chintu', NULL, CAST(N'2020-12-12' AS Date), N'ads', CAST(N'2020-12-12' AS Date), N'djs', N'Yes')
GO
INSERT [dbo].[NoteTypes] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Chintu', NULL, CAST(N'2020-12-12' AS Date), N'DBO', CAST(N'2020-12-12' AS Date), N'Chintu', N'Yes')
GO
INSERT [dbo].[RefrenceData] ([ID], [Value], [DataValue], [RefCategory], [CreratedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 11, 111, N'Funny', CAST(N'2002-11-22' AS Date), N'Chintu', CAST(N'2020-12-12' AS Date), N'DO', N'Yes')
GO
INSERT [dbo].[SellerNotes] ([ID], [SellerID], [Status], [ActionedBy], [AdminRemarks], [PublishedDate], [Title], [Category], [DisplayPicture], [NoteType], [NumberofPages], [Description], [UniversityName], [Country], [Course], [CourseCode], [Professor], [IsPaid], [SellingPrice], [NotesPreview], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 111, N'Active', N'DBO', NULL, CAST(N'2020-02-22T00:00:00.000' AS DateTime), N'Hello,Guys', N'Funny', NULL, N'Story', 100, NULL, N'Charusat', N'india', N'Social', N'12', N'Jadav', N'Yes', 122, NULL, CAST(N'2020-12-12T00:00:00.000' AS DateTime), N'Me', CAST(N'2020-12-01T00:00:00.000' AS DateTime), N'DBO', N'Yes')
GO
INSERT [dbo].[SellerNotesAttachements] ([ID], [NoteID], [FileName], [FilePath], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 111, N'Hello,Guys', N'www.google.com', CAST(N'2020-02-12' AS Date), N'Chintu', CAST(N'2020-12-12' AS Date), N'DBO', N'Yes')
GO
INSERT [dbo].[SellerNotesReportedIssues] ([ID], [NoteID], [ReportedByID], [AgainstDownloadID], [Remarks], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, 111, 111, 1111, N'null', CAST(N'2020-12-11' AS Date), N'me', CAST(N'2020-12-12' AS Date), N'mgg')
GO
INSERT [dbo].[Users] ([ID], [RoleID], [FirstName], [LastName], [EmailID], [Password], [IsEmailVerified], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 11, N'Chintan', N'Patel', N'abc@gmail.com', N'abc', 1, CAST(N'2020-12-12T00:00:00' AS SmallDateTime), 11, CAST(N'2020-12-21T00:00:00' AS SmallDateTime), 22, 1)
GO
USE [master]
GO
ALTER DATABASE [Notes-Marketplace] SET  READ_WRITE 
GO
