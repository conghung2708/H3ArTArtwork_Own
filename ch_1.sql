USE [ArtworkSharingPlatform2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [nvarchar](450) NOT NULL,
	[UserId] [nvarchar](225) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](225) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](225) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](225) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[AvatarImage] [nvarchar](max) NULL,
	[DateOfBirth] [date] NULL,
	[Discriminator] [nvarchar](21) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Gender] [bit] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](225) NOT NULL,
	[LoginProvider] [nvarchar](128) NULL,
	[Name] [nvarchar](128) NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblArtisticService]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblArtisticService](
	[artisticServiceID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [nvarchar](225) NULL,
	[artistID] [nvarchar](225) NULL,
	[shoppingCartID] [int] NULL,
	[artisticServiceName] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[status] [bit] NULL,
	[price] [decimal](10, 2) NULL,
	[createAt] [datetime] NULL,
 CONSTRAINT [PK_tblArtisticService] PRIMARY KEY CLUSTERED 
(
	[artisticServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblArtwork]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblArtwork](
	[artworkID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[artistID] [nvarchar](225) NULL,
	[categoryID] [int] NULL,
	[description] [nvarchar](max) NULL,
	[imageURL] [nvarchar](max) NULL,
	[createAt] [datetime] NULL,
	[price] [float] NULL,
	[isPremium] [bit] NULL,
	[isBought] [bit] NULL,
 CONSTRAINT [PK_tblArtwork] PRIMARY KEY CLUSTERED 
(
	[artworkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](50) NULL,
	[displayOrder] [int] NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComment]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComment](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[artworkID] [int] NULL,
	[userID] [nvarchar](225) NULL,
	[content] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblComment] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFollow]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFollow](
	[followerID] [nvarchar](225) NOT NULL,
	[followedID] [nvarchar](225) NOT NULL,
	[followDate] [date] NULL,
 CONSTRAINT [PK_tblFollow] PRIMARY KEY CLUSTERED 
(
	[followerID] ASC,
	[followedID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderDetail]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[orderHeaderId] [int] NULL,
	[artworkId] [int] NULL,
	[count] [int] NULL,
	[price] [float] NULL,
 CONSTRAINT [PK_tblOrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrderHeader]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderHeader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[applicationUserId] [nvarchar](225) NULL,
	[orderDate] [datetime2](7) NULL,
	[orderTotal] [float] NULL,
	[orderStatus] [nvarchar](max) NULL,
	[paymentStatus] [nvarchar](max) NULL,
	[paymentDate] [datetime2](7) NULL,
	[paymentIntentId] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[phoneNumber] [nvarchar](max) NULL,
	[sessionId] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblOrderHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReaction]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReaction](
	[reactionID] [int] IDENTITY(1,1) NOT NULL,
	[artworkID] [int] NULL,
	[userID] [nvarchar](225) NULL,
 CONSTRAINT [PK_tblReaction] PRIMARY KEY CLUSTERED 
(
	[reactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReportArtist]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReportArtist](
	[reportArtistID] [int] IDENTITY(1,1) NOT NULL,
	[artistID] [nvarchar](225) NULL,
	[reporterUserID] [nvarchar](225) NULL,
 CONSTRAINT [PK_ReportArtist] PRIMARY KEY CLUSTERED 
(
	[reportArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReportArtwork]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReportArtwork](
	[reportArtworkID] [int] IDENTITY(1,1) NOT NULL,
	[artworkID] [int] NULL,
	[reporterUserID] [nvarchar](225) NULL,
 CONSTRAINT [PK_ReportArtwork] PRIMARY KEY CLUSTERED 
(
	[reportArtworkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblShoppingCart]    Script Date: 02/03/2024 11:32:15 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblShoppingCart](
	[shoppingCartID] [int] IDENTITY(1,1) NOT NULL,
	[buyerID] [nvarchar](225) NULL,
	[artistID] [nvarchar](225) NULL,
	[artworkID] [int] NULL,
	[orderID] [int] NULL,
	[artisticServiceID] [int] NULL,
	[count] [int] NULL,
	[isNew] [bit] NULL,
 CONSTRAINT [PK_tblShoppingCart_1] PRIMARY KEY CLUSTERED 
(
	[shoppingCartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240124175253_addIdentityTable', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240124180648_ExtendIdentityUser', N'8.0.1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'52250872-ad29-4dee-b714-03e381be49cf', N'Moderator', N'MODERATOR', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8606d05d-9f9c-4264-af8f-41eb6a84c25a', N'Creator', N'CREATOR', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'94e32895-2eeb-430b-8593-b50a4f044158', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ede018c6-8e8f-4c3f-9758-f98b31890587', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Facebook', N'1142561203823781', N'Facebook', N'6a656233-20c2-45b0-a3b1-5e60ffabfbef')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'07c7eadc-5738-464c-bb16-95a5335cb4a5', N'ede018c6-8e8f-4c3f-9758-f98b31890587')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f8655c5f-6a79-47c3-b71b-c8b87067aaf7', N'52250872-ad29-4dee-b714-03e381be49cf')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a4d3a019-da59-45fb-8148-7f6bd60836bd', N'8606d05d-9f9c-4264-af8f-41eb6a84c25a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'97598e1b-e9ca-4d82-8d08-ad7748506836', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f2a744f7-0f16-4d61-8fc5-ef4ef290dc29', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'adee750b-4174-45b7-bebb-18e279d58d2a', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'92d59e0b-1acf-4d35-a2f4-652e9b8b50be', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'47f5f7d5-93ae-47a2-bb73-ca3c66c13d90', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'83b4c0db-1e83-4330-9bc4-8eff08fc5dae', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a87c690-0563-4d37-9054-f39ffe1922e8', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'694898da-d705-48bb-87cb-e420e3eb7d8a', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'528812eb-9287-41e3-a25b-a36230c4aa82', N'94e32895-2eeb-430b-8593-b50a4f044158')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a656233-20c2-45b0-a3b1-5e60ffabfbef', N'94e32895-2eeb-430b-8593-b50a4f044158')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'07c7eadc-5738-464c-bb16-95a5335cb4a5', N'testadmin@gmail.com', N'TESTADMIN@GMAIL.COM', N'testadmin@gmail.com', N'TESTADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAENOP8LrS0nP5KjFt4B462cp9hxuKo75PvChQRVslaaIA1isTIzGe7TpEgLwWouec6g==', N'HCD4CKZRH3LQIS4LYLDAGI2GMGFMTLQP', N'5d58d78f-00eb-4ec6-b689-597ce694b2d5', N'0337824924', 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', N'Admin', 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'3a87c690-0563-4d37-9054-f39ffe1922e8', N'thanhcong@gmail.com', N'THANHCONG@GMAIL.COM', N'thanhcong@gmail.com', N'THANHCONG@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBzl++RqiE9Ygkm9ZR7XHzRoh7HuLuy+uFODGRwrQqeF+RbkqU1Zk2nrkGvm7DbWIA==', N'YER2H5DBTNV7INSGKNIPV3HTX77SB3D7', N'1ca4620e-a865-4863-b3c8-44d58899f6bf', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', N'Dang Cong Hung', 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'47f5f7d5-93ae-47a2-bb73-ca3c66c13d90', N'1@gmail.com', N'1@GMAIL.COM', N'1@gmail.com', N'1@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPUeRtAUEJXMYBV6dKWCwEelremnAOYKplntcGzWrsf0Za/zXWVX38t2tqvnDMWtrg==', N'IMWQIUJI74TCP4TI3VFENMQXNB2WYWCO', N'91054b74-c991-491a-938c-35b8358ed92f', NULL, 0, 0, CAST(N'2024-03-01T19:47:41.0410827+07:00' AS DateTimeOffset), 1, 0, NULL, NULL, N'ApplicationUser', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'528812eb-9287-41e3-a25b-a36230c4aa82', N'hungne@gmail.com', N'HUNGNE@GMAIL.COM', N'hungne@gmail.com', N'HUNGNE@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAECRNy8BlKmm1LUjL2L76VhlrhXN9DKd6u/Hn1vlTHSmy9YrjpQPBulfsEEGYyz1rdw==', N'UWAN4JRDH7KKDGSXSJ7P7WMEJA2KZNXW', N'671dfda1-db51-43eb-bb92-3e038dc684a5', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', N'Dang Cong Hung', 0, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'694898da-d705-48bb-87cb-e420e3eb7d8a', N'thanhcongchac@gmail.com', N'THANHCONGCHAC@GMAIL.COM', N'thanhcongchac@gmail.com', N'THANHCONGCHAC@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEGKzcDtHThusMd1o01yZ+qPeYS0DzpRdZ2hV8CiCta5k7tdOmvrKvAJJmFd9LgLj8Q==', N'AFYKZAJH7PNGXBJRKISC5JQEOQWGFFLS', N'de00638d-15a8-4d06-8f65-b1450ffca5f2', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', N'Dang Cong Hung', 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'6a656233-20c2-45b0-a3b1-5e60ffabfbef', N'hungdcse171500@fpt.edu.vn', N'HUNGDCSE171500@FPT.EDU.VN', N'hungdcse171500@fpt.edu.vn', N'HUNGDCSE171500@FPT.EDU.VN', 1, NULL, N'VRLKY4OAQKGIVJDTXDJYV3WRHQSX6T5Y', N'8ec64ca5-847f-477d-b53a-18c6c2dc505e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', N'Công Hưng', 1, 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'83b4c0db-1e83-4330-9bc4-8eff08fc5dae', N'hungdang@gmail.com', N'HUNGDANG@GMAIL.COM', N'hungdang@gmail.com', N'HUNGDANG@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJKg6/ex4jWlR1dbIFXbOiz/WKbbVQcFZJ9Y68P4tfE2uFkeyfcvbXSZXtpFBmvTBQ==', N'2NHSR7FWV5RYXQMVXSVODHFHQVLQABVJ', N'9b5d2c70-30a2-46f3-a806-6f7d29b8e442', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', N'Dang Cong Hung', 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'92d59e0b-1acf-4d35-a2f4-652e9b8b50be', N'1234@gmail.com', N'1234@GMAIL.COM', N'1234@gmail.com', N'1234@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEOSIcKq8gjsLRGPHwbCYHzPT4iumoAKSmPLZQgRJBjIYY3Vp1XE0P6pd+8QsQRBvUw==', N'COQMX7IX7QPCKWYPWL3O4IIY4SBDQ54R', N'dc6ff868-97ad-4f83-b3c2-aa5c974af2d4', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'97598e1b-e9ca-4d82-8d08-ad7748506836', N'testcustomer@gmail.com', N'TESTCUSTOMER@GMAIL.COM', N'testcustomer@gmail.com', N'TESTCUSTOMER@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEHQATHLknqr49mBlxWNsTgaICvnC6lrBFuuFw0di+oElW5tgvFVeLjMlYHowuF82og==', N'M3CTSQEIWSJHOK6ZRJXLVW3ZUYDQ3SZH', N'affe3a79-1351-4501-a631-b8f902ffd491', NULL, 0, 0, CAST(N'2024-02-29T14:17:47.7524398+07:00' AS DateTimeOffset), 1, 0, NULL, NULL, N'ApplicationUser', NULL, 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'a4d3a019-da59-45fb-8148-7f6bd60836bd', N'testcreator@gmail.com', N'TESTCREATOR@GMAIL.COM', N'testcreator@gmail.com', N'TESTCREATOR@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEF+MDMaXzVEMGjUekqUDC8u46UCPwvHJFZOYFCHq8yGYv6Mia6bgP6eUJCeYN+XwPw==', N'5RS4T5PUOAELOJ4ICSNMK2SANCNVFW7O', N'dcc1890d-285b-4510-893d-a88a01c7e2c1', NULL, 0, 0, CAST(N'2024-02-29T11:59:53.4088906+07:00' AS DateTimeOffset), 1, 0, NULL, NULL, N'ApplicationUser', N'Dang Cong Hung', 1, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'adee750b-4174-45b7-bebb-18e279d58d2a', N'123@gmail.com', N'123@GMAIL.COM', N'123@gmail.com', N'123@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEF/TdQnqjzF9V9ysWOZHul0jA5A965F4QlalW1yxnHGfZ77aeu+bF3k/7fMirsDhbA==', N'664UIYOGJ6WM6FFZTV3PN2TADZK7YYYG', N'804ee65b-d796-4b1a-971d-2c36cc2caa38', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'f2a744f7-0f16-4d61-8fc5-ef4ef290dc29', N'conghung05005@gmail.com', N'CONGHUNG05005@GMAIL.COM', N'conghung05005@gmail.com', N'CONGHUNG05005@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEF7J3fyOraEFWLBAaY7M0cw9bEg6x2DhXMoQzJiEA4KKfkdl1g9acM7/FSHdUxIGIQ==', N'OF6VXHXMS3L2FCA77TCESGOTI42YUZUD', N'2390a565-b08b-4e0e-abd8-c2bb5c11bc43', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [AvatarImage], [DateOfBirth], [Discriminator], [FullName], [Gender], [Status]) VALUES (N'f8655c5f-6a79-47c3-b71b-c8b87067aaf7', N'testmoderator@gmail.com', N'TESTMODERATOR@GMAIL.COM', N'testmoderator@gmail.com', N'TESTMODERATOR@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEKoy2V5rPr2dam+1DunuazyiY+DFIG1hzqRytnQIf9e6uA3G2pyJQHLiuCEMhPyGHQ==', N'YJ7ZCK7GNW3YQYV6K3LQLP74UBKQEZNY', N'd5b80b3a-c3d9-4ee8-9dc8-b2432bd21a9d', NULL, 0, 0, NULL, 1, 0, NULL, NULL, N'ApplicationUser', NULL, NULL, NULL)
GO
INSERT [dbo].[AspNetUserTokens] ([UserId], [LoginProvider], [Name], [Value]) VALUES (N'07c7eadc-5738-464c-bb16-95a5335cb4a5', N'[AspNetUserStore]', N'AuthenticatorKey', N'UD5MYI7LLF6RFQS6HM7QBXXSOJ5YZXZR')
GO
SET IDENTITY_INSERT [dbo].[tblArtwork] ON 

INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (1, N'Artwork 1', N'83b4c0db-1e83-4330-9bc4-8eff08fc5dae', 1, N'<p>The artwork, a masterpiece of creative expression, captivates viewers with its intricate details and emotive storytelling. Each brushstroke or sculpted form conveys a narrative, invoking a sense of wonder and curiosity in the observer.</p>', N'\image\artwork\6d3e579b-ed0f-4065-acea-380d92f09b7e.jpg', CAST(N'2024-01-23T21:33:43.653' AS DateTime), 11, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (2, N'Artwork 2', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 1, N'The swirling night sky dances with vibrant hues of blue and yellow, capturing the imagination with its tumultuous energy. A crescent moon hangs serenely amidst the tumult, casting its gentle glow over the quaint village below. The cypress trees reach desperately towards the heavens, their dark silhouettes contrasting sharply against the luminous backdrop. Van Gogh''s masterful strokes create a sense of movement and emotion, inviting the viewer to lose themselves in the mesmerizing beauty of the night.', N'https://i.pinimg.com/564x/19/75/d6/1975d6e559da17936176eb6168161089.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 100, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (3, N'Artwork 3', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 2, N'In Dalí''s surreal landscape, time appears to melt away like the soft, drooping clocks that litter the scene. The barren landscape is bathed in an eerie light, casting shadows that seem to stretch and warp with the passage of time. A solitary figure, perhaps a represe...', N'https://media.cnn.com/api/v1/images/stellar/prod/190430171751-mona-lisa.jpg?q=w_3000,h_4470,x_0,y_0,c_fill', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 150, 1, 1)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (4, N'Artwork 4', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 3, N'A towering wave looms menacingly overhead, its frothy crest frozen in time against a backdrop of serene Mount Fuji. The tiny boats below are dwarfed by the sheer power and scale of nature, struggling to navigate the treacherous waters. Hokusai''s use of bold lines and dynamic composition captures the raw energy and majesty of the ocean, while the distant silhouette of Mount Fuji serves as a symbol of enduring strength and tranquility amidst the chaos.', N'https://news.artnet.com/app/news-upload/2014/07/Johannes_Vermeer_1632-1675_-_The_Girl_With_The_Pearl_Earring_1665-e1435072137333.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 200, 1, 1)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (5, N'Artwork 5', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 4, N'The artwork depicts a serene landscape with a small boat sailing on a tranquil river. The warm sunlight bathes the scene, casting long shadows and creating a peaceful atmosphere. The artist has captured the beauty of nature with delicate brushstrokes and vibrant colors, inviting the viewer to escape into this idyllic setting.', N'https://www.singulart.com/blog/wp-content/uploads/2023/09/Self-portrait-with-Straw-Hat-1887-88.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 120, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (6, N'Artwork 6', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 5, N'The vibrant colors and dynamic composition of the artwork evoke a sense of energy and movement. The artists bold use of shapes and lines creates a visually striking piece that captivates the viewer attention. Through this artwork, the artist explores themes of life, vitality, and the interconnectedness of all things.', N'https://www.getty.edu/art/exhibitions/19th_century_highlights/images/1_00089801_2000x2000_x1024.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 180, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (7, N'Artwork 7', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 1, N'The artwork portrays a serene countryside scene, with rolling hills and lush greenery. A winding path leads the viewers eye through the landscape, inviting them to explore its beauty. The artist has captured the tranquility of the countryside with delicate brushstrokes and soft, muted colors, creating a sense of peace and harmony.', N'https://d3d00swyhr67nd.cloudfront.net/w1200h1200/collection/LNE/RAFM/LNE_RAFM_FA05477-001.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 90, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (8, N'Artwork 8', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 2, N'The artwork depicts a bustling cityscape, alive with activity and energy. Bright lights illuminate the streets, casting vibrant reflections in the rain-soaked pavement below. The artist has captured the frenetic pace of urban life with bold brushstrokes and dynamic composition, creating a sense of movement and vitality.', N'https://media.mutualart.com/Images//2022_02/14/07/071558039/a6477e77-09c7-479e-b297-6a9c7285ba01.Jpeg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 160, 1, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (9, N'Artwork 9', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 3, N'The artwork portrays a tranquil garden scene, with colorful flowers blooming amidst lush green foliage. A gentle breeze rustles the leaves of the trees, creating a sense of movement and life. The artist has captured the beauty of nature with delicate brushstrokes and vibrant colors, inviting the viewer to escape into this idyllic setting.', N'https://upload.wikimedia.org/wikipedia/commons/2/2b/Portrait_of_a_gentleman_at_an_organ_English_19th_century.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 220, 1, 1)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (10, N'Artwork 10', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 4, N'The artwork depicts a serene seascape, with waves crashing against jagged cliffs. A storm brews on the horizon, casting dark clouds across the sky. The artist has captured the power and majesty of the ocean with bold brushstrokes and dynamic composition, creating a sense of drama and tension.', N'https://hips.hearstapps.com/hmg-prod/images/vincent_van_gogh_self_portrait_painting_musee_dorsay_via_wikimedia_commons_promojpg.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 130, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (11, N'Artwork 11', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 5, N'The artwork portrays a tranquil forest scene, with sunlight filtering through the trees and casting dappled shadows on the forest floor. A winding path leads the viewer deeper into the woods, inviting them to explore its beauty. The artist has captured the serenity of the forest with delicate brushstrokes and soft, muted colors, creating a sense of peace and tranquility.', N'https://image.invaluable.com/housePhotos/potomackcompany/37/722837/H1122-L287813289_original.JPG', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 190, 1, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (12, N'Artwork 12', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 1, N'The artwork depicts a majestic mountain landscape, with snow-capped peaks rising into the sky. A winding river cuts through the valley below, reflecting the beauty of the surrounding scenery. The artist has captured the grandeur of the mountains with bold brushstrokes and dynamic composition, creating a sense of awe and wonder.', N'https://i.ebayimg.com/images/g/-dAAAOSwh8djxFll/s-l1200.webp', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 110, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (13, N'Artwork 13', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 2, N'The artwork portrays a serene beach scene, with palm trees swaying in the gentle breeze and waves lapping at the shore. The warm sunlight bathes the scene, casting long shadows and creating a peaceful atmosphere. The artist has captured the beauty of the beach with delicate brushstrokes and vibrant colors, inviting the viewer to escape into this idyllic setting.', N'https://media.mutualart.com/Images//2019_06/28/15/152450767/58a8ff20-98f6-4ba2-ab5d-b7434e599d7a.Jpeg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 170, 1, 1)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (14, N'Artwork 14', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 3, N'The artwork depicts a vibrant cityscape, alive with color and movement. Bright lights illuminate the streets, casting vibrant reflections in the rain-soaked pavement below. The artist has captured the energy and vitality of the city with bold brushstrokes and dynamic composition, creating a sense of excitement and wonder.', N'https://www.hunterandrose.co.uk/cdn/shop/products/DSC_0440ok_1024x1024.jpg?v=1600342904', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 230, 1, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (15, N'Artwork 15', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 4, N'The artwork portrays a tranquil countryside scene, with rolling hills and lush green fields stretching into the distance. A winding road leads the viewers eye through the landscape, inviting them to explore its beauty. The artist has captured the tranquility of the countryside with delicate brushstrokes and soft, muted colors, creating a sense of peace and harmony.', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxEpJnx0GdNSzdZJIqE-l3GLN6KQ21k4wMZU8V21FUkcVe-IpuW-qICo_wfn9H7NQzVLc&usqp=CAU', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 140, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (16, N'Artwork 16', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 5, N'The artwork depicts a bustling market scene, with vendors selling their wares amidst a cacophony of sights and sounds. Brightly colored fabrics hang from awnings, while exotic fruits and spices fill the air with their sweet scent. The artist has captured the vibrancy of the market with bold brushstrokes and dynamic composition, creating a sense of excitement and energy.', N'https://cdn2.picryl.com/photo/1836/12/31/ada-lovelacefxd-b693d4-640.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 200, 1, 1)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (17, N'Artwork 17', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 1, N'The artwork portrays a tranquil garden scene, with colorful flowers blooming amidst lush green foliage. A gentle breeze rustles the leaves of the trees, creating a sense of movement and life. The artist has captured the beauty of nature with delicate brushstrokes and vibrant colors, inviting the viewer to escape into this idyllic setting.', N'https://i.pinimg.com/736x/cb/02/1e/cb021e1342f32fab891a347f3ed7cd10.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 120, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (18, N'Artwork 18', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 2, N'The artwork depicts a serene beach scene, with palm trees swaying in the gentle breeze and waves lapping at the shore. The warm sunlight bathes the scene, casting long shadows and creating a peaceful atmosphere. The artist has captured the beauty of the beach with delicate brushstrokes and vibrant colors, inviting the viewer to escape into this idyllic setting.', N'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/german-master-1st-half-of-the-19th-century--portrait-of-a-young-gentleman-german-master.jpg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 180, 1, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (19, N'Artwork 19', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 3, N'The artwork portrays a tranquil forest scene, with sunlight filtering through the trees and casting dappled shadows on the forest floor. A winding path leads the viewer deeper into the woods, inviting them to explore its beauty. The artist has captured the serenity of the forest with delicate brushstrokes and soft, muted colors, creating a sense of peace and tranquility.', N'https://cdn.mos.cms.futurecdn.net/CttrhmaDBRtmT6gj3iNRdn-320-80.jpeg', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 240, 1, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (20, N'Artwork 20', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 4, N'The artwork depicts a bustling cityscape, alive with activity and energy. Bright lights illuminate the streets, casting vibrant reflections in the rain-soaked pavement below. The artist has captured the frenetic pace of urban life with bold brushstrokes and dynamic composition, creating a sense of movement and vitality.', N'https://image.invaluable.com/housePhotos/andrewjonesauctions/33/689833/H21356-L234915322_original.JPG', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 150, 0, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (21, N'Tên tác phẩm 20', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 5, N'Mô tả tác phẩm 20', N'https://image.invaluable.com/housePhotos/potomackcompany/23/743723/H1122-L324891066.JPG', CAST(N'2024-02-02T02:36:29.400' AS DateTime), 210, 1, 0)
INSERT [dbo].[tblArtwork] ([artworkID], [title], [artistID], [categoryID], [description], [imageURL], [createAt], [price], [isPremium], [isBought]) VALUES (55, N'bbbbbbbbbbbbb', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 1, N'<p>qqqqqqqqqqqqq</p>', N'\image\artwork\b72e744b-9767-4215-8dce-e43af6103a3d.jpg', NULL, 23, 0, 0)
SET IDENTITY_INSERT [dbo].[tblArtwork] OFF
GO
SET IDENTITY_INSERT [dbo].[tblCategory] ON 

INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [displayOrder]) VALUES (1, N'Painting', 1)
INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [displayOrder]) VALUES (2, N'Sculpture', 2)
INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [displayOrder]) VALUES (3, N'Photography', 2)
INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [displayOrder]) VALUES (4, N'Digital Art', 5)
INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [displayOrder]) VALUES (5, N'Mixed Media', 4)
INSERT [dbo].[tblCategory] ([categoryID], [categoryName], [displayOrder]) VALUES (7, N'Painting', 12)
SET IDENTITY_INSERT [dbo].[tblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderDetail] ON 

INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (3, 3, 1, 1, 11)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (4, 3, 5, 1, 120)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (5, 3, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (18, 8, 1, 1, 11)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (19, 8, 5, 1, 120)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (20, 8, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (21, 9, 5, 1, 120)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (23, 11, 5, 1, 120)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (36, 18, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (37, 18, 14, 1, 230)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (38, 18, 1, 1, 11)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (39, 18, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (40, 18, 14, 1, 230)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (41, 18, 1, 1, 11)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (42, 18, 10, 1, 130)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (43, 18, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (44, 18, 14, 1, 230)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (45, 18, 1, 1, 11)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (46, 18, 10, 1, 130)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (47, 18, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (48, 18, 14, 1, 230)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (49, 18, 1, 1, 11)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (50, 18, 10, 1, 130)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (51, 19, 5, 1, 120)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (52, 19, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (53, 19, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (55, 19, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (56, 19, 9, 1, 220)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (61, 23, 5, 1, 120)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (62, 24, 10, 1, 130)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (63, 25, 3, 1, 150)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (64, 26, 3, 1, 150)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (65, 27, 3, 1, 150)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (74, 35, 14, 1, 230)
INSERT [dbo].[tblOrderDetail] ([Id], [orderHeaderId], [artworkId], [count], [price]) VALUES (75, 36, 14, 1, 230)
SET IDENTITY_INSERT [dbo].[tblOrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblOrderHeader] ON 

INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (3, N'07c7eadc-5738-464c-bb16-95a5335cb4a5', CAST(N'2024-02-25T14:29:40.0218891' AS DateTime2), 351, N'Done', N'Approved', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Hung', N'0337824924', NULL)
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (8, N'07c7eadc-5738-464c-bb16-95a5335cb4a5', CAST(N'2024-02-25T15:45:54.0966601' AS DateTime2), 351, N'Cancelled', N'Refunded', CAST(N'2024-02-25T15:46:48.7416091' AS DateTime2), N'pi_3OndLbAKnLcEuWdy0UyVMiKe', N'Admin', N'0337824924', N'cs_test_b1btIo4F2VZybSjbZtxG3Q5jSoUtmCejW0jcFxajOALITtu7lLQGFRFLYK')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (9, N'07c7eadc-5738-464c-bb16-95a5335cb4a5', CAST(N'2024-02-25T15:47:24.5676310' AS DateTime2), 120, N'Approved', N'Approved', CAST(N'2024-02-25T15:47:44.5350025' AS DateTime2), N'pi_3OndN3AKnLcEuWdy2PXYDFoo', N'Admin', N'0337824924', N'cs_test_a1GOK9is0jJyUm0Iv9tnv1w034l6b8scf8QGdvsfTV6xujOzIXoe5KX8st')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (11, N'07c7eadc-5738-464c-bb16-95a5335cb4a5', CAST(N'2024-02-25T21:35:44.9017168' AS DateTime2), 120, N'Approved', N'Approved', CAST(N'2024-02-25T21:36:01.8700688' AS DateTime2), N'pi_3Onio7AKnLcEuWdy3n8qfY6w', N'Admin', N'0337824924', N'cs_test_a1WSSLO55sPPSlrmiiROoDy5ysK2qDLwaaGL6zaQ3XswUISyV8SozWDU2D')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (18, N'07c7eadc-5738-464c-bb16-95a5335cb4a5', CAST(N'2024-02-25T23:02:31.8606320' AS DateTime2), 461, N'Approved', N'Approved', CAST(N'2024-02-25T23:07:50.4967814' AS DateTime2), N'pi_3OnkEyAKnLcEuWdy1VKTws9U', N'Admin', N'0337824924', N'cs_test_b1BcUn9He3Gzw8vDEgHd0CQ2VwfzPsGldeN4J1a2nvlgMIpkZK5V07l066')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (19, N'07c7eadc-5738-464c-bb16-95a5335cb4a5', CAST(N'2024-02-25T23:10:06.9241936' AS DateTime2), 340, N'Approved', N'Approved', CAST(N'2024-02-25T23:42:42.9334117' AS DateTime2), N'pi_3OnkmiAKnLcEuWdy0TazeTbu', N'Admin', N'0337824924', N'cs_test_b1Pw0dtVOIeAr4rSPY2bhIzBvTWkCmTwVUSOV33QnaD8kIaoNjA2jXiGMf')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (22, N'07c7eadc-5738-464c-bb16-95a5335cb4a5', CAST(N'2024-02-25T23:47:44.9231861' AS DateTime2), 90, N'Cancelled', N'Cancelled', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Admin', N'0337824924', N'cs_test_b1horlQJtQeCOFspeTjeBwai0JRrf7PdgyUZR8gxV4EkXGDEGuh3FQAFyx')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (23, N'a4d3a019-da59-45fb-8148-7f6bd60836bd', CAST(N'2024-02-26T13:34:27.9924314' AS DateTime2), 120, N'Done', N'Approved', CAST(N'2024-02-26T13:35:40.1439720' AS DateTime2), N'pi_3OnxmmAKnLcEuWdy2rvljMm5', N'Dang Cong Hung', N'0336629234', N'cs_test_a1xFv4eAsozkQsD3fJVp2sBv3qDyIrXmDzkswOaSwglE84D085ZHrh6xg2')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (24, N'a4d3a019-da59-45fb-8148-7f6bd60836bd', CAST(N'2024-02-26T13:37:49.3595145' AS DateTime2), 130, N'Cancelled', N'Refunded', CAST(N'2024-02-26T13:38:05.1522499' AS DateTime2), N'pi_3Onxp7AKnLcEuWdy2WusjSAD', N'Dang Cong Hung', N'213213123', N'cs_test_a1XvXzHCCHxvtdxGP76Qs0CPoiqxXy5SYWe9LGHcDInHpyONcUWIkeQkwH')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (25, N'83b4c0db-1e83-4330-9bc4-8eff08fc5dae', CAST(N'2024-02-27T22:57:09.5188407' AS DateTime2), 150, N'Approved', N'Approved', CAST(N'2024-02-27T22:57:25.0143386' AS DateTime2), N'pi_3OoT1xAKnLcEuWdy3Be1hmlD', N'Dang Cong Hung', N'1241244', N'cs_test_a1FX3jIIOvaGSgsUqczbMqxQ3PmwYkwan8mSaslc4qbKDAcK51HJ7WgQKk')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (26, N'83b4c0db-1e83-4330-9bc4-8eff08fc5dae', CAST(N'2024-02-27T22:58:06.9977824' AS DateTime2), 150, N'Approved', N'Approved', CAST(N'2024-02-27T22:58:32.4750885' AS DateTime2), N'pi_3OoT33AKnLcEuWdy04vnND7H', N'Dang Cong Hung', N'124124124', N'cs_test_a1WmiJMPiwr8vqdq3b9nrVhFi1k5bnDP6kOfyr3vB5wNccnW3kq0wXdpcY')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (27, N'83b4c0db-1e83-4330-9bc4-8eff08fc5dae', CAST(N'2024-02-27T22:59:48.3299862' AS DateTime2), 150, N'Approved', N'Approved', CAST(N'2024-02-27T23:00:02.9589011' AS DateTime2), N'pi_3OoT4VAKnLcEuWdy2iUzf6zW', N'Dang Cong Hung', N'123123', N'cs_test_a1ggrqs85ZyCsu1SLe9sHTsNxXkR5IHbR7xoGMHjjaArtt0wjx631vjti5')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (32, N'a4d3a019-da59-45fb-8148-7f6bd60836bd', CAST(N'2024-02-29T13:57:09.8212381' AS DateTime2), 170, N'Approved', N'Approved', CAST(N'2024-02-29T13:57:24.4804984' AS DateTime2), N'pi_3Op3YSAKnLcEuWdy0AE0oQfh', N'Dang Cong Hung', N'214214', N'cs_test_a1dnVVaY4hyqOs54fEOJJfweAIQKCsaoMuTkhUIRKKmOIh6P8meIdqNK2B')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (33, N'a4d3a019-da59-45fb-8148-7f6bd60836bd', CAST(N'2024-02-29T13:59:45.1164699' AS DateTime2), 230, N'Cancelled', N'Refunded', CAST(N'2024-02-29T14:00:14.1643253' AS DateTime2), N'pi_3Op3b9AKnLcEuWdy2kwjD05T', N'Dang Cong Hung', N'4214214', N'cs_test_a1RGWU4gYaMdtIEADIoqLOUH3DXHta2RRWqg0TRsyEj9nh3A9uuugZtDYO')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (35, N'a4d3a019-da59-45fb-8148-7f6bd60836bd', CAST(N'2024-02-29T14:16:17.5713352' AS DateTime2), 230, N'Cancelled', N'Refunded', CAST(N'2024-02-29T14:16:31.8052677' AS DateTime2), N'pi_3Op3qxAKnLcEuWdy3t04NpOH', N'Dang Cong Hung', N'21323213', N'cs_test_a18gwWQgJaMiY6hPcnJ79XdGSPNNYuJCy3Eb5h3AsHqqAlPe5oj9G335Tt')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (36, N'a4d3a019-da59-45fb-8148-7f6bd60836bd', CAST(N'2024-02-29T14:31:09.4660940' AS DateTime2), 230, N'Cancelled', N'Refunded', CAST(N'2024-02-29T14:31:24.2644279' AS DateTime2), N'pi_3Op45MAKnLcEuWdy26ScIzwz', N'Dang Cong Hung', N'214124', N'cs_test_a1P3L8SHPBrluBJJPrrdn5gnsVjSEOGqArgAAtWFVneXO0LgjhH2u3i9ix')
INSERT [dbo].[tblOrderHeader] ([Id], [applicationUserId], [orderDate], [orderTotal], [orderStatus], [paymentStatus], [paymentDate], [paymentIntentId], [name], [phoneNumber], [sessionId]) VALUES (37, N'a4d3a019-da59-45fb-8148-7f6bd60836bd', CAST(N'2024-02-29T15:44:35.0133569' AS DateTime2), 230, N'Pending', N'Pending', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, N'Dang Cong Hung', N'124214', N'cs_test_a1cL6i1MY4MOYV6fT9AlRfl22AGMxeor4tNZDSVnRL5hd6jeOq1lMrYcqK')
SET IDENTITY_INSERT [dbo].[tblOrderHeader] OFF
GO
SET IDENTITY_INSERT [dbo].[tblReportArtist] ON 

INSERT [dbo].[tblReportArtist] ([reportArtistID], [artistID], [reporterUserID]) VALUES (1, N'a4d3a019-da59-45fb-8148-7f6bd60836bd', N'a4d3a019-da59-45fb-8148-7f6bd60836bd')
INSERT [dbo].[tblReportArtist] ([reportArtistID], [artistID], [reporterUserID]) VALUES (2, N'83b4c0db-1e83-4330-9bc4-8eff08fc5dae', N'a4d3a019-da59-45fb-8148-7f6bd60836bd')
SET IDENTITY_INSERT [dbo].[tblReportArtist] OFF
GO
SET IDENTITY_INSERT [dbo].[tblReportArtwork] ON 

INSERT [dbo].[tblReportArtwork] ([reportArtworkID], [artworkID], [reporterUserID]) VALUES (4, 7, N'a4d3a019-da59-45fb-8148-7f6bd60836bd')
INSERT [dbo].[tblReportArtwork] ([reportArtworkID], [artworkID], [reporterUserID]) VALUES (5, 1, N'a4d3a019-da59-45fb-8148-7f6bd60836bd')
SET IDENTITY_INSERT [dbo].[tblReportArtwork] OFF
GO
SET IDENTITY_INSERT [dbo].[tblShoppingCart] ON 

INSERT [dbo].[tblShoppingCart] ([shoppingCartID], [buyerID], [artistID], [artworkID], [orderID], [artisticServiceID], [count], [isNew]) VALUES (25, N'97598e1b-e9ca-4d82-8d08-ad7748506836', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 5, NULL, NULL, 1, 1)
INSERT [dbo].[tblShoppingCart] ([shoppingCartID], [buyerID], [artistID], [artworkID], [orderID], [artisticServiceID], [count], [isNew]) VALUES (32, N'83b4c0db-1e83-4330-9bc4-8eff08fc5dae', N'a4d3a019-da59-45fb-8148-7f6bd60836bd', 3, NULL, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[tblShoppingCart] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF__AspNetUse__Discr__6442E2C9]  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers]
GO
ALTER TABLE [dbo].[tblArtisticService]  WITH CHECK ADD  CONSTRAINT [FK_tblArtisticService_AspNetUsers] FOREIGN KEY([userID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblArtisticService] CHECK CONSTRAINT [FK_tblArtisticService_AspNetUsers]
GO
ALTER TABLE [dbo].[tblArtisticService]  WITH CHECK ADD  CONSTRAINT [FK_tblArtisticService_tblShoppingCart] FOREIGN KEY([shoppingCartID])
REFERENCES [dbo].[tblShoppingCart] ([shoppingCartID])
GO
ALTER TABLE [dbo].[tblArtisticService] CHECK CONSTRAINT [FK_tblArtisticService_tblShoppingCart]
GO
ALTER TABLE [dbo].[tblArtwork]  WITH CHECK ADD  CONSTRAINT [FK_tblArtwork_AspNetUsers] FOREIGN KEY([artistID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblArtwork] CHECK CONSTRAINT [FK_tblArtwork_AspNetUsers]
GO
ALTER TABLE [dbo].[tblArtwork]  WITH CHECK ADD  CONSTRAINT [FK_tblArtwork_tblCategory] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tblCategory] ([categoryID])
GO
ALTER TABLE [dbo].[tblArtwork] CHECK CONSTRAINT [FK_tblArtwork_tblCategory]
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_AspNetUsers] FOREIGN KEY([userID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblComment] CHECK CONSTRAINT [FK_tblComment_AspNetUsers]
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_tblArtwork1] FOREIGN KEY([artworkID])
REFERENCES [dbo].[tblArtwork] ([artworkID])
GO
ALTER TABLE [dbo].[tblComment] CHECK CONSTRAINT [FK_tblComment_tblArtwork1]
GO
ALTER TABLE [dbo].[tblFollow]  WITH CHECK ADD  CONSTRAINT [FK_tblFollow_AspNetUsers] FOREIGN KEY([followerID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblFollow] CHECK CONSTRAINT [FK_tblFollow_AspNetUsers]
GO
ALTER TABLE [dbo].[tblFollow]  WITH CHECK ADD  CONSTRAINT [FK_tblFollow_AspNetUsers1] FOREIGN KEY([followedID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblFollow] CHECK CONSTRAINT [FK_tblFollow_AspNetUsers1]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblArtwork] FOREIGN KEY([artworkId])
REFERENCES [dbo].[tblArtwork] ([artworkID])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK_tblOrderDetail_tblArtwork]
GO
ALTER TABLE [dbo].[tblOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderDetail_tblOrderHeader] FOREIGN KEY([orderHeaderId])
REFERENCES [dbo].[tblOrderHeader] ([Id])
GO
ALTER TABLE [dbo].[tblOrderDetail] CHECK CONSTRAINT [FK_tblOrderDetail_tblOrderHeader]
GO
ALTER TABLE [dbo].[tblOrderHeader]  WITH CHECK ADD  CONSTRAINT [FK_tblOrderHeader_AspNetUsers] FOREIGN KEY([applicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblOrderHeader] CHECK CONSTRAINT [FK_tblOrderHeader_AspNetUsers]
GO
ALTER TABLE [dbo].[tblReaction]  WITH CHECK ADD  CONSTRAINT [FK_tblReaction_AspNetUsers] FOREIGN KEY([userID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblReaction] CHECK CONSTRAINT [FK_tblReaction_AspNetUsers]
GO
ALTER TABLE [dbo].[tblReaction]  WITH CHECK ADD  CONSTRAINT [FK_tblReaction_tblArtwork] FOREIGN KEY([artworkID])
REFERENCES [dbo].[tblArtwork] ([artworkID])
GO
ALTER TABLE [dbo].[tblReaction] CHECK CONSTRAINT [FK_tblReaction_tblArtwork]
GO
ALTER TABLE [dbo].[tblReportArtist]  WITH CHECK ADD  CONSTRAINT [FK_tblReportArtist_AspNetUsers] FOREIGN KEY([artistID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblReportArtist] CHECK CONSTRAINT [FK_tblReportArtist_AspNetUsers]
GO
ALTER TABLE [dbo].[tblReportArtwork]  WITH CHECK ADD  CONSTRAINT [FK_tblReportArtwork_tblArtwork] FOREIGN KEY([artworkID])
REFERENCES [dbo].[tblArtwork] ([artworkID])
GO
ALTER TABLE [dbo].[tblReportArtwork] CHECK CONSTRAINT [FK_tblReportArtwork_tblArtwork]
GO
ALTER TABLE [dbo].[tblShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_tblShoppingCart_AspNetUsers] FOREIGN KEY([buyerID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[tblShoppingCart] CHECK CONSTRAINT [FK_tblShoppingCart_AspNetUsers]
GO
ALTER TABLE [dbo].[tblShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_tblShoppingCart_tblArtwork] FOREIGN KEY([artworkID])
REFERENCES [dbo].[tblArtwork] ([artworkID])
GO
ALTER TABLE [dbo].[tblShoppingCart] CHECK CONSTRAINT [FK_tblShoppingCart_tblArtwork]
GO
