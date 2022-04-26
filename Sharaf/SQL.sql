USE [master]
GO
/****** Object:  Database [StudentArchiveDB]    Script Date: 4/26/2022 10:35:01 PM ******/
CREATE DATABASE [StudentArchiveDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'StudentArchiveDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\StudentArchiveDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'StudentArchiveDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\StudentArchiveDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [StudentArchiveDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [StudentArchiveDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [StudentArchiveDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [StudentArchiveDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [StudentArchiveDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [StudentArchiveDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [StudentArchiveDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET RECOVERY FULL 
GO
ALTER DATABASE [StudentArchiveDB] SET  MULTI_USER 
GO
ALTER DATABASE [StudentArchiveDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [StudentArchiveDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [StudentArchiveDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [StudentArchiveDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [StudentArchiveDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [StudentArchiveDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'StudentArchiveDB', N'ON'
GO
ALTER DATABASE [StudentArchiveDB] SET QUERY_STORE = OFF
GO
USE [StudentArchiveDB]
GO
/****** Object:  UserDefinedTableType [dbo].[IDList]    Script Date: 4/26/2022 10:35:01 PM ******/
CREATE TYPE [dbo].[IDList] AS TABLE(
	[ID] [uniqueidentifier] NULL
)
GO
/****** Object:  Table [dbo].[AcademicDegrees]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademicDegrees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Data] [nvarchar](100) NULL,
 CONSTRAINT [PK_AcademicDegrees] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specializations]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specializations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Data] [nvarchar](100) NULL,
 CONSTRAINT [PK_Specializations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Data] [nvarchar](100) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentArchive]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentArchive](
	[StudentID] [uniqueidentifier] NOT NULL,
	[NameArabic] [nvarchar](100) NULL,
	[NameEnglish] [varchar](100) NULL,
	[IsForeigner] [bit] NULL,
	[Nationality] [nvarchar](50) NULL,
	[NID] [char](14) NULL,
	[Passport] [varchar](50) NULL,
	[Birthday] [datetime2](0) NULL,
	[PlaceOfBirth] [nvarchar](50) NULL,
	[Sex] [bit] NULL,
	[PlaceOfResidence] [nvarchar](50) NULL,
	[Job] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[LastQualification] [nvarchar](50) NULL,
	[Collage] [nvarchar](50) NULL,
	[University] [nvarchar](50) NULL,
	[Grade] [nvarchar](50) NULL,
	[ApplyAcademicDegree] [int] NULL,
	[ApplySpecialization] [int] NULL,
	[ApplyDate] [datetime2](7) NULL,
	[ApplyStatus] [int] NULL,
	[StudentImg] [varchar](max) NULL,
	[StudentQualImg] [varchar](max) NULL,
	[StudentSSNImg] [varchar](max) NULL,
	[StudentBirthCertImg] [varchar](max) NULL,
 CONSTRAINT [PK_StudentArchive] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[StudentArchive] ([StudentID], [NameArabic], [NameEnglish], [IsForeigner], [Nationality], [NID], [Passport], [Birthday], [PlaceOfBirth], [Sex], [PlaceOfResidence], [Job], [Company], [Phone], [Email], [LastQualification], [Collage], [University], [Grade], [ApplyAcademicDegree], [ApplySpecialization], [ApplyDate], [ApplyStatus], [StudentImg], [StudentQualImg], [StudentSSNImg], [StudentBirthCertImg]) VALUES (N'52a4f08d-3576-4596-b42b-35202054a6a4', NULL, NULL, 0, NULL, N'Guid.Empty    ', NULL, CAST(N'2022-04-26T11:45:48.0000000' AS DateTime2), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, CAST(N'2022-04-26T11:45:48.8966667' AS DateTime2), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StudentArchive] ([StudentID], [NameArabic], [NameEnglish], [IsForeigner], [Nationality], [NID], [Passport], [Birthday], [PlaceOfBirth], [Sex], [PlaceOfResidence], [Job], [Company], [Phone], [Email], [LastQualification], [Collage], [University], [Grade], [ApplyAcademicDegree], [ApplySpecialization], [ApplyDate], [ApplyStatus], [StudentImg], [StudentQualImg], [StudentSSNImg], [StudentBirthCertImg]) VALUES (N'31ef7b54-77eb-42ef-b1ca-45a0f1bd2a13', NULL, NULL, 0, NULL, N'Guid.Empty    ', NULL, CAST(N'2022-04-26T11:46:06.0000000' AS DateTime2), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, CAST(N'2022-04-26T11:46:05.8466667' AS DateTime2), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StudentArchive] ([StudentID], [NameArabic], [NameEnglish], [IsForeigner], [Nationality], [NID], [Passport], [Birthday], [PlaceOfBirth], [Sex], [PlaceOfResidence], [Job], [Company], [Phone], [Email], [LastQualification], [Collage], [University], [Grade], [ApplyAcademicDegree], [ApplySpecialization], [ApplyDate], [ApplyStatus], [StudentImg], [StudentQualImg], [StudentSSNImg], [StudentBirthCertImg]) VALUES (N'b73492d5-b278-4ebb-abbf-7bc6ed49b1a8', NULL, NULL, 0, NULL, N'Guid.Empty    ', NULL, CAST(N'2022-04-26T11:45:56.0000000' AS DateTime2), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, CAST(N'2022-04-26T11:45:56.0300000' AS DateTime2), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StudentArchive] ([StudentID], [NameArabic], [NameEnglish], [IsForeigner], [Nationality], [NID], [Passport], [Birthday], [PlaceOfBirth], [Sex], [PlaceOfResidence], [Job], [Company], [Phone], [Email], [LastQualification], [Collage], [University], [Grade], [ApplyAcademicDegree], [ApplySpecialization], [ApplyDate], [ApplyStatus], [StudentImg], [StudentQualImg], [StudentSSNImg], [StudentBirthCertImg]) VALUES (N'7f604897-2214-4d89-abb6-8d8d2be193e3', NULL, NULL, 0, NULL, N'Guid.Empty    ', NULL, CAST(N'2022-04-26T11:46:08.0000000' AS DateTime2), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, CAST(N'2022-04-26T11:46:07.5300000' AS DateTime2), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StudentArchive] ([StudentID], [NameArabic], [NameEnglish], [IsForeigner], [Nationality], [NID], [Passport], [Birthday], [PlaceOfBirth], [Sex], [PlaceOfResidence], [Job], [Company], [Phone], [Email], [LastQualification], [Collage], [University], [Grade], [ApplyAcademicDegree], [ApplySpecialization], [ApplyDate], [ApplyStatus], [StudentImg], [StudentQualImg], [StudentSSNImg], [StudentBirthCertImg]) VALUES (N'a0f137b4-b9a3-4c3b-9177-9b7fdac52a2a', NULL, NULL, 0, NULL, N'Guid.Empty    ', NULL, CAST(N'2022-04-26T11:46:08.0000000' AS DateTime2), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, CAST(N'2022-04-26T11:46:07.8133333' AS DateTime2), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StudentArchive] ([StudentID], [NameArabic], [NameEnglish], [IsForeigner], [Nationality], [NID], [Passport], [Birthday], [PlaceOfBirth], [Sex], [PlaceOfResidence], [Job], [Company], [Phone], [Email], [LastQualification], [Collage], [University], [Grade], [ApplyAcademicDegree], [ApplySpecialization], [ApplyDate], [ApplyStatus], [StudentImg], [StudentQualImg], [StudentSSNImg], [StudentBirthCertImg]) VALUES (N'e35ece68-2184-4caf-8f69-bfe814ef19d0', NULL, NULL, 0, NULL, N'Guid.Empty    ', NULL, CAST(N'2022-04-26T11:46:08.0000000' AS DateTime2), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, CAST(N'2022-04-26T11:46:07.6633333' AS DateTime2), 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[StudentArchive] ([StudentID], [NameArabic], [NameEnglish], [IsForeigner], [Nationality], [NID], [Passport], [Birthday], [PlaceOfBirth], [Sex], [PlaceOfResidence], [Job], [Company], [Phone], [Email], [LastQualification], [Collage], [University], [Grade], [ApplyAcademicDegree], [ApplySpecialization], [ApplyDate], [ApplyStatus], [StudentImg], [StudentQualImg], [StudentSSNImg], [StudentBirthCertImg]) VALUES (N'986b75d8-3b08-4878-b46a-c631f0fc2af4', NULL, NULL, 0, NULL, N'Guid.Empty    ', NULL, CAST(N'2022-04-26T11:46:08.0000000' AS DateTime2), NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, CAST(N'2022-04-26T11:46:07.9500000' AS DateTime2), 0, NULL, NULL, NULL, NULL)
GO
ALTER TABLE [dbo].[StudentArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentArchive_AcademicDegrees] FOREIGN KEY([ApplyAcademicDegree])
REFERENCES [dbo].[AcademicDegrees] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[StudentArchive] NOCHECK CONSTRAINT [FK_StudentArchive_AcademicDegrees]
GO
ALTER TABLE [dbo].[StudentArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentArchive_Specializations] FOREIGN KEY([ApplySpecialization])
REFERENCES [dbo].[Specializations] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[StudentArchive] NOCHECK CONSTRAINT [FK_StudentArchive_Specializations]
GO
ALTER TABLE [dbo].[StudentArchive]  WITH NOCHECK ADD  CONSTRAINT [FK_StudentArchive_Status] FOREIGN KEY([ApplyStatus])
REFERENCES [dbo].[Status] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[StudentArchive] NOCHECK CONSTRAINT [FK_StudentArchive_Status]
GO
/****** Object:  StoredProcedure [dbo].[AcceptStudent]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[AcceptStudent]
 @StudentID uniqueidentifier
 AS
BEGIN

update   [dbo].[StudentArchive]

set 
[ApplyStatus]=         1

		   where            [StudentID] =  @StudentID 

END
GO
/****** Object:  StoredProcedure [dbo].[AcceptStudentList]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AcceptStudentList]
 @StudentList varchar(max)
 AS
BEGIN

update   [dbo].[StudentArchive]
set 
[ApplyStatus]=  1
		   where     [StudentID] in (select  CAST(value as uniqueidentifier) from STRING_SPLIT(@StudentList, ','));


END
GO
/****** Object:  StoredProcedure [dbo].[CreateStudent]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateStudent]
 @StudentID uniqueidentifier
           ,@NameArabic  nvarchar(100)
           ,@NameEnglish   varchar(100)
           ,@IsForeigner bit
           ,@Nationality nvarchar(50)
           ,@NID char(14)
           ,@Passport varchar(50) 
           ,@Birthday  datetime2(0)
           ,@PlaceOfBirth  nvarchar(50)
           ,@Sex bit
           ,@PlaceOfResidence nvarchar(50)
           ,@Job nvarchar(50)
           ,@Company  nvarchar(50)
           ,@Phone varchar(15)
           ,@Email varchar(100)
           ,@LastQualification nvarchar(50)
           ,@Collage  nvarchar(50)
           ,@University nvarchar(50)
           ,@Grade nvarchar(50)
           ,@ApplyAcademicDegree int
           ,@ApplySpecialization int
           ,@ApplyDate datetime2(0)
           ,@ApplyStatus int
           ,@StudentImg  varchar(max)
           ,@StudentQualImg  varchar(max)
           ,@StudentSSNImg  varchar(max) 
           ,@StudentBirthCertImg  varchar(max)
		   		   , @IsUpdate bit

 AS
BEGIN

INSERT INTO [dbo].[StudentArchive]
           (StudentID,[NameArabic]
           ,[NameEnglish]
           ,[IsForeigner]
           ,[Nationality]
           ,[NID]
           ,[Passport]
           ,[Birthday]
           ,[PlaceOfBirth]
           ,[Sex]
           ,[PlaceOfResidence]
           ,[Job]
           ,[Company]
           ,[Phone]
           ,[Email]
           ,[LastQualification]
           ,[Collage]
           ,[University]
           ,[Grade]
           ,[ApplyAcademicDegree]
           ,[ApplySpecialization]
           ,[ApplyDate]
           ,[ApplyStatus]
           ,[StudentImg]
           ,[StudentQualImg]
           ,[StudentSSNImg]
           ,[StudentBirthCertImg])
     VALUES
           (@StudentID,@NameArabic
           ,@NameEnglish
           ,@IsForeigner
           ,@Nationality
           ,@NID
           ,@Passport
           ,@Birthday
           ,@PlaceOfBirth
           ,@Sex
           ,@PlaceOfResidence
           ,@Job
           ,@Company
           ,@Phone
           ,@Email
           ,@LastQualification
           ,@Collage
           ,@University
           ,@Grade
           ,@ApplyAcademicDegree
           ,@ApplySpecialization
           ,GETDATE()
           ,@ApplyStatus
           ,@StudentImg
           ,@StudentQualImg
           ,@StudentSSNImg
           ,@StudentBirthCertImg)
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteData]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[DeleteData]
 @TableName nvarchar(50),
 @ID int 
AS
BEGIN
DECLARE @SQL nvarchar(500);
SET @SQL = N'Delete ' +  QuoteName(@TableName) +N' Where ID = '+ @ID;
EXEC ( @SQL)
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteStudent]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[DeleteStudent]
 @StudentID uniqueidentifier
  AS
BEGIN
delete [dbo].[StudentArchive]
 
		   where            [StudentID] =  @StudentID 

END
GO
/****** Object:  StoredProcedure [dbo].[GetAcceptedStudents]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[GetAcceptedStudents]
 AS
BEGIN
select * from  StudentArchive where ApplyStatus = 1
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudents]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetAllStudents]
AS
BEGIN
select * from  StudentArchive 
END

GO
/****** Object:  StoredProcedure [dbo].[GetPendingStudents]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPendingStudents]
 AS
BEGIN
select * from  StudentArchive where ApplyStatus = 3
END


GO
/****** Object:  StoredProcedure [dbo].[GetRejectedStudents]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRejectedStudents]
AS
BEGIN
select * from  StudentArchive where ApplyStatus = 2
END
GO
/****** Object:  StoredProcedure [dbo].[GetStudent]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetStudent]
 @StudentID uniqueidentifier   
AS
BEGIN
select * from  StudentArchive where StudentID = @StudentID
END

GO
/****** Object:  StoredProcedure [dbo].[GetTableNames]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetTableNames]
as
SELECT name
FROM sys.Tables
where name not in ('sysdiagrams','studentArchive')
GO
/****** Object:  StoredProcedure [dbo].[InsertData]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[InsertData]
 @TableName nvarchar(50),
 @Data nvarchar(500)
AS
BEGIN
DECLARE @SQL nvarchar(500);
SET @SQL = N'Insert ' +  QuoteName(@TableName) + N' ([Data]) Values (N'+ QuoteName(@Data,'''')+')';
EXEC ( @SQL)
END
GO
/****** Object:  StoredProcedure [dbo].[PendingStudent]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[PendingStudent]
 @StudentID uniqueidentifier
 AS
BEGIN

update   [dbo].[StudentArchive]

set 
[ApplyStatus]=         3

		   where            [StudentID] =  @StudentID 

END
GO
/****** Object:  StoredProcedure [dbo].[PendingStudentList]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PendingStudentList]
 @StudentList varchar(max)
 AS
BEGIN

update   [dbo].[StudentArchive]

set 
[ApplyStatus]=         3

	   where     [StudentID] in (select  CAST(value as uniqueidentifier) from STRING_SPLIT(@StudentList, ','));

END
GO
/****** Object:  StoredProcedure [dbo].[RejectStudent]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RejectStudent]
 @StudentID uniqueidentifier
 AS
BEGIN

update   [dbo].[StudentArchive]

set 
[ApplyStatus]=         2

		   where            [StudentID] =  @StudentID 

END
GO
/****** Object:  StoredProcedure [dbo].[RejectStudentList]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RejectStudentList]
 @StudentList varchar(max)
 AS
BEGIN

update   [dbo].[StudentArchive]

set 
[ApplyStatus]=         2

	   where     [StudentID] in (select  CAST(value as uniqueidentifier) from STRING_SPLIT(@StudentList, ','));

END
GO
/****** Object:  StoredProcedure [dbo].[SelectData]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectData]
 @TableName nvarchar(50)
AS
BEGIN
DECLARE @SQL nvarchar(500);
SET @SQL = N'Select * From ' +  QuoteName(@TableName) +'';
EXEC ( @SQL)
END
GO
/****** Object:  StoredProcedure [dbo].[SelectDataByID]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SelectDataByID]
 @TableName nvarchar(50),
 @ID int 
AS
BEGIN
DECLARE @SQL nvarchar(500);
SET @SQL = N'Select * From ' +  QuoteName(@TableName) +N' Where ID = '+ @ID;
EXEC ( @SQL)
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateData]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[UpdateData]
 @TableName nvarchar(50),
 @Data nvarchar(100),
 @ID int 
AS
BEGIN
DECLARE @SQL nvarchar(500);
SET @SQL = N'Update ' +  QuoteName(@TableName) + N'  set [Data] = N'+ QuoteName(@Data,'''')+' where id = ' + @ID;
EXEC ( @SQL)
END


GO
/****** Object:  StoredProcedure [dbo].[UpdateStudent]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateStudent]
 @StudentID uniqueidentifier
           ,@NameArabic  nvarchar(100)
           ,@NameEnglish   varbinary(100)
           ,@IsForeigner bit
           ,@Nationality nvarchar(50)
           ,@NID char(14)
           ,@Passport varbinary(50) 
           ,@Birthday  datetime2(0)
           ,@PlaceOfBirth  nvarchar(50)
           ,@Sex bit
           ,@PlaceOfResidence nvarchar(50)
           ,@Job nvarchar(50)
           ,@Company  nvarchar(50)
           ,@Phone varchar(15)
           ,@Email varchar(100)
           ,@LastQualification nvarchar(50)
           ,@Collage  nvarchar(50)
           ,@University nvarchar(50)
           ,@Grade nvarchar(50)
           ,@ApplyAcademicDegree int
           ,@ApplySpecialization int
           ,@ApplyDate datetime2(0)
           ,@ApplyStatus int
           ,@StudentImg  varchar(max)
           ,@StudentQualImg  varchar(max)
           ,@StudentSSNImg  varchar(max) 
           ,@StudentBirthCertImg  varchar(max)
		   , @IsUpdate bit
 AS
BEGIN

update   [dbo].[StudentArchive]

set 
[NameArabic] = @NameArabic
           ,[NameEnglish]=           @NameEnglish

           ,[IsForeigner]=           @IsForeigner

           ,[Nationality]=           @Nationality

           ,[NID]=           @NID

           ,[Passport]=           @Passport

           ,[Birthday]=           @Birthday

           ,[PlaceOfBirth]=           @PlaceOfBirth

           ,[Sex]=           @Sex

           ,[PlaceOfResidence]=           @PlaceOfResidence

           ,[Job]=           @Job

           ,[Company]=           @Company

           ,[Phone]=           @Phone

           ,[Email]=           @Email

           ,[LastQualification]=           @LastQualification

           ,[Collage]=           @Collage

           ,[University]=           @University

           ,[Grade]=           @Grade

           ,[ApplyAcademicDegree]=           @ApplyAcademicDegree

           ,[ApplySpecialization]=           @ApplySpecialization

           ,[ApplyDate]=           @ApplyDate

           ,[ApplyStatus]=           @ApplyStatus

           ,[StudentImg]=           @StudentImg

           ,[StudentQualImg]=           @StudentQualImg

           ,[StudentSSNImg]=           @StudentSSNImg

           ,[StudentBirthCertImg]=           @StudentBirthCertImg
		   where            [StudentID] =  @StudentID 

END
GO
/****** Object:  StoredProcedure [dbo].[UpdateStudentStatus]    Script Date: 4/26/2022 10:35:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateStudentStatus]
 @StudentID uniqueidentifier
,@ApplyStatus int

 AS
BEGIN

update   [dbo].[StudentArchive]

set 
[ApplyStatus]=           @ApplyStatus

		   where            [StudentID] =  @StudentID 

END
GO
USE [master]
GO
ALTER DATABASE [StudentArchiveDB] SET  READ_WRITE 
GO
