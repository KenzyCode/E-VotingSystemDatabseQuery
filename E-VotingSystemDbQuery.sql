USE [E-VotingSystemDb]
GO
/****** Object: Table [dbo].[tbl_Election] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Election](
[Electionid] [nvarchar](10) NOT NULL,
[Name] [nvarchar](max) NULL,
[ElectionDate] [smalldatetime] NULL,
[ElectionTime] [smalldatetime] NULL,
[Rule] [nvarchar](50) NULL,
[Date] [datetime] NULL,
CONSTRAINT [PK_tbl_Election] PRIMARY KEY CLUSTERED
(
[Electionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object: Table [dbo].[tbl_ElectionCandidate] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ElectionCandidate](
[CandidateCode] [nvarchar](10) NOT NULL,
[Name] [nvarchar](max) NULL,
[Post] [nvarchar](max) NULL,
CONSTRAINT [PK_tbl_ElectionCandidate] PRIMARY KEY CLUSTERED
(
[CandidateCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 

GO
/****** Object: Table [dbo].[tbl_Menu] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Menu](
[Id] [nvarchar](10) NOT NULL,
[Name] [nvarchar](max) NULL,
[LinkName] [nvarchar](max) NULL,
CONSTRAINT [PK_tbl_Menu] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_permission]   ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_permission](
	[RoleId] [nvarchar](50) NOT NULL,
	[MenuId] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_permission] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
SET ANSI_PADDING OFF
Go
/****** Object:  Table [dbo].[tbl_ProfilePicture]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ProfilePicture](
	[ProfileId] [nvarchar](50) NOT NULL,
	[ProfilePicture] [image] NULL,
 CONSTRAINT [PK_tbl_ProfilePicture] PRIMARY KEY CLUSTERED 
(
	[ProfileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object: Table [dbo].[tbl_Refreshtoken] ******/
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Refreshtoken](
[UserId] [nvarchar](50) NOT NULL,
[TokenId] [nvarchar](50) NULL,
[RefreshToken] [nvarchar](max) NULL,
[IsActive] [bit] NULL DEFAULT ((1)),
CONSTRAINT [PK_tbl_Refreshtoken] PRIMARY KEY CLUSTERED 
(
[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY] 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_role]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_role](
	[Roleid] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_role] PRIMARY KEY CLUSTERED 
(
	[Roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object: Table [dbo].[tbl_SupportTicket] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SupportTicket](
[Supportid] [nvarchar](10) NOT NULL,
[Tittle] [nvarchar](50) NULL,
[Description] [nvarchar](max) NULL,
[Address] [nvarchar](max) NULL,
[Email] [nvarchar](max) NULL,
[Phone] [nvarchar](50) NULL,
[Date] [datetime] NULL,
CONSTRAINT [PK_tbl_Laboratorian] PRIMARY KEY CLUSTERED
(
[Supportid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]


GO
/****** Object: Table [dbo].[tbl_Observers] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Observers](
[Umpiresid] [int] IDENTITY(1,1) NOT NULL,

CONSTRAINT [PK_tbl_Observers] PRIMARY KEY CLUSTERED
(
[Umpiresid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 

GO
/****** Object: Table [dbo].[tbl_User] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
[Userid] [nvarchar](10) NOT NULL,
[Name] [varchar](250) NOT NULL,
[Phone] [varchar](20) NULL,
[Password] [varchar](50) NULL,
[Email] [varchar](100) NULL,
[Address] [varchar](max) NULL,
[PollingUnit] [varchar](max) NULL, 
[Ward] [varchar](100) NULL,
[Age] [int] IDENTITY(1,1) NOT NULL,
[Date] [datetime] NULL,
[Role] [varchar](50) NULL,
[IsActive] [bit] NULL,
CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED
( 
[Userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object: Table [dbo].[tbl_Vote] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Vote](
[Voteid] [int] IDENTITY(1,1) NOT NULL,

CONSTRAINT [PK_tbl_Vote] PRIMARY KEY CLUSTERED
(
[Voteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 


GO
/****** Object: Table [dbo].[tbl_Voters] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Voters](
[Votersid] [int] IDENTITY(1,1) NOT NULL,

CONSTRAINT [PK_tbl_Vote] PRIMARY KEY CLUSTERED
(
[Votersid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 


GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_Election] ([Electionid], [Name], [ElectionDate], [ElectionTime], [Rule], [Date]) VALUES(N'NIV2020',N'Chris Mathew', CAST(N'2023-07-09 00:00:00.000' AS DateTime), NULL, NULL, CAST(N'2023-07-09 00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_ElectionCandidate] ([CandidateCode], [Name],[Post]) VALUES (N'NIV2021', N'Okoye Michael', NULL)
GO
INSERT [dbo].[tbl_Menu] ([Id], [Name],[LinkName]) VALUES (N'NIV2022', N'Okoye Michael', NULL)
GO
INSERT [dbo].[tbl_menu] ([Id], [Name], [LinkName]) VALUES (N'user', N'user', N'user')
GO
INSERT [dbo].[tbl_permission] ([RoleId], [MenuId]) VALUES (N'admin', N'about')
GO
INSERT [dbo].[tbl_permission] ([RoleId], [MenuId]) VALUES (N'SuperAdmin', N'employee')
GO
INSERT [dbo].[tbl_refreshtoken] ([UserId], [TokenId], [RefreshToken], [IsActive]) VALUES (N'adminuser', N'643240810', N'jgZnSz6MUkzaLZSuMdADJdDMlLbnuwAQFQYLQLku4/A=', 1)
GO
INSERT [dbo].[tbl_refreshtoken] ([UserId], [TokenId], [RefreshToken], [IsActive]) VALUES (N'demouser', N'525301419', N'dYojoMv8k0iZQg1vXglVyo69BnH+/v0GcHoUhzbw104=', 1)
GO
INSERT [dbo].[tbl_role] ([Roleid], [Name]) VALUES (N'admin', N'Admin')
GO
INSERT [dbo].[tbl_role] ([Roleid], [Name]) VALUES (N'Candidate', N'Staff')
GO
INSERT [dbo].[tbl_role] ([Roleid], [Name]) VALUES (N'user', N'User')
GO
INSERT [dbo].[tbl_SupportTicket] ([Supportid], [Tittle], [Description], [Address], [Email],[Phone],[Date]) VALUES(N'NIV20023',NULL, NULL, N'1st street,2nd block,chennai', N'Mathew@gmail.com',  N'08123458694', NULL)
GO
GO
SET IDENTITY_INSERT [dbo].[tbl_User] ON
GO
INSERT [dbo].[tbl_User] ([Userid], [Name],[Phone],[Password],[Email],[Address], [PollingUnit],[Ward],[Age],[Date], [Role],[IsActive])VALUES (N'NIV20023', N'Admin', N'09032455463', N'Admin2023', N'admin@gmail.com',NULL, NULL, NULL, 36, NULL, N'admin', 1)














