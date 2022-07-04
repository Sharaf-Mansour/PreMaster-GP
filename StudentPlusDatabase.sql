USE [master]
GO
/****** Object:  Database [StudentPlusDB]    Script Date: 7/4/2022 8:49:17 PM ******/
CREATE DATABASE [StudentPlusDB]
GO
USE [StudentPlusDB]
GO
/****** Object:  UserDefinedFunction [dbo].[PassDec]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[PassDec]
(
	@password   varbinary(max)
)
returns varchar(50)
as 
BEGIN
 return    CONVERT(VARCHAR(50), DECRYPTBYPASSPHRASE(N'StudentPlus', @password ))    
 end
 
 
GO
/****** Object:  UserDefinedFunction [dbo].[PassEnc]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[PassEnc]
(
	@password varchar(50)
)
returns varbinary(max)
as 
BEGIN
 return    EncryptByPassPhrase(N'StudentPlus', @password )    
 end
 
 
GO
/****** Object:  Table [dbo].[AdminAccount]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminAccount](
	[ID] [uniqueidentifier] NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varbinary](max) NULL,
	[Role] [tinyint] NULL,
 CONSTRAINT [PK_AdminAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nationality]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nationality](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Nationality] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentsAccount]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentsAccount](
	[ID] [int] NOT NULL,
	[ApplyYear] [char](4) NOT NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varbinary](max) NULL,
	[ProfilePicture] [varchar](max) NULL,
	[FullNameEN] [varchar](100) NULL,
	[FullNameArabic] [nchar](10) NULL,
	[Gender] [bit] NULL,
	[Country] [tinyint] NULL,
	[City] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[ZipCode] [varbinary](10) NULL,
	[Nationality] [tinyint] NULL,
	[NID] [varchar](50) NULL,
	[Passport] [varchar](50) NULL,
	[Birthday] [date] NULL,
	[PassportImg] [varchar](max) NULL,
	[NIDImage] [varchar](max) NULL,
	[BCImg] [varchar](max) NULL,
	[DCImg] [varchar](max) NULL,
	[MCImg] [varchar](max) NULL,
	[LastQual] [tinyint] NULL,
 CONSTRAINT [PK_StudentsAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ApplyYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ApplyYear] [char](4) NOT NULL,
	[Email] [varchar](50) NULL,
	[Password] [varbinary](max) NULL,
	[Phone] [varchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ApplyYear] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([ID], [Name]) VALUES (1, N'Andorra')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (2, N'United Arab Emirates')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (3, N'Afghanistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (4, N'Antigua and Barbuda')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (5, N'Anguilla')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (6, N'Albania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (7, N'Armenia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (8, N'Netherlands Antilles')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (9, N'Angola')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (10, N'Antarctica')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (11, N'Argentina')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (12, N'American Samoa')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (13, N'Austria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (14, N'Australia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (15, N'Aruba')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (16, N'Aland Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (17, N'Azerbaijan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (18, N'Bosnia and Herzegovina')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (19, N'Barbados')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (20, N'Bangladesh')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (21, N'Belgium')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (22, N'Burkina Faso')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (23, N'Bulgaria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (24, N'Bahrain')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (25, N'Burundi')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (26, N'Benin')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (27, N'Saint Barthelemy')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (28, N'Bermuda')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (29, N'Brunei Darussalam')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (30, N'Bolivia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (31, N'Brazil')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (32, N'Bahamas')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (33, N'Bhutan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (34, N'Bouvet Island')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (35, N'Botswana')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (36, N'Belarus')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (37, N'Belize')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (38, N'Canada')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (39, N'Cocos (Keeling) Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (40, N'Central African Republic')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (41, N'Congo')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (42, N'Switzerland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (43, N'Ivory Coast')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (44, N'Cook Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (45, N'Chile')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (46, N'Cameroon')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (47, N'China')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (48, N'Colombia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (49, N'Costa Rica')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (50, N'Cuba')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (51, N'Cape Verde')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (52, N'Curaçao')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (53, N'Christmas Island')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (54, N'Cyprus')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (55, N'Czech Republic')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (56, N'Germany')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (57, N'Djibouti')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (58, N'Denmark')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (59, N'Dominica')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (60, N'Dominican Republic')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (61, N'Algeria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (62, N'Ecuador')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (63, N'Estonia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (64, N'Egypt')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (65, N'Western Sahara')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (66, N'Eritrea')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (67, N'Spain')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (68, N'Ethiopia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (69, N'Finland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (70, N'Fiji')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (71, N'Falkland Islands (Malvinas)')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (72, N'Micronesia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (73, N'Faroe Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (74, N'France')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (75, N'Gabon')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (76, N'United Kingdom')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (77, N'Grenada')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (78, N'Georgia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (79, N'French Guiana')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (80, N'Guernsey')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (81, N'Ghana')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (82, N'Gibraltar')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (83, N'Greenland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (84, N'Gambia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (85, N'Guinea')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (86, N'Guadeloupe')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (87, N'Equatorial Guinea')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (88, N'Greece')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (89, N'South Georgia and the South Sandwich')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (90, N'Guatemala')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (91, N'Guam')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (92, N'Guinea-Bissau')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (93, N'Guyana')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (94, N'Hong Kong')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (95, N'Heard and Mc Donald Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (96, N'Honduras')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (97, N'Croatia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (98, N'Haiti')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (99, N'Hungary')
GO
INSERT [dbo].[Country] ([ID], [Name]) VALUES (100, N'Indonesia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (101, N'Ireland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (102, N'Isle of Man')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (103, N'India')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (104, N'British Indian Ocean Territory')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (105, N'Iraq')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (106, N'Iran')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (107, N'Iceland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (108, N'Italy')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (109, N'Jersey')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (110, N'Jamaica')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (111, N'Jordan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (112, N'Japan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (113, N'Kenya')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (114, N'Kyrgyzstan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (115, N'Cambodia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (116, N'Kiribati')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (117, N'Comoros')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (118, N'Saint Kitts and Nevis')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (119, N'Korea(North Korea)')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (120, N'Korea(South Korea)')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (121, N'Kuwait')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (122, N'Cayman Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (123, N'Kazakhstan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (124, N'Lao PDR')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (125, N'Lebanon')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (126, N'Saint Pierre and Miquelon')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (127, N'Liechtenstein')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (128, N'Sri Lanka')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (129, N'Liberia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (130, N'Lesotho')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (131, N'Lithuania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (132, N'Luxembourg')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (133, N'Latvia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (134, N'Libya')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (135, N'Morocco')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (136, N'Monaco')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (137, N'Moldova')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (138, N'Montenegro')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (139, N'Saint Martin (French part)')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (140, N'Madagascar')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (141, N'Marshall Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (142, N'Macedonia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (143, N'Mali')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (144, N'Myanmar')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (145, N'Mongolia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (146, N'Macau')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (147, N'Northern Mariana Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (148, N'Martinique')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (149, N'Mauritania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (150, N'Montserrat')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (151, N'Malta')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (152, N'Mauritius')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (153, N'Maldives')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (154, N'Malawi')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (155, N'Mexico')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (156, N'Malaysia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (157, N'Mozambique')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (158, N'Namibia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (159, N'New Caledonia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (160, N'Niger')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (161, N'Norfolk Island')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (162, N'Nigeria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (163, N'Nicaragua')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (164, N'Netherlands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (165, N'Norway')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (166, N'Nepal')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (167, N'Nauru')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (168, N'Niue')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (169, N'New Zealand')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (170, N'Oman')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (171, N'Panama')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (172, N'Peru')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (173, N'French Polynesia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (174, N'Papua New Guinea')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (175, N'Philippines')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (176, N'Pakistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (177, N'Poland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (178, N'Pitcairn')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (179, N'Puerto Rico')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (180, N'Palestine')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (181, N'Portugal')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (182, N'Palau')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (183, N'Paraguay')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (184, N'Qatar')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (185, N'Reunion Island')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (186, N'Romania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (187, N'Serbia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (188, N'Russian')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (189, N'Rwanda')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (190, N'Saudi Arabia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (191, N'Solomon Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (192, N'Seychelles')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (193, N'Sudan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (194, N'Sweden')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (195, N'Singapore')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (196, N'Saint Helena')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (197, N'Slovenia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (198, N'Svalbard and Jan Mayen')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (199, N'Slovakia')
GO
INSERT [dbo].[Country] ([ID], [Name]) VALUES (200, N'Sierra Leone')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (201, N'San Marino')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (202, N'Senegal')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (203, N'Somalia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (204, N'Suriname')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (205, N'South Sudan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (206, N'Sao Tome and Principe')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (207, N'El Salvador')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (208, N'Sint Maarten (Dutch part)')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (209, N'Syria')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (210, N'Swaziland')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (211, N'Turks and Caicos Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (212, N'Chad')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (213, N'French Southern and Antarctic Lands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (214, N'Togo')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (215, N'Thailand')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (216, N'Tajikistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (217, N'Tokelau')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (218, N'Timor-Leste')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (219, N'Turkmenistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (220, N'Tunisia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (221, N'Tonga')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (222, N'Turkey')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (223, N'Trinidad and Tobago')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (224, N'Tuvalu')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (225, N'Taiwan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (226, N'Tanzania')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (227, N'Ukraine')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (228, N'Uganda')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (229, N'US Minor Outlying Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (230, N'United States')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (231, N'Uruguay')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (232, N'Uzbekistan')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (233, N'Vatican City')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (234, N'Saint Vincent and the Grenadines')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (235, N'Venezuela')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (236, N'Virgin Islands (U.S.)')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (237, N'Vietnam')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (238, N'Vanuatu')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (239, N'Wallis and Futuna Islands')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (240, N'Samoa')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (241, N'Kosovo')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (242, N'Yemen')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (243, N'Mayotte')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (244, N'South Africa')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (245, N'Zambia')
INSERT [dbo].[Country] ([ID], [Name]) VALUES (246, N'Zimbabwe')
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Nationality] ON 

INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (1, N'Andorran')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (2, N'Emirati')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (3, N'Afghan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (4, N'Antiguan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (5, N'Anguillan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (6, N'Albanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (7, N'Armenian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (8, N'Dutch Antilier')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (9, N'Angolan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (10, N'Antarctican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (11, N'Argentinian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (12, N'American Samoan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (13, N'Austrian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (14, N'Australian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (15, N'Aruban')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (16, N'Aland Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (17, N'Azerbaijani')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (18, N'Bosnian / Herzegovinian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (19, N'Barbadian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (20, N'Bangladeshi')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (21, N'Belgian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (22, N'Burkinabe')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (23, N'Bulgarian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (24, N'Bahraini')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (25, N'Burundian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (26, N'Beninese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (27, N'Saint Barthelmian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (28, N'Bermudan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (29, N'Bruneian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (30, N'Bolivian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (31, N'Brazilian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (32, N'Bahamian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (33, N'Bhutanese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (34, N'Bouvetian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (35, N'Botswanan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (36, N'Belarusian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (37, N'Belizean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (38, N'Canadian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (39, N'Cocos Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (40, N'Central African')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (41, N'Congolese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (42, N'Swiss')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (43, N'Ivory Coastian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (44, N'Cook Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (45, N'Chilean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (46, N'Cameroonian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (47, N'Chinese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (48, N'Colombian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (49, N'Costa Rican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (50, N'Cuban')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (51, N'Cape Verdean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (52, N'Curacian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (53, N'Christmas Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (54, N'Cypriot')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (55, N'Czech')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (56, N'German')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (57, N'Djiboutian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (58, N'Danish')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (59, N'Dominican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (60, N'Dominican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (61, N'Algerian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (62, N'Ecuadorian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (63, N'Estonian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (64, N'Egyptian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (65, N'Sahrawian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (66, N'Eritrean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (67, N'Spanish')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (68, N'Ethiopian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (69, N'Finnish')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (70, N'Fijian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (71, N'Falkland Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (72, N'Micronesian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (73, N'Faroese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (74, N'French')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (75, N'Gabonese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (76, N'British')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (77, N'Grenadian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (78, N'Georgian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (79, N'French Guianese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (80, N'Guernsian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (81, N'Ghanaian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (82, N'Gibraltar')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (83, N'Greenlandic')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (84, N'Gambian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (85, N'Guinean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (86, N'Guadeloupe')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (87, N'Equatorial Guinean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (88, N'Greek')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (89, N'South Georgia and the South Sandwich')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (90, N'Guatemalan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (91, N'Guamanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (92, N'Guinea-Bissauan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (93, N'Guyanese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (94, N'Hongkongese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (95, N'Heard and Mc Donald Islanders')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (96, N'Honduran')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (97, N'Croatian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (98, N'Haitian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (99, N'Hungarian')
GO
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (100, N'Indonesian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (101, N'Irish')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (102, N'Manx')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (103, N'Indian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (104, N'British Indian Ocean Territory')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (105, N'Iraqi')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (106, N'Iranian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (107, N'Icelandic')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (108, N'Italian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (109, N'Jersian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (110, N'Jamaican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (111, N'Jordanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (112, N'Japanese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (113, N'Kenyan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (114, N'Kyrgyzstani')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (115, N'Cambodian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (116, N'I-Kiribati')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (117, N'Comorian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (118, N'Kittitian/Nevisian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (119, N'North Korean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (120, N'South Korean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (121, N'Kuwaiti')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (122, N'Caymanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (123, N'Kazakh')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (124, N'Laotian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (125, N'Lebanese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (126, N'St. Pierre and Miquelon')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (127, N'Liechtenstein')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (128, N'Sri Lankian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (129, N'Liberian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (130, N'Basotho')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (131, N'Lithuanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (132, N'Luxembourger')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (133, N'Latvian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (134, N'Libyan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (135, N'Moroccan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (136, N'Monacan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (137, N'Moldovan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (138, N'Montenegrin')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (139, N'St. Martian(French)')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (140, N'Malagasy')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (141, N'Marshallese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (142, N'Macedonian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (143, N'Malian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (144, N'Myanmarian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (145, N'Mongolian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (146, N'Macanese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (147, N'Northern Marianan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (148, N'Martiniquais')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (149, N'Mauritanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (150, N'Montserratian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (151, N'Maltese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (152, N'Mauritian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (153, N'Maldivian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (154, N'Malawian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (155, N'Mexican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (156, N'Malaysian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (157, N'Mozambican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (158, N'Namibian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (159, N'New Caledonian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (160, N'Nigerien')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (161, N'Norfolk Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (162, N'Nigerian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (163, N'Nicaraguan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (164, N'Dutch')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (165, N'Norwegian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (166, N'Nepalese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (167, N'Nauruan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (168, N'Niuean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (169, N'New Zealander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (170, N'Omani')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (171, N'Panamanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (172, N'Peruvian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (173, N'French Polynesian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (174, N'Papua New Guinean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (175, N'Filipino')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (176, N'Pakistani')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (177, N'Polish')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (178, N'Pitcairn Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (179, N'Puerto Rican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (180, N'Palestinian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (181, N'Portuguese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (182, N'Palauan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (183, N'Paraguayan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (184, N'Qatari')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (185, N'Reunionese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (186, N'Romanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (187, N'Serbian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (188, N'Russian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (189, N'Rwandan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (190, N'Saudi Arabian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (191, N'Solomon Island')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (192, N'Seychellois')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (193, N'Sudanese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (194, N'Swedish')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (195, N'Singaporean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (196, N'St. Helenian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (197, N'Slovenian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (198, N'Svalbardian/Jan Mayenian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (199, N'Slovak')
GO
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (200, N'Sierra Leonean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (201, N'Sammarinese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (202, N'Senegalese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (203, N'Somali')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (204, N'Surinamese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (205, N'South Sudanese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (206, N'Sao Tomean')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (207, N'Salvadoran')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (208, N'St. Martian(Dutch)')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (209, N'Syrian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (210, N'Swazi')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (211, N'Turks and Caicos Islands')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (212, N'Chadian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (213, N'French')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (214, N'Togolese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (215, N'Thai')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (216, N'Tajikistani')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (217, N'Tokelaian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (218, N'Timor-Lestian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (219, N'Turkmen')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (220, N'Tunisian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (221, N'Tongan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (222, N'Turkish')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (223, N'Trinidadian/Tobagonian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (224, N'Tuvaluan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (225, N'Taiwanese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (226, N'Tanzanian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (227, N'Ukrainian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (228, N'Ugandan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (229, N'US Minor Outlying Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (230, N'American')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (231, N'Uruguayan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (232, N'Uzbek')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (233, N'Vatican')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (234, N'Saint Vincent and the Grenadines')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (235, N'Venezuelan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (236, N'American Virgin Islander')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (237, N'Vietnamese')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (238, N'Vanuatuan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (239, N'Wallisian/Futunan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (240, N'Samoan')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (241, N'Kosovar')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (242, N'Yemeni')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (243, N'Mahoran')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (244, N'South African')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (245, N'Zambian')
INSERT [dbo].[Nationality] ([ID], [Name]) VALUES (246, N'Zimbabwean')
SET IDENTITY_INSERT [dbo].[Nationality] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID], [ApplyYear], [Email], [Password], [Phone]) VALUES (1, N'2021', N'Test@test.com', 0x02000000017B32140F02092366F956ED403C540C36B82555C135D4C1C51F8D2EDE58401F, N'01220671021')
INSERT [dbo].[Users] ([ID], [ApplyYear], [Email], [Password], [Phone]) VALUES (2, N'2022', N'sharaf_1015@yahoo.com', 0x02000000C2B462FB35DF6D18EA63059113DB8BFEEA75824A4B6918AC5C12F55D36DC16B6C4C21BD6253BBD0DDD17B0B0B2BDB9AD, N'+201220671021')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[StudentsAccount]  WITH CHECK ADD  CONSTRAINT [FK_StudentsAccount_Country] FOREIGN KEY([Country])
REFERENCES [dbo].[Country] ([ID])
ON UPDATE CASCADE
ON DELETE SET DEFAULT
GO
ALTER TABLE [dbo].[StudentsAccount] CHECK CONSTRAINT [FK_StudentsAccount_Country]
GO
ALTER TABLE [dbo].[StudentsAccount]  WITH CHECK ADD  CONSTRAINT [FK_StudentsAccount_Nationality] FOREIGN KEY([Nationality])
REFERENCES [dbo].[Nationality] ([ID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[StudentsAccount] CHECK CONSTRAINT [FK_StudentsAccount_Nationality]
GO
/****** Object:  StoredProcedure [dbo].[InsertStudentAccount]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertStudentAccount]
 @ApplyYear char(4),
 @Email varchar(50),
 @Password varchar(50),
 @phone varchar(20)

AS
BEGIN
 insert StudentAccount (ApplyYear,Email,Password,Phone)  values (@ApplyYear,@Email,dbo.PassEnc(@Password),@phone)
END
GO
/****** Object:  StoredProcedure [dbo].[SelectUserAccountByEmail]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUserAccountByEmail]
  @Email varchar(50)
 AS
BEGIN
IF  EXISTS ( SELECT 1 FROM StudentAccount WHERE Email = @Email  )
BEGIN
  select 1 IsLoggedIn
 END

else 
BEGIN

  select 0 IsLoggedIn
 END
 END

GO
/****** Object:  StoredProcedure [dbo].[SelectUserAccountByEmailAndPassword]    Script Date: 7/4/2022 8:49:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUserAccountByEmailAndPassword]
  @Email varchar(50),
  @Password varchar(50)
 AS
 declare @ID  int =  (SELECT  top 1 ID FROM StudentAccount WHERE Email = @Email and dbo.Passdec(Password) = (@Password) COLLATE SQL_Latin1_General_CP1_CS_AS)
 declare @IsLoggedIn bit =  isnull(@id,0)
   select     @IsLoggedIn, @ID 
  
GO
USE [master]
GO
ALTER DATABASE [StudentPlusDB] SET  READ_WRITE 
GO
