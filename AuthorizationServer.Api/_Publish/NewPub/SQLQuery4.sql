/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
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
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/10/2018 10:26:36 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/10/2018 10:26:36 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/10/2018 10:26:36 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/10/2018 10:26:36 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](max) NULL,
	[Nickname] [nvarchar](max) NULL,
	[Suffix] [nvarchar](max) NULL,
	[Level] [tinyint] NOT NULL,
	[JoinDate] [datetime] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[EmailSignature] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[ProfileIsVisible] [nvarchar](max) NULL,
	[UserLanguagekey] [nvarchar](max) NULL,
	[EnableMobileApp] [nvarchar](max) NULL,
	[EnableOfflineUser] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsFrozen] [bit] NOT NULL,
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
/****** Object:  Table [dbo].[Audience]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audience](
	[ClientId] [nvarchar](32) NOT NULL,
	[Base64Secret] [nvarchar](80) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_dbo.Audience] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CardDelivery]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardDelivery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[TargetDepartmentId] [int] NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[TotalHeld] [int] NOT NULL,
	[TotalWaste] [int] NOT NULL,
	[DeliveredById] [nvarchar](128) NULL,
	[DeliveredOn] [datetime] NOT NULL,
	[ConfirmedById] [nvarchar](128) NULL,
	[ConfirmedOn] [datetime] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.CardDelivery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CardDeliveryLog]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardDeliveryLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[CardDeliveryId] [int] NOT NULL,
	[RangeFrom] [int] NOT NULL,
	[RangeTo] [int] NOT NULL,
	[IsConfirmed] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ConfirmedById] [nvarchar](128) NULL,
	[ConfirmedOn] [datetime] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[BoxQty] [int] NULL,
 CONSTRAINT [PK_dbo.CardDeliveryLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CardHeldAnalysis]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardHeldAnalysis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[JobSplitId] [int] NOT NULL,
	[JobSplitCEAnalysisId] [int] NOT NULL,
	[QuantityHeld] [int] NOT NULL,
	[WasteErrorSourceId] [int] NOT NULL,
	[WasteByUnitId] [int] NOT NULL,
	[IsCardCollected] [bit] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedById] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CardHeldAnalysis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CardIssuance]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardIssuance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[TotalQuantityIssued] [int] NOT NULL,
	[TotalQuantityRemain] [int] NOT NULL,
	[TotalWaste] [int] NOT NULL,
	[TotalHeld] [int] NOT NULL,
	[IssuanceId] [nvarchar](128) NULL,
	[CollectorId] [nvarchar](128) NULL,
	[IssuanceStatusId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.CardIssuance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CardIssuanceLog]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardIssuanceLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CardIssuanceId] [int] NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[IssuanceTypeId] [int] NOT NULL,
	[TotalQuantity] [int] NOT NULL,
	[QuantityIssued] [int] NOT NULL,
	[QuantityRemain] [int] NOT NULL,
	[IssuanceId] [nvarchar](128) NULL,
	[CollectorId] [nvarchar](128) NULL,
	[IssuedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CardIssuanceLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CardWasteAnalysis]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardWasteAnalysis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[JobSplitId] [int] NOT NULL,
	[JobSplitCEAnalysisId] [int] NOT NULL,
	[QuantityBad] [int] NOT NULL,
	[WasteErrorSourceId] [int] NOT NULL,
	[WasteByUnitId] [int] NOT NULL,
	[IsCardCollected] [bit] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedById] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CardWasteAnalysis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Client]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[Id] [nvarchar](128) NOT NULL,
	[Secret] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ApplicationType] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[RefreshTokenLifeTime] [int] NOT NULL,
	[AllowedOrigin] [nvarchar](100) NULL,
	[IsPublic] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Client] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientReturnLog]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientReturnLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientStockReportId] [int] NOT NULL,
	[IssuanceQty] [int] NOT NULL,
	[OpeningStock] [int] NOT NULL,
	[ClosingStock] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientReturnLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientStockLog]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientStockLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientStockReportId] [int] NOT NULL,
	[CardIssuanceId] [int] NOT NULL,
	[IssuanceQty] [int] NOT NULL,
	[OpeningStock] [int] NOT NULL,
	[ClosingStock] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ClientStockLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientStockReport]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientStockReport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidProductId] [int] NOT NULL,
	[ClientVaultReportId] [int] NOT NULL,
	[FileName] [nvarchar](max) NULL,
	[QtyIssued] [int] NOT NULL,
	[TotalQtyIssued] [int] NOT NULL,
	[WasteQty] [int] NOT NULL,
	[ReturnQty] [int] NOT NULL,
	[OpeningStock] [int] NOT NULL,
	[ClosingStock] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ClientStockReport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientUser]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidClientId] [int] NOT NULL,
	[UserId] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ClientUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientVaultReport]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientVaultReport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidProductId] [int] NOT NULL,
	[OpeningStock] [int] NOT NULL,
	[ClosingStock] [int] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ClientVaultReport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryNote]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryNote](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidClientId] [int] NOT NULL,
	[DeliveryProfileId] [int] NOT NULL,
	[HasTemplate] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CreatedById] [nvarchar](128) NULL,
	[TransactionDate] [datetime] NOT NULL,
	[AuditStatus] [bit] NOT NULL,
	[CustomerServiceStatus] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.DeliveryNote] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryNoteClientTemplate]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryNoteClientTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryNoteId] [int] NOT NULL,
	[DeliveryNoteTemplateId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.DeliveryNoteClientTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryNoteLog]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryNoteLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DispatchDeliveryId] [int] NOT NULL,
	[DeliveryNoteId] [int] NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[QuantityReceived] [int] NOT NULL,
	[PreviousDelivery] [int] NOT NULL,
	[QuantityDelivered] [int] NOT NULL,
	[Ommitted] [int] NOT NULL,
	[Pending] [int] NOT NULL,
	[IsPartial] [bit] NOT NULL,
	[AuditStatus] [bit] NOT NULL,
	[CustomerServiceStatus] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.DeliveryNoteLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryNoteMaterialAudit]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryNoteMaterialAudit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryNoteId] [int] NOT NULL,
	[AssignedDriverId] [nvarchar](128) NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.DeliveryNoteMaterialAudit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryNoteTemplate]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryNoteTemplate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DeliveryNoteTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryProfile]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryProfile](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidClientId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[Country] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DeliveryProfile] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DictionaryCardType]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryCardType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidCardTypeId] [int] NOT NULL,
	[CardCodeName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DictionaryCardType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DictionaryClientName]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryClientName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidClientId] [int] NOT NULL,
	[ClientCodeName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DictionaryClientName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DictionaryServiceType]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictionaryServiceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidClientId] [int] NOT NULL,
	[SidCardTypeId] [int] NOT NULL,
	[ServiceTypeId] [int] NOT NULL,
	[ServiceCodeName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DictionaryServiceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DispatchDelivery]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DispatchDelivery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidClientId] [int] NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[IsNoteGenerated] [bit] NOT NULL,
	[RangeFrom] [int] NOT NULL,
	[RangeTo] [int] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.DispatchDelivery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmbedCardReceipt]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmbedCardReceipt](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidProductId] [int] NOT NULL,
	[EmbedCardRequestId] [int] NOT NULL,
	[ClientVaultReportId] [int] NOT NULL,
	[VendorId] [int] NOT NULL,
	[SIDReceiverId] [nvarchar](128) NULL,
	[SupplierName] [nvarchar](max) NULL,
	[LotNumber] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[TimeOfReceipt] [datetime] NOT NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.EmbedCardReceipt] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmbedCardRequest]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmbedCardRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidProductId] [int] NOT NULL,
	[OrderNumber] [int] NULL,
	[TotalBatchQty] [int] NOT NULL,
	[TotalDelivered] [int] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.EmbedCardRequest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FlagType]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlagType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.FlagType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IssuanceStatus]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuanceStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.IssuanceStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IssuanceType]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IssuanceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.IssuanceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NULL,
	[JobNameId] [nvarchar](max) NULL,
	[SidSectorId] [int] NOT NULL,
	[SidClientId] [int] NOT NULL,
	[Remark] [nvarchar](max) NULL,
	[ServiceTypeId] [int] NOT NULL,
	[SidCardTypeId] [int] NOT NULL,
	[JobStatusId] [int] NOT NULL,
	[IsJobPartial] [bit] NOT NULL,
	[Quantity] [int] NOT NULL,
	[SortingFile] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobFlag]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobFlag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[FlagTypeId] [int] NOT NULL,
	[TargetUnitId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Recommendation] [nvarchar](max) NULL,
	[ResolvedById] [nvarchar](128) NULL,
	[CreatedById] [nvarchar](128) NULL,
	[ModifiedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[IsResolved] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.JobFlag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobHandler]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobHandler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[JobSplitId] [int] NOT NULL,
	[HandlerId] [nvarchar](128) NULL,
	[Remark] [nvarchar](max) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobHandler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobSplit]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSplit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[SidMachineId] [int] NOT NULL,
	[RangeFrom] [int] NOT NULL,
	[RangeTo] [int] NOT NULL,
	[IsQACompleted] [bit] NOT NULL,
	[IsCECompleted] [bit] NOT NULL,
	[IsQCCompleted] [bit] NOT NULL,
	[IsMACompleted] [bit] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobSplit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobSplitCEAnalysis]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSplitCEAnalysis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[JobSplitId] [int] NOT NULL,
	[QuantityGood] [int] NOT NULL,
	[QuantityHeld] [int] NOT NULL,
	[QuantityBad] [int] NOT NULL,
	[ConfirmedHeld] [int] NOT NULL,
	[IsCEInitialized] [bit] NOT NULL,
	[IsQCInitialized] [bit] NOT NULL,
	[HeldReturned] [int] NOT NULL,
	[WasteReturned] [int] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedById] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[IsJobHandleByCE] [bit] NOT NULL,
	[IsJobHandleByQC] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.JobSplitCEAnalysis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobSplitPrintCEAnalysis]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSplitPrintCEAnalysis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[JobSplitId] [int] NOT NULL,
	[QuantityGood] [int] NOT NULL,
	[QuantityHeld] [int] NOT NULL,
	[QuantityBad] [int] NOT NULL,
	[ConfirmedHeld] [int] NOT NULL,
	[IsCEInitialized] [bit] NOT NULL,
	[IsQCInitialized] [bit] NOT NULL,
	[HeldReturned] [int] NOT NULL,
	[WasteReturned] [int] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedById] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobSplitPrintCEAnalysis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobStatus]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.JobStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobTracker]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTracker](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[CardOpsId] [int] NOT NULL,
	[InventoryId] [int] NOT NULL,
	[PrintingId] [int] NOT NULL,
	[PrintQAId] [int] NOT NULL,
	[PrintQCId] [int] NOT NULL,
	[CardEngrId] [int] NOT NULL,
	[QAId] [int] NOT NULL,
	[FirstJobRunId] [int] NOT NULL,
	[CardEngrResumeId] [int] NOT NULL,
	[QCId] [int] NOT NULL,
	[MailingId] [int] NOT NULL,
	[DispatchId] [int] NOT NULL,
	[MAudId] [int] NOT NULL,
	[CustomerServiceId] [int] NOT NULL,
	[JobStatusId] [int] NOT NULL,
	[TAT] [real] NOT NULL,
	[IsPartial] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[IsCompleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobTracker] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobVariant]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobVariant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[SidProductId] [int] NOT NULL,
	[SidVariantId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.JobVariant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobWaste]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobWaste](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[WasteTypeId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[TotalWasteQuantity] [int] NOT NULL,
	[PendingWasteQuantity] [int] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.JobWaste] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobWasteLog]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobWasteLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[WasteTypeId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[WasteQuantity] [int] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.JobWasteLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MailingMode]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MailingMode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.MailingMode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NonPersoJob]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NonPersoJob](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidProductId] [int] NOT NULL,
	[ServiceTypeId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[JobName] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsTreated] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[ModifiedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.NonPersoJob] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrintDelivery]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintDelivery](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[RangeFrom] [int] NOT NULL,
	[RangeTo] [int] NOT NULL,
	[IsDeliveryConfirmed] [bit] NOT NULL,
	[IsDeliveryCompleted] [bit] NOT NULL,
	[DeliveredById] [nvarchar](128) NULL,
	[DeliveredOn] [datetime] NOT NULL,
	[ConfirmedById] [nvarchar](128) NULL,
	[ConfirmedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PrintDelivery] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrintHeldAnalysis]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintHeldAnalysis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[JobSplitId] [int] NOT NULL,
	[JobSplitPrintCEAnalysisId] [int] NOT NULL,
	[QuantityHeld] [int] NOT NULL,
	[WasteErrorSourceId] [int] NOT NULL,
	[WasteByUnitId] [int] NOT NULL,
	[IsCardCollected] [bit] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedById] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PrintHeldAnalysis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PrintWasteAnalysis]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrintWasteAnalysis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[JobSplitId] [int] NOT NULL,
	[JobSplitPrintCEAnalysisId] [int] NOT NULL,
	[QuantityBad] [int] NOT NULL,
	[WasteErrorSourceId] [int] NOT NULL,
	[WasteByUnitId] [int] NOT NULL,
	[IsCardCollected] [bit] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedById] [nvarchar](128) NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.PrintWasteAnalysis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Priority]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Priority] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RefreshToken]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RefreshToken](
	[Id] [nvarchar](128) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[ClientId] [nvarchar](50) NOT NULL,
	[IssuedUtc] [datetime] NOT NULL,
	[ExpiresUtc] [datetime] NOT NULL,
	[ProtectedTicket] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.RefreshToken] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Remark]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remark](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Remark] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServerJobQueue]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServerJobQueue](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobName] [nvarchar](max) NULL,
	[IsTreated] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ServerJobQueue] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ServiceType]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.ServiceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid01CardOps]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid01CardOps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[CreatedUserId] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[TimeIn] [datetime] NOT NULL,
	[TimeOut] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Sid01CardOps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid03FirstCard]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid03FirstCard](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[InitializedById] [nvarchar](128) NULL,
	[InitializedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Sid03FirstCard] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid04Printing]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid04Printing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[InitializedById] [nvarchar](128) NULL,
	[CompletedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Sid04Printing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid05QA]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid05QA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[JobSplitId] [int] NOT NULL,
	[Magstripe] [bit] NOT NULL,
	[Indenting] [bit] NOT NULL,
	[Embossing] [bit] NOT NULL,
	[Picture] [bit] NOT NULL,
	[Fulfillment] [bit] NOT NULL,
	[Client] [bit] NOT NULL,
	[CardType] [bit] NOT NULL,
	[PictureView] [bit] NOT NULL,
	[Variant] [bit] NOT NULL,
	[CardIdNumber] [bit] NOT NULL,
	[Bin] [bit] NOT NULL,
	[MagstripeTrack] [bit] NOT NULL,
	[Cvv] [bit] NOT NULL,
	[PanSpacing] [bit] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Sid05QA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid06QC]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid06QC](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobTrackerId] [int] NOT NULL,
	[StartFrom] [int] NOT NULL,
	[EndPoint] [int] NOT NULL,
	[RunById] [nvarchar](128) NULL,
	[RunDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Sid06QC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid07Mailing]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid07Mailing](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[MailingModeId] [int] NOT NULL,
	[StartFrom] [int] NOT NULL,
	[EndPoint] [int] NOT NULL,
	[RunById] [nvarchar](128) NULL,
	[RunDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Sid07Mailing] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid08Dispatch]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid08Dispatch](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[JobId] [int] NOT NULL,
	[ReceivedById] [nvarchar](128) NULL,
	[ReceivedOn] [datetime] NOT NULL,
	[IsNoteGenerated] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Sid08Dispatch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid09CustomerService]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid09CustomerService](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryNoteLogId] [int] NOT NULL,
	[CreatedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Sid09CustomerService] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sid09MaterialAudit]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sid09MaterialAudit](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Sid09MaterialAudit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SidCardType]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SidCardType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SidCardType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SidChipType]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SidChipType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidCardTypeId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SidChipType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SidClient]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SidClient](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SectorId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ShortCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SidClient] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SidMachine]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SidMachine](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SidMachine] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SidProduct]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SidProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidClientId] [int] NOT NULL,
	[SidCardTypeId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ShortCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SidProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SidSector]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SidSector](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SidSector] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SidVariant]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SidVariant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ShortCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.SidVariant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StationaryInwardGood]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StationaryInwardGood](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GoodsName] [nvarchar](max) NULL,
	[Quantity] [int] NOT NULL,
	[TimeOfReceipt] [datetime] NOT NULL,
	[GoodsFrom] [nvarchar](max) NULL,
	[Attention] [nvarchar](max) NULL,
	[BroughtBy] [nvarchar](max) NULL,
	[ReceivedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.StationaryInwardGood] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockStatus]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SidClientId] [int] NOT NULL,
	[SidVariantId] [int] NOT NULL,
	[CardIssuanceId] [int] NOT NULL,
	[TotalDataReceived] [int] NOT NULL,
	[OpeningStock] [int] NOT NULL,
	[NewStock] [int] NOT NULL,
	[TotalIssued] [int] NOT NULL,
	[TotalDelivered] [int] NOT NULL,
	[TotalProductionSpoil] [int] NOT NULL,
	[TotalWasteSent] [int] NOT NULL,
	[CardIssuedById] [nvarchar](128) NULL,
	[CardCollectedById] [nvarchar](128) NULL,
	[CreatedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.StockStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Vendor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WasteErrorSource]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WasteErrorSource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.WasteErrorSource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WasteErrorSourceCode]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WasteErrorSourceCode](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WasteErrorSourceId] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.WasteErrorSourceCode] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WasteType]    Script Date: 4/10/2018 10:26:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WasteType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.WasteType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201801220657287_InitialCreate', N'AuthorizationServer.Api.Migrations.Configuration', 0x1F8B0800000000000400EDBDEB72DC38F22FF87D23F61D1CFEB47B628E2FEDB6DBDDE13E27E4B23C2D8F655B92DBBBDF14741525F16F165943B2D4EDD9D827DB0FFB48FB0A0B8237DC6FC48DE58A8998960B894466E28744020412FFDFFFF3FFBEFA9F7F6FF307F769556765F1FBC3A78F9E3C7C9016EB729315B7BF3FDC3737FFFDE5C3FFF93FFED7FFE5D5E966FBF7832F03DDB3960ED42CEADF1FDE35CDEEB7C78FEBF55DBA4DEA47DB6C5D957579D33C5A97DBC7C9A67CFCD39327BF3E7EFAF4710A583C04BC1E3C7875B92F9A6C9BC27F807FAECA629DEE9A7D929F979B34AFFBDF41C915E4FAE043B24DEB5DB24E7F7F78B26FEECA2AFB4FD20049AED20AC8FEE864973D3A2B6EAAA46EAAFDBAD957E9C30727799600E9AED2FCE6E183A428CA06D6F8EDCF3ABD6AAAB2B8BDDA811F92FCF3F75D0AE86E92BC4E7B9D7E9BC855D57BF253ABDEE3A9E2C06ABDAF9B72ABC9F0E9B3DE5E8FC9EA46567F38DA1358F41458BEF9DE6A0DADDA1A7493812E07CA938DFDB6CAAB961058F1ECCDA355B9DD96C523D84384B51F0D3CFEF180A4FCC7081A80ADF67FFF78B0DAE76DA5DF8B74DF5409A0F8B4FF9A67EB7FA5DF3F97DFD2E2F7629FE7A8C840685086FD007EFA5495BBB46ABE5FA637BD22AB1CC8D09C6D1E3E788CD77E4C561F2B53357B759B0AE0FFE183F3E4EFF76971DBDC01C4FFF4F0C1DBECEF7433FCD003E6CF2203A305D401B600FFFC00644FBEE6E958FE58D8F0EBA44E5FFC7C95AEABB41134FEF2898BC6DBFF1734FAF48985565F3D9EF02644E12AA9366FD23C03C3F9BB161281521B804240F408E511148926189CD07756342DDA28BB22E6B86ACA2AFD675AA455D2A49B4F49D3A455D1F248A15D653DFFAEFCFAB94AD6DFD24ADEAA98D39B749754CD161B3D669C3E27D56DDA58E4076C955FEC93DE20B359FD91E63624FA3F80D74CE7DA1C423CDDBCFE2E74594F7F7AA93480155BFB580C6DBD01A0FB9C6DF53D0E98E76FB26AEB49F2B1350B929FD5C095ECF2148CB681D7EBB2CCD3A4D066750926ECEA9B407BF0A789F61F92FBEC16BA07BED51F3EB84C734853DF65BB2E3AC2DCE63546FCB62AB797654EB86794E6FAAADC576DECF0B9941076E35B5D6A04E572A931628ED4088D586A94505FEAC17FA9083DD172651E4864228F74BA124F73815C62949623F144229618A1D395989C29E472D33538D29384621D286A9626CA11D0C96E07620FA80758A354B3C2719CD58263A1199383A65B7E9B5575E32324A69B7E9F846AF93CDB6CF254D2B6E17C44AE36B2F5B7C2474357FB9B9BEC6FE7CDBC4FEFD37C8C05BE37FAC67F5766451B90CC0E4E3E674DEEDEAEA7DB24CBAFB2DB22E936581C37F7E9AE6C4AF7AD54E54D96A79FB2B51FA5BAE6CEEA2F599D7DF5D069ADFB7F9F14B7FBE436FD967E770F92A2C5ED79F915680966214FED7DBCB9C9B322EDA64DD7EE054CC6FBDA7933673508336C2C37CE6A10EBFC272DE6F281C35FA0F64FCF5FD87232E3B261AECC9F92BAFEABAC367F24F59D7B60A4EB7D05423A0090AD7BE003F758A41FF6DBAF1E208FB465AD6B3EFF55BE4DD64D5975237836BFF7E5FA5BB96F4E8B4D3B8DFED9ACE95955918115714ED6EBB4AEDF0230A79B55B92FC6DD5DB32D9FD6B349A234D5F1276B99BF8D9027D9B6662EB688F5C6F5403AADB2D814D4F28A43A6BB427C5FDE66859AA803295FD48E422A6A4FA62B6ACB4C4DD29E922F282490CAD951CD5AA90EDBCC2D3FD843A2B5EAF9F865EAA4DE7D489B4743ED471DDFB715E0099CF4B74714DB7F3C50AE3C2D687F525DD03E7BFAF5E6D9CBE72F92CDB3173FA7CF9E1FE2467F6BCA108B69D87D6DA3CEE726D8D29724DFDB6ECA68344027607F3440B6F18F062826F8F93EDBB451C963798D81F85F29056526FD8067DD314748E67B38606AFA6EDC8F0F301A2EED5C647FB4B45CE31F2C6C2833495B854C501FCAFB0FF246823874DF5F634FFD7D597EDBEFEA4753F505EFA3BB0F351C6C222BF730FA5DCAECE8C8C4E1D8C9E2832373CF65B45FD03EEEEAB96CCE8A7B2072597D9FCBE813806A03D06A85CFC5891D362B1B563E2D6E679FEF99AF10FCAE067073B92F6C297599D6FB6D3A5BB5D9463E4FB2DC0272DE64F52E69D677B3C539D96F669B187ACFB46A0FD666EBD93606FDDEED97CF3ECD75F2799C5C80C97393133C9FC0349E25D3373BF30DF53CB99DCFC5DA81A25595B6CEDCC2292730DD653799192BD10113E6FE16720204924C1B5B7809B5A345141B1C7819BEE148A51A0879B275E512097B225D3941B5DBF4C9D37EBE94094B523325C6894462139466B2FF344ED26AD2A3F402F92732B90608AD990ECF86F8404D05845CA0C148255760229D23FFC5898EF82DB554FA8B1355E101E52CD9575AB2AF54645F29CBBE3294FDE7215851131E2117483F52C9C59F48CDE47FAE0A99E712B43C5701CA73638CBC40E24B3581F11A02C95142B90A18B5992EBFE001AE9A3A5425814604AD5C29B282995E2F5587F04BC9E87DA932705F1A8FD95FFB805E4DD8895A20F14024177BA43492FDE9936115A1243C4ACE977EA2928A8F901ACA7F0E22CD0A84E7ED5532F6915EBA4DA28E48138C54411D9CDE4CA7A7C46A4A4D2BBA96402F9258AE195563D6A76018B91B6FB91DF7DAC46B672F0773FB76841BF6964E48659BABB43DF3337737003022AF6C9A31727517873A1A06875ADB8A0DD5C19C6C8395B5CD99B31AB0B2B4BB62E7C6DE5559B56BA6B7D974C4F6707757C4BB19DC6D0CF1FEC59C8D8B09ED5CA1301A5C2CA48829185AAE2DDA347AF8A2A134846853115B34A4DC4434E8D38482F514B458B0802B54576A2052E7AF45220D1494485D014FA4BE746EF03120DBE0BBEE58FB188544FA59177312063D8CD43FF671AC7D8C7A5B933E9EEA1FFB38E23EEE272EC31E86B58FFD2B5C62D858587959705EDD81E87C05C83DE64010C43148F4448532641915CD5004B3021A249C321B285DEDE34089D411A2D903DE97B736F21C0136C7EE166F72584A75845A7DF6BE5352DCA6AD9BB1C0E6733977F7C6DAA53E6B9756FB4D173F6982AC6DF02C37BDD19BB45E57D9AECB30E878FA7F5DFE7D41EDEF295F42C4D2C449F2BE00DF788D5760A77D21E984595F2862DD5D159D744CB031794626824C2EFF8CBC4CE3D054137EA216883E10C9051F291DA6396A1B92673AC2A9A4924BF21D6985106D2ABA9322C9BFD799DED6171143A07C8E41849720A2DD74DCE5D9EC0F57039FD5E9D081B38F43F71F5EE6E73984290E4FABAAACBA41315732C8EFF57730C9CC361B887500EE57659E8385D28F1AA60CDFA1BC88EDE4A3977C0E425D1B7F126253317D3987D4E4F0713B6ED5049FA805720F4472B1474A079327D91067F6E49029C96E9A2F70C2BB9AF428BD40FA894C2E3D42AB2B3DE2FDD4C4C72A08E447E8E40AA0C4B3BFD97590363E3504EB1FE3152FF18ABD7CCC57D9E63C59DF65C5EC7820AECD938B136B17794074726A91D9C5CA22B3737B6A2E246A328C3EC649961975D0A5AC03122489E52CC4630BEC8CB88C62BE90EE320F8F4DB0A30946315FCA19D1C3E4B7C452A2740C29A762BE9408CDDCCF48A32866DF91FAEAC749D6CBD4E8E6ABABA9774050C8F60F4C02D6975106D5ECBDAFB3BADE27C53AD5FD7C36DE037C447039625CF2CD6BB095852D2B4B41E920918D43D0169F0919B8B4E2A59676E3DA03EA5961C75C5EBE49C19D35F4208AB3B63A339B25D0167E5F1AECC55D6E23DEE31AAF802FB77974CCE5369758FFFB52DF076AF24FD402E10722B9E423A5AED85A5657B1B8B2B58D2D8DFA212DB1C9B3E5223A65F18D4E9D2BECECA16DF137F6D85452E16D7E169B40313B2E380605E2893CA25917636563EAC518DA987F6DBDFB65E919B2030E075AB50CAFB459984EE573A9E244EA6316954EA16AF3A7F9E4C94B0B8471271203916562D178C981D4539562D3B5C14E0ACAE038A5447C28177A671B476A3046C72E3F9EA981B6789D1C8FD41CD6C7A11FF0480DE6DAF8676A3864CCA99A476BFD540DDE10EF580D9B4A41F239076B0897A3A9025A514599895E432DA49283FD05AA4DCE0E038F4E4D11878787F0B6F8A78778740A0A383E3F8437263840C42554D041768448AA0432FFE968825593AA8350ABEA8456B172360A1DD4F34E494D9C8EB1E8A262D12172FC67594673AEDB5A343B5E3FB1B199B53A3D031E254BF2EC3F760E4D5964D7EA7799822155CCDD94848EC60EAB6384ED34C2A610055CC21F49B1C9C1DCB73A9D0F50845D9B2D5393DDCC436D4824283CDEC6A2E39E7B62125B5D02305A62AD0104642AC2BB3A5ECF6E4A70248E49A8A881A33899D1183B501612AAE82009959583313A7634D80026991CA3B058378161128F6E829D71B40CE772EC6D5168006D0598ACBF5DA6BBB2B2B011D97D6CA12F976B32FAB84B0B003E28DACC502B2F6B434E82677809BBB1D7C23812AF19B590A5B08C985E094B6BCC3BCD414B3B633C227C8E2352D0D655B6E9B71066A74A8176FF920043DA19DB6D225737A7A4C935AECD33247678C11862B653EBC6EA61F8461F777C48040BBC2CEAF618F5483F2B24E7785A711D832B2DFD4057D40AAD205267A253D00321B6305960269F3159207C8E938597C9224697E2E413ABD2B0C37C8160D8B1E938C38E433CF792D9289CD925B3BEFA71988987999D970E2CBE1BE025100B922454921D1E1D67EC24F16C0AD6DD381699DD94F1442354E67856B94C527E1E79CDE95A738EBEA940105C0129800F78B4F86CC0FE5E62BF4AD755DB53B387905D17F1F4C91317AD9EEC76A073219ABA81D90BD08E06A2ACD667BE6EB2FB91A7E9F71B00A12AADEF20FADE67377D4831C71B9FE479F9178854AAEC3613256F54B5B96C93AD1B417A7630D9F899BB0B3B3059B09F58E026ACCD0BC33FCA86AEF4CA298667FE8D533E9968353EFFBEA9C686F4D4A27C3F9A4F2B55C7EE6EF490C6F343D9A41DEBCFE97697C38BC7062B1F3EBBA3AB12B4859A6D7E56AB89D7607C7B37C658DC9963828F846B368F69886856A5468C6E7DFD0C441D13F0F30D7C84CD4CFDB1BA96E67D2D13A587AAD61C863557717412911F21A0303BA3C37B1EC7BEF6B135E6653FEB64B3010BBFDAFDBE5983244471D6CAAADC174DF5DD433B4593AC9B4F00F3D65F263072E7E6AB5282CB71688BE2B3FE2D715BCFADD88C1DEDDD1598724CAC5320DE4C6E9FAAF43E2BF7F5F4D8850DD97A6E7385FBB8DD664D335BC5B4D8C0913F6F57C1D24BC5F065F8E1FDD179AC8827D90D992A2D48A49178BB80C62BB0636F924E186D53C4DAEB09C223A8A9415512A842D0CAD5212B583EF54DB6C73EF2CDA7922A602BF5120E96D973E37162F411F3120B8DB9ECFE48EA69A13BCF17FA7C8ACAE7552830D68A3A81D733CD72162E76FA115F2DC2A605E6A5223685D0BFCDCA9DADB773A5BA57A5B53BA5B41F657E34009FB7598703D81462992D1D10A0676DB3398560739C577CCC2B3693FCB6A01A559AFDE13DA24723167203D7D4A1938131DBA973A96827C327B51D73932D71826E3E995CF8794F11889C3AB582613A762E955C745B0E1E9934CE41475660310EA3190BAB078CDFD1E57BDA133BA9EBECB648376FAA96A53FAFB6580F8A1B4C1AA361A8BE262BB3A336511D611C27AC68F7B5587EB3D28500875C4333F12CA2ECCD4EB75F537884176EE3EE4C9D18C9E6E8BBC4E1AAA5CB2788D9FFBD4FEBF86E3E7E498B4D393B980658EABF32F8F0CE57FBF6B06D5A79F9B0FABE6C3EEC412F56EEEF86DAC9570E668E8F37A3B398B90BD4E627AFBED9579DEBD0C901C3F4EBA433BBA66B4D5E5D4A4CF974790DCB3722A906D937B30464721D24F7B284D24FA35B517CB48248FE894E410184585783CECBA9093FD00AE4EE48E422F774B6E6FF1EDA73E77FC8E638FF7B99FF3F561B304F61F347CF48E182FFEB76753CFB743A6465E93BBBD3759161904F3967666CCFA7120D6392D49DDFEF672299DF27C9E4C2DBBA8F3BB8458353875DD5A3C789F460E9DB3CB9EDEEB319F4ED50F9D8BB91F62EFE6ECDAC67463A16C79E8EB4A7DF955FDBD13823A7735BFDD8BD5E3E3F0E7E73F64B67704EB7F1D086CF83316081040006C282C453737599DFFBDDCFF79A4838F60F151CB1ADE43F1E3AD7D781A2DE4F721314E385AC94B20485EEA2628AD704D24D44B470431957B691C07EA661C89F9B5E9828E50AE83491306C819B3D9828E58A38E3498DC95D094544C96811A752AE880889AE88D3B423141125A3459C4AB9222224739FBEE8B29AEBAD60F1F0A8E7708C90BC4448B69EBAE87BCDC304E9EA634994F330D7358CE38CED17FAE2EB910CF30B4429CB2F9024B633F90F7C3919FCC96291880E33F6234DB0A7529A4022A995CB1A83C69F00F62DBE3344B03B7AE04579E0E36343AA6B99E36343317D90723EEF46FFD8D0CCE77C08B72D7ED3874BCC7D95855FC3C9EB3E6473A2277E78B4CABAB87EEC87D19EE0C51F3EB58E428EDFFE215B143F00C4A75656C9D6534080FF97A4CA12CDB4A5789CD473388646E280C6429E634B474300A7BECFECA506030AF28648DFD63524C1860352C2823E5A6CF9FC03C29D7DF28149201272CE29B7B13F14641D2979B28E7F0A651DFE9C9B29DDC47D2099D28FBE23C8975D864F7094955C672A82D1B9791E2284C3114F6EE72268671B1F91DFA4BBA46AB616EEE7768F095939C81EE3594304DCDCC50C4DC09A0418540691BE54487AB6478B848299CCF72322A58221946CF14602A19013D5FCC7388DCFC08DB58F0E2FDEA351B09366CE69C7FEFDE12634787ADEE2ACD6E798FB41E649F124A93043CE4AB43360402C224AC790712AE60B89D0D89EC47933B870FA7638778B276E8559DBD694FD0128D0A66D85F631DB3543581C3DBB9F3DAF2E03980D176FC77982AEF7B2B0F779B8F6ACFEDC39CDF91F10DFA4796A81D1F1486C8C5FE910F7C79EA799049463675359FEC68336C2FEAEC3A6104A3BE38826E2C8A4F262B46C811112A1C4289DE5BD78AC19E6663C9B422CAFA5CB87F0CB9B51C23E64BAC7981C277C2F4788EC2DC4624AB0773666411F4FFF58996B7B96DB9D955977BCF3ED652A1C5BB330198E56F533890FADD99D7B271D98FE16F346D718F5E472B94494D7E5531A26A855141CA3E6098E10490447292D2FF8C98658AB7E1E8D54EA39EB7FD1711DBC1DF6211D1E8D44685B477E21D7F670E0DCC3BE14A3E31CBDA863BE9C6352B616FAF3CFD7C29DA7D3AA2AAB6E6458D9AE7EFDDDC6E5DBB3BACDD9B12AF33C5D2F6CC17D3C16ABBAE0A61C1C7BD92D2063BB740EADD543B07443ACE3AF7C2A05C9E71C79655F3AD1D283AAADA2167924545D4BB2A68BC0816C98173C70E8D4B47174AA976E8BBDEF23A2535060C61E10E2FE1535C06A88544008157440A9E78772909B95580EE3740CE68EC19CC56B57C758EE18CB058FE530072708E638746CD7CE23B61FCEE12D71E33936998AF0FE223A76BBB2904EA9968EA23E823AAA655E54C7235454C8655C87372608EC78842A3AB80EEDF0D644B11D9752450D597427D5039925B594C1EAC93542C895D542EBCC8D5CCB0A065A06E77787CAC71035D2E3BBC04A555ADF41036B1EE1BDA900CE2AB02A017DF608E5B3E0CE9E1147E99ED7DA7FFDAF74DD081A7EFEC445BBE46371DE1A6E539DA69B3F9BF5EC00F8F4EF5D06C0668315F8670397129F3330238B7A4375140A05D018965DBE230397DB555DF0183C6C873BC8D8CEDEA2FE3DCFD655599737CDA3937AF7216D1E0D151F752CDF5680DD5F65F5ED11CAF11F0F94EB4D78F849150FCF9E7EBD79F6F2F98B64F3ECC5CFE9B3E787EC9F2518F9E9F90B2BAD72E3CB3F6BD03BCCA012EDEFEB9E6C8A21E9522A646490CCBB259D56F76905D63517FB742F04B5685F13E772F45F111CAD8EF6B873C853C13AC9039E3C6DF72B3FEE8C37FB511EC721211E12B31F80EBB0D53AC445ED07B795CEECB0F9B83778D7CC709B1785367B83974D414D671CB2B9893F9E3C7B9B5575D3329E337A272EC7F1EBE5331D9297CFCB1712A43DAB1F49303DB8236882D73551011F473C3AE668E2125BDE7427DA626FB8738964A2DB3A85D9B2FD196EB3420099BB8291C9D1131CA42718AF1704F00323B6C46E8043C61C4A3C5A074E606A8AEF03583412B96D7A80E7172773C63EA87E1CF58B3AA6739EDCD6C053ECD2D98BDF02DAA07539F3189D6EBF96756D81D1A70C7EB499CBE6ED3EBFC9F2BCBBE931735D0FBF4ACCE602A6FDEE2EA815FB7CC9D2BFE6B21AD307CED7EC6C83BF766ACAEB7556CC65318E0D3866672B777F3FBBC792E26A97AC2D8C8D859C099BB1E80653117FBD8D1532A7579CC2EAD1A9813DEBBC1459C6956DCEC928599CD2F3E7442878A948406B51C98B8BD59CA804543F46255EA292AB26A99AF977AC4F8BCDA7329BE613C39BDAFBC28B7F03EDB41ECDA2775318A300D382318A9732C72841A2FDC4586B5CA1743D052D182CE0CAD495CE7619BF9C27593E732763E071741E6E3F49F4666E2D7B7440B13820EED81E460599588E2C638E708C40FB60F08413B9741831474A84462C2D4A68D7538E4D30DD255E2A96D182E3C46C6670280BA97FF499919ECC6A31F3F24D56EF92667D3767761C991CBBDAEDF47899AED3CCD7E3D34363565E56FE503693E9B4B72C8C66A71195ACE9092B647A539C42FFDDDDA1A714E4438979624E34126911C2D9A1F3AF2BE813D2AA4F1637C74990BC8EBE42D0D69059A71D36EFCB5B4B277D0E788F8F44177FC38F4FC91C580272C36C5843A7AAEB4255946844D0ABE945569AEF3CCE819DAA2CC94FF69BCCF839329AD3D17118F5C70A80ACFB5664F6B0D350FF687ED1A603B053FF4D6EAECF7673E05994D275FA9AC8764C0302AE315ACC17B14858EE874937CFE3741D9854DFCF8ABF00C7EE8160A3273A58AC8EA817B4D51AA8F67240DF4EA67678F2F70606CA3B83F3BF2CEDD18D4667DA9F807E29DA0E73DED2EBAADCDFDE35AFBF3B6F095DFB04DA0669CAF5B776CCEFF56E2DA00E63E470F41392D991B88D6BB8B76FFEDE29EB9C495D03B7323FEF0F7CDF07B89164C0F43C761F776901060204D7CC5022FDCB0217A85E77A9D9869D86ECBC16784DCB85AB5D99E51638C28C1257E9DCCF3E03BA7C2DBDD15C51CB5DECE35AB0A3D1C9E35E53F44844CA27A3A35201ADEE4A1FED7725F92762BEF0038D54F291D0E05987E15CA2446684922DF048209476A2B2FCC232D108E3896536854C5A2B8F2C93E96A56A61FD9588C8E0188A02DDB99FE3CAFD1955230B140214CC2A454811A186AB5F4C6C97E8B8C9293DD0E40126AD7FE0A62F3B3FA6D9EDCD6A315CD93F790BCED0D1AD0B59BB4CABF0328A0C0C23BF83C6D8F350F9FB092FBE40A3EE8F5F0C19724DF839F9E5090C06A7C0082DFA7F05D0688FB241F6B3EA54DDD1915FDF1A4AECB7506B5A76DDDDE06BE5EE549B6AD09A94F8BCD83AEEFD9E41344BA3E68C1485082D1018C98B5BF0100B4E2923EE563D15D9C7F7002E3B9762AADD7C9861E2440B38DA67C031811F906C7D192412A52C2FF46350CBC1D085BA1D94117004C2559D1D0AE312BD6D92EC9952C46D45674ADAD11C676C8923729583DB4CA2999444580E19A382DC4D816D143324BBD7A8C20510FA0EFCBDBAC500768471E2F407BF9240085549E008A5B2C004071932C0EA0AD52EAF884D4F1C2B3134F82CE2EBF93177062E60A804DCC1ED143B35D12321F87E2753FAF020BA028ADBCF715DA60A04C32089E3C7AF4D40ECE644279809ACCF62A22104F9E85071DFAB0971220988F7C59061DEB79B0E0A06308E51B740CDBAB8840BC101803E8C657D914F140BFD0661D72D4DB6E4813E833720EA7791B2025D5F08F51B2AFD4208A3E201A04A1ED51D2F6BE66F7B591071A8C8A854678A0551D84383F06F42691A2431E53760F7863F6814ABB63A5A020431F8A16C182F95AF42CA0B1DE954638622F58C7083686FC9EE0C6E80B9596916A6121879C0A13028475346C1EE41887C850C8A1C7D5A2841C2DBF2FC8D17DA10439FC986310C8215F18D37553565CCC91842CD021DF33D5A147316663AF172F3AE4F1C4F7003D5E97A8B9BBB646704FD7A145E695884FE0B3BD1CFEB15C05C0E171C694DDA37FC3FA40D5BB8DC7D442824CE2D8302A7B205BA43363CAEE0F64066E6CA814126443CA8F1628025420641C988DC947B4D086F265AF4AA3041A436C3F4863F483E28A341290C9F73D286257805BEA66085705EF105CE8D6C89809A9496ED3E9BD0205D4E0359C00936862B1E864EBE117A2ECEE5291A1AF120F4A7F1AEF9AA8E374AAE310A948230BC72AAD4908B4D29DA624C550291EC43E1BF3C72B6369ACE210AF531B0B872BA54808B4523DA622C4502736AC5E9CE842F5E2C4395241130701D4498F70389DBA4B19A61727D1A174A58DD2957B94AE0E04A5AB0850BAD247E92A1E94FEDCC6CEA7C5AD70D79253C5214EA736160E544A911048A57A4C7551D5D68907ABCF75A6FCE74E67FBE7CB9FE89F879DE39FEB4DEF31CDEC2FE0135EE0E7CB7DA10E48B496436462CD2C1CA22C5D426095D5752A7220D5E241EF2F8363BF4CEBFD5678F44758D12186C996160E638E3A2190CCE9439D78A0AB190F9E5FEA2CB15E3A5D5DBD5CFEC2EA65D835D54BBDE5544C2BA95F87672B94E132D47088C8B18985C392D4230436C9EE5291A1AF120D4A9F3E19F3C7AB6268AAE20EA7481BCB062AAD4800A4D23DA622C4502722ACE20989D5C184D573895ABCA1A54397A94D10FC323B50C9DF821AF100F829998E5F1959644D8720A69A5A388C79FA840032AF1B95D65B78D5382EE92298E3018C43EFEC922ED2041BB99C41121EBA12353C0056D2572A124CB5E24068673CDDCBE4642D6768A51A5AF2C5729E32BE91CBEB3D1539C8BA51A0B87DCF03839B0AB6C84A320CC39749CC604C35C540B168B8C485639E369E61CCEB3FD5CDD9A15E3C08D6CC5D44D4718DDF08931871E40A01C4C348650455195F96528606FDC2941B08524F5345014052AA10F0237B40097CE8AB6951404F73B98457710CBEC35837B1350980D845AF9EFE48F3CD4991E4DFEBAC56F497EC2A3CCCA2D4BAA0E5B414DA658AC5F28440712F2CC369B69B8BA08F1A05E0D1A49C8D5148A5B92D4A720E0930BE387EB63139565E18A014768118B4D621B5DCDD1E810A3E71B8E4F4819D060A812083D63A12971BF30954F089C4C5467957D9E63C59DF6545AAE21599D49C3C5C3DA166222E06FB85F946A1121E3029ECA3A5F9470447522786286EDB3F22ACD9E99438600F8F46810A3EFD23DD372AAD4FB5E259058F38525E9A4E4670BC061E1BE29CD460C13F3C42A56A845832937DA6389BC33A516155659B9153C7075E171A752AA81208B5CB8C42294DCECB4D7693E96D364E759C2317692AAAED465AAE1030A43B42458AA9563C3084EF20BEFEFE67A133DF23959C03116D6B61EB24155D42A097D17D2A6220D582E2777804FDBA7FF7589077964DCEC3EC40A98B57460BA17D265F244F80E35B5D69277DA81407D0466028A160FCC315CCC63FA2411929916F909126576ABFAF1307C4DE09F21A9384CE80F56E41D98D7982FB86DEBBE5643846E51E8E5C6AB936B2920C8806E774B84D71CED9F2301F174079DA78062BAFFF94A664A45E3C08D68A00B11AAEB11B5D28C8942A0400971F10B66A683B4E4F4E33BAE090255400D82D3E44449510BE5C26AAE4097CBCF7CD30F9A39FB159DA0444AEEED36768BD6810ACF8C1865DC5317A97FDB546AC4900DC2EFA5B0DDCECD43C18CEA9C3432D46AE8B5B5E5BA1677D895C9E6028E909A58833F8615E5A11A59319EC2A1E40B8DCC319623D82607691C733060156A71A9E53544974CC6DA23739F0C66C2D867B0F22C13C2051A53796E13E199A48FDA7A08E17282ED3852A281206B987E24435EE50306BF9C2EE42574F4ACA0443F032D7500C5D144EBC096B79417124E7DE94240B03C9459F7D6307D9087AF4973B8869FCADB1904605A1027F548477BA3ABA055D81D1FDAB13464CB5E3C2BDCA262CAF921F9C2F349850D125149E97194AD0AA289E9DE755F280DF48C20815C18280F1808208D513F4DC5A1EE0B8F043F45265826078E1C7E819CA9C565559B15491830BA9EA0BCF68930C50531A2D05DA0CBDC2E19BD1AFCA2047EA86CCFE00A4DBECD7F08676ABA4F0EC0C9B9C93FFA1A7D4CCFFC0E2CFBE723F4A1B1D72C56A7840ABB89F540440AAC502CE3C936426A1889D01B3E3CE81652767ECA0C454F00F49AC7F5401092B858B0A60F35F12D0AF97E9AEACA0220396B893B3A012331220E9B5220151636CB472C64278B8AAE8E263DE57E83F45F8F6B502E3F7AA29D7DF7A5568B0899125ACCB4733524D1FCDE23659D75E642328166C2B69E60DE24A7DAB220D553922C02B3B6C76250F105FBAC316EB1204CD0B77D89769B3AF0A783588829A1857829A7C248F95F4712C6A8FEBA8052327164C2BE8E50DD80A7DAAEEA491CA313869F54BB7FC3A12176D846B7643CBBB712B57C6AF7F5EFE7D5B42174DFFCCAFE816C507E59CE56A0500F561B8E6E1158B0F659376527D4EB7BB3C69DAC4B253D1F02317ED9A7C58E0E7B3D01908BA8230BF0532148F6E68182AEA61A4186241453256FD98C70ED0E026CB670D9B9E45D01133C820182C83A64B1C27847A710C11A2DF75474714A342E1EE139B5C8676537C4772D3492C9267FC2DF57613A68389C3D575B1C6A03B34371A89E3B4E12AFBAA718058FE059C4DEE0CB84BFD0E2E56C2374C17FA2D1CD5A15DF1628852810F59490653CD2D0F615392655DDC90E569E319B8BCFE5B4E289AD5BBA459DF8D8F6A2B84A3DC2A4CF412D45AF0E5B7143434958AE50385D25E5848884AEAA170ED4850C73904977BE748419510B85DEC8D234A1385D8945BC5396E171BA74A150901DA43895749842907929441DCC6AD6473ACD855325A2280B2A2562162584E7F2AC5B144DD68D0AD124970AB3846F482C308A92601F0BBDC200251E41C84E215E079B2DF64CD35A0CD6E8B74F3A66A0994102C6220C33356D714D9420162F99AA022A46708AB749C8A4878CD0841ADF7B18B5337009423D97850972F288017BA1571BAFD9AC2EB7E97E9BFF769AD82567E151648496A1D6C0A5A0A0949B9581E9028EF85850250E1A286A08E73082EF79686822A2170BBD83B1A8826EB34DB35D714CE1440C5AE294131AC6488624E830C2CCB864D548816ABE517D7E23E559185AC1B0FC6F5BC3359C739AE0FC23BF3540981E2C3F1CE57676FE09FA28D055125F7D845DA8A24BCE50A16048A745F286171AA160F18BF8016056FF371E89D43B06F8681BE5EE0F8DD26AE42089CE27DA5224157236446EAB77972ABF622054EC9C93CDD1269A69B26F8064E31CD96C6039AB8165EC66A7E10BFFD3F613A3192D0329046B60C1C8DB245E7CC78D27BC41DD91F2A4D0F7582A34EED350882D432F296FB9193AF8147FC2DF6A3E6A080DA5B0E04A9650C469263992F8E47402D369FF2A0C0655A97F9BD12A02652CB804218C700285A1C8F80A28DACD2F8542B38A03A9309B372D3A4960185305E58D66DBE061E3148F78B4AE353AD9018FC2329363998DEFBFF8A30489072303830D28321C93BB05FE388E307531C3BAB34DE578901502A6F1892B44E20B5D8B70A790AF845E152DF2644E4575885D2D4AEB0B8DCE5285F09EF885CECA2140E8B5669B3B787B935456F0E12954C1E1EE4B71BC3E38352E9FCE053AD8716B373CC544765561756F40CD4C54EFE4ADA04C4F552C3029E320A3182A4AA7F642F379450D4282CBE0F2BC8D078D5985FD533C6E3D93957142F206097BCB3FE25A9B2A468DA4127022742C601624FA1893D942FDB9746E9441962FBC11FA31F149D630C20533833CBA47602B9E59E90152AE117878B3D158BEB3020490D36E39F6E5039FCC94625877D6CA82494F08E4AA28F1451D9D70A894AF82C264CA0AEB2354553735039106AC292C13F7038C897C80FC6F8165FCCF6D2A88224E843E91CC16A61711F4B6ECFB05B56E4378A0DFF901D84A5A91DC16EE2CF7B153ADA73B17C1D3C0391EA2395F6C74AC141A931BFAA4DAE26588C6C5A0D3AA72E7D42BD460E6B49FB7DA2B50E2984F5F24E94F154F08943BA6F545A9F6A8547A24A5C270BEA8CB0B7C4702E502CB7C4404E238A530BE18C40B6F4E02D68E4B6D4B0ED43597C4AABBA6C478D3C726352B3808810EA6091CD3F64082794C803BE84165F462087AAA0F0C9964DEE0864917C8E158BE419668BFDEC8A2A719556F7D95A3CA772E81D410D6D81F509021138BA2956A287678032FA4A4502A45A1C10957FB56593BB02E8623FDC8AB5F08DCEA57EBA85C76FA6974FCAE226ABB6C2A99A5B8385508C5807A3FC56424ED952A93CC04E6A7FA50071AA1609F4FA3F34A087D470083DB49578A0C790CA3BF418F657DBDB1BAB45033DE95E33AF8253E02D75EB59A64700A42E74131A5743E1783FAF82439C2EF700BF4C0FEF385DEC617DA8C61F69BED1B80B28A8C3452B4AAE8D584E5BC12775B15CBE4028EE89656C3AD28ABC93DDF3E357F100C2778BBCD527D7230866C97E53749D616FF2F1D520AF21E9A38ABC59E30FCF64CB02784B6E5BC58C768E9641C1CFE9739DB140B0886B6828C5BF9C4A7E06C0926361892EA1907D2831B1C2775051250FF88DE4CBA88A6041C0B8D8AFA4B42AF014CAEBEFC2847DC25A1EE088B6B6C43D3099324130CCE8421539906A61510C05D1DD67E054E26218A3D70631AFB5E03E5522982F3C4A7A63419B0DB8266ABB0DEC3A5EA0B8E00D07B1226190BBDC2D07B61E5A7B0E4A2CBCA2FAE0B61DB4D40C3B040E6DE381D25269E78157CBD73058F2E6834C9960F85EF0F603AE8BEAFE03AF961714C7B40521932C0C2497BD0981EBA2BC0BC1ADE605944BDF88906A1306C987B51501FF755A5565C5D2450160485D7FA8461BE55D0144955A0CC0198A054439A36F95A18ED40D86F7B3963DE8F156CBEB76EAE5AF0E6952169A512AA7A0120AC640FC40D512B084A30799116CF956F28052BE25541A6F6B0503E255B679F2B47D18F5E34E65F7974DCE02244AA9E358392D840C5EC52279C097D8EA1AFBBBAD9D8242EDD9DBACAA9B5695EB33106F00AED97FA480E355E2C16EA2D7051EB7A5D0F09309E60984B29E501203AD180B181576A4B8359CC270B9BB505245FC6376B1BB4FAD1E3FC358382B6E353C27A70E0FB123B92E6079ED84769B12B93C2150D20BCB729A93328A3E9355C1210097ED30457A7847EBA2DDE5F38B13C5F50C46C9432620D2C524CE37B42B644AE309524C0B6B2C5B02BBBC567CE9591492D032909679D48427BD47DC2DF2500922BCCA148B93DA47DE822754B6067EF1B7DC49F4C5C54A158338290F83804A178304E3056290AD81270CB2FB656118BCDC1792206EA4B28CBC8E67E8E08D92C4237830ABAAB40B2B0485CC2FE74996F72B18216A50421E70061A5DF460BC9792789827B827BCB1FA43D155C501B8FEBFE7E5867F5E8157C11900D136184044658E1B900C457C0393D15F2A2220D5E200AA7C46C5499D81338E09962D8E6F702D70AA7DF926AB7749B3BE93CEB518250F4E23912E9E70EE4B9A6E99927B421EB34F9630E14E825FA6EB34BB976EF2B22A380421D24868D72612CA3BCC68E32BB9B9B15650D0FDBADAD74DB94DAB3E0BB2E2F7057E351E00C91ABA3814B4181A8D72D13C6152DE2B2A82C4F18182D2654881F7A1EC9EA2D3020B51D91B48C97699370370BDA29CD055150B05744EFFAA8843540D09FAD55DB6EBB2D783BF936A237CA58043CF81F640AA8968660BEC2CF0A3C0310258A4871FCC8AFA4A4502A45A388836E5FADB559334FBFABA156655E679BA96440BFC3A4CA84EE45A5015B412343C90CBE5037EF23E500A0CF0AAD1C0F0ACAEF75A181C2A3804E0D8444CE823850A003DD2F4AAB81BEA4501BAD617E7592A4806CFA47604B7893F6762EE448D6F5A16E9E0199A541FA94EC9B0522CA0FC925459A28ECA9EDC1D2C8706D8B81CA48D1D988416FE9149F4932234FB5AC1B049DE4B5DB59F97942F402BD5662197555107C26A0D2FF21AB4966A1E60AED5C72AF204BA0A7D0A2FCA823A0DA89156BD304894F7E66B5B98FE0D00B3861B174951940D2CFA0D4480ABBC6A7154FFFEB0A9F6F49068995FA5CDC076BF0153CE3A057EB92B4203CBBE8C016F9C491B514DCF7A507CF06209AFEEA637431832CA95F0412F55AFF224DBB29852445A6CDF97B75921630B89B4D8B6689671EDAE894B984E494258ECD014221246D331371623F46CA19C1187834AD5218060D51FCA245C90C719598CB0D73165ACA61D14262B740B4B81158CFC788CFA905BCEE60A2CA64B662F8D855AA319A097C58C2051628927E965B2C4491400D19E40E701A23BEE2F37D979B2BE037E9663B3BE5449C3765199007F29301A42A2C552C64FEE607A421E5CD17225C988B4304CE9081AC50E459324727B162592F025A771165B3ADA9299000EC9CBB4D95705AFBF711245963058BF4C7765C5443645A4C8F64B02A247195B844865E4F42F897246CEF88CAB927C7CA174EC26EC89814261DE9C3EE174553FA7DB5D9E344CE8F0A9B51A526D429B39E8879B8C1D5110245AF2724C4D7D7ED46029E32767D69FA110C4A234898680E7C0EE60159CB7813127A6E2104B9B39DD7E4D61C0000F72EC98DC491A1DA6FFDEA7B58C29A49132FD02563BEC10A32B9132789B27B7BC696828539ECFB8312149209F7CDAB639534E5BA4C2E28FA4D8E4DC28B92F559E08A994C1DCD990A294B7D0EFE770B88E9B69F25940C008DD95934B04E7608E5B418AD5E67B1EC0C642658944E24899202F76B3F860CFA94B58C13E167836A25C859B242467D0A8709545862C2239DFB202BFB0B9F545121E97E94D95D6779FCB6F2973D18E962B30DB26D537369BB644CE40B2C8575AE0B7CBD5B402E0B9D8A77BEE8276A25019CE484632D678468A15784D896578ECD00C400A0CC7CC0B3C7E487A0C0576CF2F4E788CE0556005162F2E563C16F03E9D028BE1703B8FCF748140C20CB942C1E285DD6251906B3C93CA130C3905ACC08E3C65C5E34A9F9A53612E8DCD682AA57D99FE9C0D6F67663C072563D5EDCF26D5F7B3E22F80F67F96257B4C30E81498239FD7182C9152CDB5F28A0325F667118239B2BF8D6C38E3FBB8D7C3DE2C42CCDEF11D28C90DF8E95B0BBBC2F85567D475DC64A636F3A5BC860F35082FD64633F9C105B784819586AD66B9957A4A75CDBA0A76ACD4F392586950C6BA95FA49556EA48E505D2F486FC7441D2B89857A45661B08DDA7BD5E95C54D566DE1D126868DB8B47CDD78555896127D045263CAB019D3FC73EDD4FFA1642794565125A48A3D3BA14CFDD969FA802435D348AAACD050C3A691469E0C1B615FCB665BAABD2C867C96A2ED8313F035C0E858B6E89696021BE01C189AF33F9F99E98D7D45636B8E92882547288DB5477930F4C73F0ADA3101FAF58F6302DEA17C5A7CC6717C6D13300EDCA326C03E66CE360172FEADFFE648DB80A2E12B4092B2AC807E4315D88262C536C6F81DD51A1AFA6F197C2C304E80327B113FFB698203FC74A7920DCD15E7030027908ACDEF7A55C5FDF5F8904A08EEEB31354729848223841CDDA7A3196213A09CD8B3807DED85F31F4DA72ABF703634B087B7B971CC31D524B729B29726B40F41ACA4145EC792A508A6BECDF5D359710F9C535931E37211B98676532DAB4643D8FA36DBB3694B54C16A13B586766325AB369BB8863159BB03AC6C3140ACADDAC589037B01A681CCB5D231D7CAC05C2B17E65A7937D7CFAD033D2D6E7951118F5A43B7B192558B4D5C7D9BECB9E2587CAE370C9F5B1E81CF030CBE17F00B1AF8F9725F28D908ABA0A11C5ACFAAD530C6BECDF7CB80E9CBB4DE6F79AB75711D0D5D89AA56ED48F2F66DCA978A33C04B3DE7FFD2B2DF7F19C0E5FF3A7EC255B0CF48ACA1D450C7AAA546A69ECDF5F4C9F461596E2F845A5DB7A9924D8B215CBD9B8CF8B4AD6237BC8A8E9A584DBB16C459FB36E353EAF0818221A94A1AFA9275AD1A9362EED89CD8E796491AE9F7218454F15B0EAAAAADEF43084FB69D789D30D7525D6B1ADFD3A80A8A1A92F5ECD98EE2ECFC0B1B7107E91A975B6C408A5E4D4BB29ACC7CDD6156451352CC191614DEA4B46042F5130224B9868EEAE704F4EDE7FFB8006C764C72A86235764644B15E543A446B16A3D21E7AB097FACC4050ABEBA53E3F689BCCF734819EC096438D432D568F5D896739D1917055D60ED1F66E78CE48682B069530B022883961DA7023551CA491BC7C18431C5DB0C814541047129AF6F07C3CA76B54EC8A58640A9A889D8FA6597CBA9BE9C2B3042F6C42E1B10B9A9E738C63BA902D3EC7C160E80F37E8D570016E103285AE46949A8F1B8419FBC403CFCE36A6A9410AA5596A24D6984926356DCF512367CE5A99D905966C26898A78E47ADA49E2A259960B17189D979BEC26538E8C10720D0DA75AF6AD87F0761C8A63CDC29B1CAFBFFF59280E56945E433BA49A7DD3A1CCBDEC3B0C978BAFFBFCA5EC036E1C4AB16274059EBD90DC20126331783A86D8D8E294A044629F91505195F10F7BD619FFF0659C77ECE381148DA2FCEFD847040DADF1CEE931412219CE35FA6F994D287A358DC86A325B296D0C70997376EFB81D61C386AACE0827D65050D525E99BCEB7636A1BD5C19B01D69CE1CCB79F42DBE4DD6810D2EBABC6BBEB60C56EBC4B10448E2CEB369407F81C6A7515E5E1BDB1F57C47F7588608F9BE278F5CAC20A716CF78C2AC15CACC1D0F5BBC59D94A9C43ADA3996C2D3EC76ABE56E303AF29898EDAF631935EBE3BC3AA26DAF3E1E7F65167EF6197196957843B11B9967222E4CD375D40ECA96D4BB32BE8EAA8B0553DCB86DE660D46F3E25D2171052D3DC53B43F3EDE86F7788ED7F51C9752612A49E89DB472CE07072415A110C75417E354B969644875C7A4D9D2511E24C8B060C12E57BC05C7A1D25E5BBC0734C186AA42B6C04F32BE828A8B0153CC77EDE378319CD639984956DC97DC8424563D63B16B6ADCA7AB20269839168D9C617E93E91B02CA7028752F809995181F3517ACA752CFE28CDE2E825DF02DA3037D700934E591F6EE60143FBF8C94340A5B6BE4693533306A7885E306404D598039291965B342245ECD926E47589B10D91ACE3D78C84E13C538AABC95416D6E61B164FA32E35ACB815D65EBEB4FBAC985905AA1C7A1D9555A03AC3A2FEA13A66DDBF6624CCE719525449A6AEA02EDFA4E8F30152838A5AE00254D469F300AAF4D14E40AE841FA54F7664FA7F356806F9604734AF0E4D411D756DD5816966CD60B0E43FC180BDE43D3D9D409B599705DF2A9A9C589D207C8042D021BA4D339747CC27297C74D1F80A8551EF0CB56759A767E2B94F865605DD313DE261B527C4DF3838946ABA8ABF6B10CF7E28DACFCFC70CAC454D701AC25117801A268B0064C225298752513BE1B2D4D062FE96A6C46339989396D98AA257D38EAC26B39B34081032974C30566C483CE82371697C6A818ADC4A4CEB495E185265EDD2C391AD8ABF3D88C83554137F799867369FDF1DA8C6C5FE8D4FADA19FD8CFCD325D407747C9ADE0F2C83A1A9E89D2DCB6EB231B60B93FD9FB63F3CD2A19CC7C6A754D2543798E11BD8E64A46D3CED0820CF6E8B74F3A66A09647614D655535DC4426663F2E913456B0B9BF4145FE33228AF4678D54C14575EA75831B397F99D7CD34F6C5801355F437E259619190F110AAC27E0EDD368E2BD7711B9866AE29DF79976F3B9EF4E3E4E794D3F2C293422A79292B6ECBA12830ECF6CAA1994D304C3ACD23EB3615C656C52E41ADA2A63D3C49441B17975F606FEC999DB85F43A3A4ED55C5810E1EEC72F76ED0ECFBC2AD8AD27D550AAABE1C05A3D6386A1C6076D6D1C406D5F8A959E1C2788F85A50B49CC3A5FDD3B5E223A50427B7C7C16163D36BBE7C338C3472D907D2D9461819316C80BC4E6CCD0ED2D3DC24955C05E9B96D756B783EA20DDB949ECB26A9E46A484F60AB5BC4CF11CCA1B5CBB42EF37B992D102AB90213F16C5B20AC3CD8A26B8277069541255760229E6D0B84958F4C33FD7BE1D7E3BBE14C8B9054423508628E45A667CCC54621B9B905C8D08AE4661145A6A482E42691AE453C5E1D429A144F320C42555DC4538D8171BCDF09826F3DE85EEEE35712EA29AE2BBA1F445452BA24C46FC8C3853FB271955B7FDC3AFABAAADCFFB36153DF370119ED2B5C0714D4325259E162A025E30677076AF70405B5F4D556BB3168C3C0DEC2D92F499525452378F60EA5102A821072CCD353484D827272FAECDDD090786F8E4DA8A481783FCEC0243EF7E0F066FB3FE5061A0855F519FFB465A0E14FB681780CCD0C042F5049134AB30985FAD0F41C030D84520B3138BAF52D63837CE78291A849CF772FFA9670EE60C696E01F828D3506A19A0A23BD35A34C1C7917062D6EB6417E6A83476BE4A80D1B35A3F81D30F2B4CF1499820AD2B4CF3AF6F09CBEB76B54E244143D88CC7D285AC08FE350F31A5A2E43CD5F285AC19FA7F850169FC0302B5BBB0B9D059B90AF0B939E651A84506C1D3647878E036D50BC28E250AAE9225EFC1899C7CF2A076DB17F548937A478A46AEA2035AC9908E5C98A67A762EBA612AE8938948A4A0957456676F2B82E828BF5E9F8B7F8051E3E315F316E1D96B93062A1BDF86C1D8E3EBCD1FE0F3563A1C4AA5A21756C1A0B65EBD158A240904BABAE93282434B794BFD8106F59BCE3CAA555554CBCBB6A6A2E9F3BA9B065F5A78944E412F5D41F27A2C8E5B6F3FF3C11DDACE8A389805A4733D18792B956F3F57184DF32B549AE6347B2B289EAE48EBB432B934D098C2EF97660AB0B647E52FFD512513547B60DE837C5CB2C21BD8E92E225D75C13FA597DD1ED4AB2D6892BE82828C95A37D77E5EB3D6C1E635F26B0BE9255A6A64D8A6E9E5460C90639BD1AE7406D7CEB22DA8E5C6745E677176D3AAD3B85A6D23ED5527722BA60E3F95EB64A01557D035806C369F6B60BFF3B94E1A5A71052D3D15A6F45976F438A96BE5A295D4D0D251655E9F65C4D033BB4A425A956AFA4A4B52D25A326D80A4B4679B1436D00A76DD0F03DAA80C2ABE763431CB646DA9D84A0C3EAC976E7AAA9680C9D32C07ED93A7ED8DAB8F3B4938C9A1E42BC5AEC0C9443B520AEDC461E9D0CDB52D3E7B9B5575D3367B7D06FC4196E4D97F4456E2D28B15E355E3596CA2971B8DCBDB9FE9C4710A9F585931717C32C3623E0393B6E99FA1D3CC8A5B35B8F1C8C5FA716AF14C3792CB2DC7E3EC186A53B372A4316955B592E3CCC858BE51F6FCE244EEF07122B12A182DCF3480486E149C9363DCB48D897602281AB9ECA235BF96117C2DEF91F6242387A0525241325A74ACE17584BCB858295884A012AB8113F32C02A8E416215879B3C8E5BEE0FB8B89402E3CA49B6D828E8B631FF1CB7992E5BD93E6A98ED188E5464979061868E456C0B8B93B918835D5FFF7BCDCF05EF560D32A6A8254B1681F942BC34E48B1757B09070D41A5A88D70F81858C7CB407A3964D2138D249C482C3E46CBB3C648243707CECFED689ADAEA33C208023126ADAA2A5315AB1642D83A86CDAFAB7DDD94DBB4EA0F3BCA0357410DB17AFC8A3CDB9135E42614B4E1DB90442247657392F5341526F347BA332DD99224B931EB9A8C99AD5777D9AE3B072C7D018B492AD493558363C481546A3B264F0FAF60B5AF4A5C3549B3AFE1D31EFDA3F2DCC12D2017A8C7AFC534DB442EB69A80ADCB914C34DBBE76A26AAF91565DABA18A4D4B8D3C3D994998ED994DA8A68C30C7B38975FC6576265A15DCEEE5502A2B24B8DF6B68226F177CC92F51AB76F5A0F2754EAD225F61A5FA2C8BB22A8A6DABD694E5CF74AF1E778C5665D12459915663D9ABC757EBBB749BF43FBC7A0C48D6E9AED92779BB38CBEBA1E03CD9EDDA45CE54B3FFE5C1D52E5903C556FFFDEAE183BFB77951FFFEF0AE6976BF3D7E5C43D6F5A36DB6AECABABC691EADCBEDE364533EFEE9C9935F1F3F7DFA78DBF178BCC6BEFCBD22A41D5B6ACA2AB94D8952D03490147E42789334C9D7A4067DB4DA6C29B293DD2ECFD6D03C6FBEB6BFA77F13E3EAD568EFA1C90E986D66E2143E7145776C5BA19D9F871AEDDF43ADE6AEACB2FFF41D5281B8E7D1C92E7B7456DC54A033ABFDBAD957E9A38139C97B32F15BA075FBFD1B1A204530C1AF0A2A5FAD933CA93E55E52EAD9AEF0FD007B6CE36C04265BEDF16E4AF2472F99C5E033BBFF8F92A5D572D50516E78893AC7F6FF714EDD2F3487578F09CB90DDF298EA1762A8901DAD0483763215A4D59F8D04117F053488ABF3AC4E62410F05D3BE27C9072F51E7381DF72039E225EA1C3B67CAE7CB2AD7E05E36497EB14F603F108CF1224D9EEDE95706BFEE674D5E70F26030EB7FD7E99DF16616DD3D589101CF8F0587635BA0CE0FB96A47393ABCC88027292356A0CEEFAC5E95DB5D9E82F50B31FCD002757E9760A2ADBEE1AC86DFA2F19FBC233EF3A7D069666FDB309949651CDCB84F18B5D0F31EF2B33AAFF7098BD5F4AB3AA7F36CB3C9539A17FABBC6B49EADBF15F4D43EFEAACEE96A7F7393FD8DF3197ED3B0537A9FE68491BA9F74A6BDAC7893902E75FA55C33D674D4E7AE6EE27751EA7DB24CBAFB2DB22694703CE8C2C53E7FAE9AE6C4A9C59FF93068FEEC1BC4FD99A968C2CD3E67A567FC9EAEC2B693EBA549D733BF6DF27C5ED1E2C33BEA5C4744E156AF450910049CECBAF4030E06A882E220B75F97EBCB9C9C112073A2E0667AC5863B4F51B05D868E36C1EF0B99CD56016674D73E3CF3ABCDE56E57FD2826435FCAA39621803459BC738FD339821651AD84EEAFAAFB2DAFC91D47704AEB1128D7E4CD7FBAA9DE79A644B208F28D2F20D45FA61BFFD4A220E2B30E2C7B1289B42C3CFFE55BE4DD660D6EFC604195953A51AF349B9FE56EE9BD362D3FAFE3F9B3531B7D0C506BC19329365EA5C4FD6EBB4AEDF0288A69B55B92F88F53BA358CF83D291C3F46B34C1287AC27B9527D9D649644AB562109B2AF070139DB60D921C86DF34964EADC8DD17397CCF69FC5993D79724DFB398F5BF4789B0F7E56D563847186C6526C2383CF81E0A9083DFEEB30D391710455AF11DACF32F3202C30A5CE13802B474374E1C83A56D642656D82CDCBA93B64D92CBF05B349D89DE5973D08DFCF4430A1D28AAEC661EA1E381C86201F4F4AE83EEE21F5956E82E5165677BFA8CCD7CCD49BFBB3846EDBF4E3F6B2CFB8A7B6098B2A27673B1029DE9A5BB0642B2437FD7E47671C264D6FDACCB6BC5E6B5D2EF81D3E296F2B8E8EFEADC68057575837B9A004797FB82644514E9EB7899D6FB2D352BD0A51AFA529DA06BFFFEAC2FC906F959E30B497F0C94FAE482FCAE21D9C97E4389D5FFA6617BFCF01F657CBA58CB03753B4D0C3F3415682CFE4F3E13EBFDF6079D8DA74F60CACC1262CB08F9596B132B4F6EA92D2CF85BB8EF47FDA958EAEBD6F4B306BEFAA4082433F4F798A67E5773BED964EF7196A7E3B2F1476D3E8C913AFCACB155996DAED2761B8EE4861568F1631F78C10A5C7D65E56FC88E598429B9F0223D4DFB83C22C5D91A2705EF8AC0615398E142DD198A599C72E4C4E5C5C95551BFABDCDC8AF4958C1D19F4EC57C7FDA7F2472E354D9CCD55C2BAFEE0FBAEAC5B2993BE82D414A7785FE12D6FE517B0CBD0EE2A2C7F87762547A4C54FB07EEB1FE1281A3FE625EA050EC2D4E5D377DC589EC0CC23AF55EE7CA02ACDBACE08D6A4C98E9E79810D4D9C815823AEE6608E2D5FD41473B7A021BDE6E74D063441B33CF893339385B705A3E2A8E2AC2DAFC43CB34167949719BBEADCA2DB1CE9B7ED6E4F5B96470FAAC758EAEDDD5611E8BC10AC29CCA1A2F54535D801684593A2DE128F89BB45E57D9AE1DF5E4F177A440E3624EF9F705B9241E7E8BCA5362C9C01D794A511B8AAE52CC6229BE724861C5DACB197ED7E736255CE6F1C529F4B776E85B3078893A47F202252931AB5C937B97C496C9782AD2F2FAE84577CAF3E38587E1B1A78CCAD4272AACE480B7CFBA4C738EB6CF5869F51477CFD85597E200EDDF2B04EB9FF3647D9715AC2D77A464E9A1E7C509F75B2356A4E5D84EF9DF2F4F0D795EACF872AE0C799EF3753F37D33D06E71B6E2BA31F16AEF6327AF6669B19DCCA6E5C9C7D87B488FD91361B4D52AC5397FB23481B8641BF90831B3CA0CDB27633D0B29013E92007EB5B3359A67144C7C135FAA14E970089BD8A18CAF4B9B61FFEB382CD7528D3B72ACFA2BA7B147059406FB763057AD2A51BFAC62BFA7B945EC6B98B99E95F9674A6D759A60BD138651218F2678D582681267F6BD9356CE6FD88DFA1B452B00F18D1A5D1381774867373450769C0E47A8EB0FA0FFC5D0E7F47C9D1AC206C44716A90F058CA7ECB52379C5F279C4811161CB79B8FDBCD6A1C17B5DD2C7C15D4DABE33BF158D1D6811931FD3370E0EEA9F65C9715D5D49C88F6FB6BDEBF8AD9D169128D2DB95469ED1A2F7A5B142BD9D69015FA2509D6FABDF650A46584132C54B346715364BA2E8E8FD6D7A7F3E728047F82329363998D057A78C4B1368A121DF8B95806F5B18CD6C45A740763059C9D2462B4C5572163FEA3A0C1E38EEBC88B3FD7FBC0D9345988C83A3FD7FD82CCCBD7E99EECA8A93A59920D0DF72A10E876105EAFC3EEED2029811CA8333C44B742C50D66C8E78496478467AC421A291568C312DE4E106D557D906FCB201AA300E492025BAE3E44BB2CF1BD1382108D4F9B757FD684F3AFDAA11F4723E3D996F648BF6C84DB8C2998A7208D3AF3A57635B7749B1427E5EA66739806317D47870E8A590568CBD9490C752BCD41230BCA8ADAAA9235C1D1EEAD99B1D1EE256760658AB990D5CE40F505F8E70A55ACE353D87B73C8DAF787ABFDF493D05E3F211181E879329953F9D75942AD4E0BB6EB27B925DFF9B4E9C7453A5F5DDE7F25B5ABCCF6ED2CF19A92F9B4243CE3C2FFF02CEBBCA6EC9C30E4491CEDAF1D3FE2B301CB9701C7E8D6C18C299D0ED06C3D0C4BCB5D8016D2FB839BE78DCB470909B747A82B5EBF3CFE9769783658BA35CA5BCE68C7297AA3373338C5009E873DB789919D74123117794264A607983942530F98651F45BF583713E75AFA938EDC7BE8D195DC8E5B08CD59785A077B3014123F15ACBF8A386660D75C6BBFF49E7DBFCBE682A62BE1E7FD4FAC6DF24EBE6535AD5E4D578A228BA51333E6FEED8FB9905A0520E8EA6CE3E5B2D2F6507AB3CF4C46CFFECCF74D67C9D02A138C761A65275CE9FAAF43E2BF7F5F80628C6992ED597797C90912D3452AC11916FB759431D379C7ED5D03F2D3600F684DAC38F5A8B5D6BD97EDB177A1BD64B5A5881864FC4D32AB3387348A2F491CE1DE44CEFB8D48082888B78FE1029D6387696D463B48C9F3A430B7464B59BFFC6F68133E0E58B1A041BEDB3E194CE54E1D135A0E5BAAE8188009C7807491B2A1E42CA62195EC2C5DDE0D66BFE332DD22A615C21200A3576CD234C8C11C3C1D608A6F073205D05A222E8B59CCFE7586B33277709AF25ED1F9ED475765BA49B3755CB80E44B971E51AE80F2D3EDD7147EFA868BB19D1B70938D18605ACEC2D97464F9D00CA2C9BFF7694DF16595C77370F00B586AD217A4A75F352C7BF6A6DF00A0F325E3451A3CF7EDA76FD6E3AC78893AC7F765C37A0218F9597F8781BDB1A015AE67DBF4E3CD3014F0601D2FD2F968AFF3EE4778770507876B77051B99E7AE382C96E2AE3E561B306A1843002BD03CE3FBBA5D59509FBB89224D9E9C7D3BB2CC7D54106868743ED8C980E8581B0C035EC51FF47B63FB009AB39C1A0373836EE257FD413B0ACFCDE232038AF1533F32063F68CFBD2BBFB6687675C51F3E61A8DF59DC9A6E7AC9FE9ED7E021487EE8EF1AF37552DDA60D2BAF075E126E7F1DC4CFE51674E526A15992653A5CEB32BF6785147849B89D0BFB97C5C33F12C7DFC71DAC4E6EE14EBFC7E4D7BAEBEACE5EEFEED99B79376EE5A53838BBD94A7A7390CC909F5DADCBE31D8681B3FFC0F7C5FDA4009234A536A2D438FD98C3EB980C883C28784C06744C06A4C22B966440E126832F4995258E2E314EECCD7C3EB7B23337CFF0C7A1379C41BDDE0E0C8E484934A09AC4727569DB1C54A2CAA17788B80058CE8568305CE034E1EA183CC2DFCCA3F06BC7EB52A0CCACCD26AC40676FC8F61B245DEE18E6D75CA2E860BF368D7DE12E3F9DE1C70C41DDD01E2FB09772EAA266F8A7A373B2E99CA6571904CF5818BBA9FEAA89803F9BE2601DE187B28037F400929C8C2F84BFC11013D67633CA1CAC08BA93FCCCBC3D785188B358C0B4F40C30FE18EE13D659FDB91B30E4F6CBF8B30EAF789FD23EC44F56817C19DC6E76792F45D880823B93D45FCA6EB8FD493FC6BB2367E335DC71839AE13E480233FE9CE74B1904DAB718589E852832E049FA03ACC0E0AB00C39DE245063C29078816C4E5B444EFD75B735CA246549D9798C7521C989B778F88AF9D3CE60CB2901FFA8E6F201D3F7C2D23B273FE3A9CBC155537797C1F2E123F797C29EEE8257F242F09BC5CE36AE9CBE4ADE61139557FD00F1A68F660271319DA80418789AB3BDA76DD7FFD2FE08BC85BAFFD8FBA178829DF649079A37BA9E3CF864AA83CFEACCEEBF4EF5D064C4A31437FD7F88851950DF4DB9F3330A71336A30A23827D7BEAD711E0E1816213A8B32BFEA89EA9749446F46C9342266D0326B7C584D57FD0CEEAAC0DC2E58B7DBA77D36D78132607B8240C9CAD84E8DE33F8A615F937A81FEF0BCF55B679F2B45DBA7CDCB93AACC8E5AF8276617567589F7D2AA407CE9F35BD75401485C1689B14E48C6034FCA6C7E5E39E956F641F5398D482E8D9DBACAA9B1649CE603E356108741183A56C70211739E83D03AAD0882F390088A2A860F733DC7303BF3943DDD88221E804F57F74CC8D1F89E9EF9E484154787B7E71E20C6980B721C6983597822EBB5BF6E7C92DB06A46BED085FCAC837BB88823937F233F6BECA76CBF96754DF1427ED6D84DC92068885D94E147753E6FF7F94D96E72DAC705E5881EE4E166B1F4B8B4BFF2C20C167FC55DB4E5FB2F42FA6ADBA02757EC3C51E8CD7F8A39E86671B568A2FBC449DE36BF24DB6D77A2FB18DC3038E60CED0E9CB34F4BCBF27D46B7FD0E8BFA4B8DA256B6AD0A0BF2FEB3350C099EBC5C5CAD9CC05781BCE5CCC9A4B99B9AE9AA46AE83380C8CF1AF343B1F95466A473997ED5384DB82F18E96E861FB5F8D099E9C71FA3C2F62FE74996BB5C040C0D18A29C5F3DDE1D965EE4F372431D1D208A8E0366510306E93D27E305E16F305C84B57FD4CF26C085BC1C9E8770E6E3C6160C9D9CA07EBC5E6E78118B95200E2DD1E748C685E8EF3ADF60E63D7D1110B1BF12EFC238032ED990217EE56CDCC09878378F73F3012D3EAE795421E8FE1911BA1953F8397D38245C27ACEEB29DB3B405087F33B3F36BBB19EC6D93FD4E16E3B22E5A7448F14B03BB31A9BE9F157F0115DB5C716EE0C068C804174A6CDC0004DA86EE51E4E71057AE5D3C7F0155A21783C8CFEABC4E9AA6DD92272F72233F6BECA556E5FEF6AE794D980DF9D924BCE40597510DD372FDCD5D0276017BA53129A8EDCE57DB7C18CF3CCF9AF043429F969E8AF088328DC10E1FF0489A84FD9830A3589DF7C75D5A806E86BD89B3C54B3466BFF42F06B7E9574DBDBBC3D20C8D87025D3BDA7E2405D6FCD465F568C7DBAECC72066F8A42B305788BE78AFA9C4796E96395B91A21CAF4B88E9782D88C89E2835CEC9097B956AE36F7580D99A60C93B271E3D6DD5E8C8B24181F0A5765D12459915624C9D87AFFCBF8EF7AF8A1EDB3E4366D7762F37AAA77B5BE4BB709D4B6DE25EB7640000A78B2AE9D14BE2675DA913C7C004C739F6DD20A4C70DF814DB78F5A824757FFCE87430103C17952643769DDC0FB3BBF3FFCE9C993970F1F9CE45952B7E7B1F39B870FFEDEE645FDDB1AEED02445517611FAEF0FEF9A66F7DBE3C7356CB17EB4CDD655599737CDA375B97D9C6CCAC73F3D79FAECF1D3A78FD3CDF63159BD67ABC4E5C9AF0397BADEE4285691613544A360059F16E40ED2AB7FA5DFC92E1EC07399DE50B7811E13BD4D567F45BAABB1662BCAEF0F8BFBA45ADF25D5C307E7C9DFEFD3E2B6B9FBFDE1B39F1E3EF8B0CFF3E46B0E486E92BCA6B049F27D0D7AF4C5CF57E9BA6AEFE60878BF7CA2CDBB1B1B029E4F9FC898A2C344D82BED5CC0CE64A3D633267D32F506FC2605DDE0B85FFB2901CB93AA98EE8A689B0FFF708D344422FDB7F6CCD2DFBF3FFCBF60C5DF1E9CFD9FD768DD7F3C806FCBFDF6E0C983FF5B5B083C838E9E1068DD594274CFD8CC1185E6304FA036509A96DA882C268CBA1419339974A91F67702192F090C356A9BF110EB87DD141FFD34B5436107CA88BD686659D601B30C69AACF52F9A6A12797C0CD4C438D854134B083453CDB31A49D2D4F1FA9AE9836278190537D3FFB64DFEFEDFC5DA293BEE93F621D935B4757BA9C3BFEF66CF4C78EF29D90A464916E63C9AF3FBC411E3F36CB3C953166B852E664CF8D9FA5B618BD9D5FEE626FBDB0AABF7E97D9A0F9C9AACF86EE21FDF95597FD863E6D0FC9C35B91D139D6E932CBFCA6E8BA43B1C6C81E5A7BBB229ED70AACA9B2C4FC793CBF6589ED55FB23AFB6AC988ADD7799F14B77BB01CFA967EB7D331454B7B5E7E05D202076791E7C79B9B1CACF8A0ABB432CABA4D571BAC90ABA3E613CE59FB75E03F693187071C16425FF9D3F31746630D49AC682EDEA7A4AEFF2AABCD1F497D67A70FD3F5BE4D6802FA726B076BC00B14E97050DD2E3F2B26FCFC57F9365983F556372866F17A5FAEBF95FBE6B4D8B4DE1DA6BEE03B78A5D96660385BB493F53AADEBB70078E96655EE8B71856E327FB52E831D44C862DEA126FCF91F0FCEEA3F8BECDF7B50F0195883087B89913567493F2C9CDBE65779926D0F645D3FDC5D36587A745555D71C6AEBA1D6B2DDDD1B0B031D72FB92E47B137646C8785FDE6685093260C5618F92DEC265D41888FF95323EEC32E8D997D4E5F82324B3BC4CC1B4B0CC3B24B48DD043277051030F2FFF0083B46DC2040571B989410B0369BAAA3E7A76DADF3B90A9C27065AE6CB0699BF8400CD61F11D7DE2C9FB91FDCE758D16F7AAC38ABF9B3E21ED8ABACBEEB0B80549D25C29007415F82A9E67C012E4E0CDB6F2B5A687E65DAFCCA02004F8B5B832F4553CD590298587EB6D1E18E2B18BD97FB42BF75ACB215E35FA6F57E9B9A77C1507F5E4718607036FCFA7B5DFA2D8F15E77DA4ECEF26197CA21C6BCED3FF64BF31501ED69A073DFC568B01F64806B3C469B37AC00D45A34978A83AEFD3ECC9E7A1E92A4D72830DC84F2086CC927CCEC6CD59FD364F6EE771B0F2FD0E39CE36F3AB059A7F4F8B954E307A3851A8B56F6A3D2F7AED65B6559C6DAED276E3547F802255670D50EC7CB5B60843D55922187FD566EDBD632FE669EA83569E6D54E47A91BE59C7CA4BF7FF6735E064C185DB38DD735556EDCAE66D367DAAFC019C38EB1EC7625DB9EB1D18C4051C2DA666B1C95B1D2DA66CB1EE4CF661D8CB3882B111BE580BECAEEEC0EC00AF46B8EDFA4EEB03E97AD743053D46FEBEBC3D10AB4571921C35ADD91ED9547B5EF43FBDE26A1EDA8D0FB89AB36897F816CEC258397685650C31F8C687D4B77A22DA5AE4FB831CFBC61E37B73049BD2EFFBEE0AE8166FA59FEDBAD47473B77113EA456D65F837735AD08803F9668EE28F1A764CDF9B0EE7ECEE436BD84A86769ACF2CCFD0EE2E9C4E324C0E584BFBA68A021CAC0A68A7EF665DA317974B407763712ACF0CE93F55D56986DFC8E750F24A4BE38B1F2DD0C78D5534B8C2E5696189DDB51EDC0BCBCCE56480FF603F18151B81F1F1B3243A2A3C3D99021D337E9EF854CB5E786EAE1E7D14117B3AF9778ED38AEF50F3C86B452F339B59FACB362DEDC48E24DCBEDF3003777EF03AE5B4AD393EE487D9B6275FD6670DBD7C8AF1D88530B74F6DA6E2E0E7B231763377FF8DA49F26125DFC8D193E879925659E6B1184BF7999009F0405C898FA8128EA5E3FEF38FB8FFAC210ACA63DEB9FC7E26789DB8DCC356DD7AC638CCD2EBB80D1EF906C9711B9CB10D3E0DEBA3E73F20CF3F385998D33F822F8E969CFE7842607EE4BE3A459E749EBBB16D8955ABD565DAECAB62DE8A0BCE2636181D6780C5CD002C8002A7F247526C721061AC4EE7611D6175B15267A53C2F9141D981CC4ACED771F0587337E40FE8EB00D40ABE707099EECACA603E65B0B0B245CF3F0CA6C4E623F60CC40C079D97B53E1F4D5821D63B10605D659B4FDDCB11466705C6BAF3CE0143E37E49F679330FDD188B9979042C2641BDB0B7796C83139C59660EDBCEC12E7AEC07387040A1F4E845EC7991D8D0E47EEB6232DDE1E028F445F048AE4D5B9B7BBCDC290B7597D05A9642F66B2794898CBB6E765A7624273EFCA837C32F9DAC9BEC7EE460F604C04D95D677F0F59EF7D94DFA39DBCE9328CFCBBF80A3ACB2DB8CBAA422329DDAE7D64FFBAFC0760E96E8C8A2E0B8D474B8D48CE66CDC8FB5E6455F22EFBAF473BADDE5ED11A8C3803AAAA0C98159B4F6CC6B0313ABC1C6F3049AB8680866848C03C384EBFDC9C1749FBA872B0EC46ABCC03D54D47BB2D98008C5CE2316ED392D3B52C184FD959DF744E0438FEBE6535AD546177B8DC6FAE14439439647F3F40334076B5340D0B9288A6303D321D9E1C96973A7F2A94AEFB3725F8F6F415AF87A8FBCE43C230CDC6EB3A699A95C5A6C400838EF048085DC68ED13A80DFE7290D1412B3CF7A82E4323A776201E2D82BD3322B6317763238359E2FC91D463703A0393B61368447A940438EEA24EE00BF256DEB45B9A4720A6F3A357B0E515A20828CEEAD6D58F869DB5FB19C9CDF648FD88F38FA8E8DC7D0E7857207481CEE64086AC6025A0EB82EB3ABB2DD2CD9BAA65680813928903ACFC70103EDD7E4DE19742B8BED91D0A72A3380680D8F6DFFBB4361085E6E0F4749326BB2F60C56792EA74A837EFEBF8D99B7E496EEA4E300E3607EDD5BEFD44CA7ED0D2EC89E8B2B1F8DEA995EBC8C0057DBC197CC6DC00DDFD43EEE4403ABA398BA79DDAAA383EA5B91819886A0F15BE6ED73D333F6942465676C5A288099421DE79D50301B6EB6F5FED0B38F0F4CAD15C3AB7F88FAF276818ED5DF9153EB47418D68A62EF6418B6FA224C35E7E57349AADBB431BB4F8ED69DB9B96D771B188471E5760BA68FC422CBBACCEF67CC9D28831F609D1FED9DC7089EF7616DA10EF070B0FD3EDEA63C94582A0ACF1DFCF67DDFA786C36BAC6D736C597CE92D8261AA9DE6023E2E7CCC757190A3ED98EB4236831D735D2C6507C687B78D2EEEF3320D7C49AA2C09715BEB90528C46B1070C18F59D6924C458D7C5158189FF8100CDDA77252F373201C2E17C703827B6030D746845B3DD2FA4AA9B47454C54B1F11D328A00412F91D2F1B383B6EB3810731DFD46D0D740A624E5363C4F7FDDE107F5641FCAE2537BDF0BA0F34006671C61F4F4E0BA811468652BBB3773F00C90612D4EB5FDC1EBACFEDC8D9679FB2E87FBB46DB4DB124BDAE786FBDB077689238ADDED28A28958EE5E9C8DB749ED3DD8DDB3B3F09EDF780ECFD893601C6CBA9291F1F1016F1B8EEEF860F6817ECAE37CAE359787626425563DBEBFCD1A20C787478E9FE2141DF8F1C9A9A3070FEAC18F8F4F1DE780E31C2016CCE91C5056AD8F3D0CCFEFFAD3149A7876C9D986F75FFF0BB80521DFE7FA3982C9441FB6F8762F0EFCD9AC678FF4D3BF7719E8401BACC03F1BE85A3F67205A304ADDAC013B7864F83846956EADF5825D9621B25B5A1BA32C33C927A356E9F62FF8F33F1E9CD52094F8F71E147C06062526A49F9EBFB076D82AADEED30A048A17FB747F401FEEAD7DCB8AEEDBD322BEA55C659B274FDB38F6E3EE80D6A6F3F698FAFEFBB336BED582718833226F134D9CD961F371AF9BA9420B9ECFDE6655DDB4183D1C8086DF3C416E36182FCA081E36818EB076EBFC7E867B2E6D7ED523B87E14708D5F60DD42EBF9C5C9115407B4DD7B9EDCD64D954D4FF318459805EC84299FB30993D3EDD7B2AE6732F994AD9B7D354B99B7FBFC26CBF3F6D4C7AC80B97B5B6A0E87FE492E0BF6F892A57FCD61335C8999A9CDD906CFFC64C2E7F5F4D49249F511EF70FCCE52E8FE7E56CF24C5D52E59CFC4FB816DB26B4D452F2E56C7A9C8DE5474D5245533F78CDA69B1F9546693A7303AE7B62FCC33C17475AD265ED89B2416D742F22FE749961F54B81EE2EA4A6FC4F37263F03917AB7C1C47CB1B4748071EC83072FDC5A3F53C2F87F7030EC466815CCFF0DECF8C0C661303BB59833ABE56F268193E45A005C85F8987330E0497C46B642657110806F3727BFFC0CB865F97FFF8828EBEABBB6C07771196A82823BA5AF43BE7EA1DD7E99054DFCF8ABF80C83035D661F460AB4A6DED0B797CF9E9A17E68FC3FEF455060EEC2DA5DD6D755B9BFBD6B5EDB79CB730A5ADC0E8572FDEDA0724947F0B85580144C9C2D61F6FBE8BA2318A6F14F9AC4C6C39B1F2D3D73FE21FD6B360FA858779071BE7D6C3C7300397DEAF21700785CEDCA2C9FCD0F9E5FBF4AE76D770C689A13D6622CAC46B6E8A9FA59F2615C16157C9337265687B35513DD7512CBF1E9495D97EB0CCA3EC425EDAB456BF84B7B22EC7A9527D9969CA04F8B0D3C5A4A910FA25DA5F9CD23AAEC7C9F3759FB1B900440F92109898F4577A0F1C109F441EDE8AAD7C986360AD066C39368E8EBB649283C2613A31497EABF518D018002E75AB4E73B566551375502FA9E467356ACB35D9273EC42D02BE2BF5575E44C96BC49C17CD6AAC3555CA5D1E1E020DDF0C89FB0BDCC1EAF1E23A8D203DBFBF2362B960A36283C176C7DE92182AD536D71606B15592AD6E065061ED4BAC243441A7D872346A0B5D1DCB0AD8BA6F47081B5278F1E3DA5BA76E28C8A82B1C50B0E052B98562AED11295BC2C305497473844B7470211219C50097219115172D0809DAA3E8CF5EA6AF90D8E299291A58A1A9CC82A0EA5DF9159E3C666DC74E7D3851A01D88FCEA05496DBA51A27D47B8E158C40D6CA82CAA9C6646A1828205C933CA850B4A837618F6FB8141866B97B0A02172CA8683CDF4A5960F1B8406830DFAFBA1C1866797C0B0C1BFCA0781CDF8690CF89C75433D6E8CE1A6A7205033FCEA0533A3B81476FB5F5DE187651D37E8999451733DAD5CC1BD0E4360F35E3B087FA3DE851EBDCDF8FD3C245816E168BC82C59F73D1004B78CFD2DFD0B9A65F40D0EA277708E9052405187F76B56CF28494410FC57553245059CA2A3B1478BCAEB93521147EE93D000948729BF2F2E11CD1143F9AFA9E8B074B3F9D15F78075493D54714453FC681AFB2E1E3C3DE3A4AB39C2297E380D5D171B9AA8343547302D044C1727D16189CC3371C4D252B0B48A074B3FB771DC6971CBDF2F3A822956300D5D170F9AE83C6C471CC58FA398E6B617300529F8F9724F26A53F42297E2821BD170FA67E191CE5655AEFB7FC4FF74758C50A2BBC03E341D6CB6310BE4034C5147FFFCA4EB2768451FC30EA7B2E1A2C3D7DC2499B750453FC601ABA2E22348932121D21153FA4CE41C7C503A7A7E2146A4740C50F28A207E3B844C4D3614E5F1EE02522DDEFB19E2F114DE2C581AACF49759B36C70B6A8770418DECCB2810F6BEBCBDE66B32B7633D800C28C015079639819A76E75B045BAB95EA66D550271EAC4573933F0C70025FD056C64E6457FA217486B4BA47E0440C1C34777214B05968601E0665E1C27355804512A1FF91E69B9322C9BFD7591DDC33A1C250A0C10B0FC937619A2DC339BDEBDFA50B0A9941086A63ABFBF15020326AB430682C68B51F02497E57F95A208A606D3FA26841614F0814F90D74B45014418473956DCE93F55D56A44BF24693D4E495F2F1E703F048883A4BF3493CD1E7F4E101F924CD9EF5E99326D1E25975B11530ED43874BFAD0CB33AD9E0EB12E1B048C0A5B4B899E224198E76D23138C858EAA28949D979BEC263B6E1C45BF713475543CE0816F62BCFEFE672198016389CC63C09AFFD301DA3043BA3428CE8667A7AEFBE7740459BCDCFAA741100A2F53C121F9A5512BA51DCBA16FE2800A5BF6235222400AFA8A5C78A0BC8B32CB5B480C5116890437EF02E67A43851DCEA8495D8C51277A0014EB5B3E56E6EC8C9A9E9FB0872F9D336A51B9A7EE8C5A1C514F18D8049ED1D44FA8C514FEB4B08924023AA246D4646CBE66F85B98CB1F23C21E2CC30A7E90798D6FB2F8701634E73F89B5856D6A874599FF2D6D5D8C45B2A30D37ADA2390A894943C186283DA49910574D29820A7EE48D86CF62BEE986C799EFAFBAFA000BFE59771060751A857FA2C561A2182D3E140FC5D06D192E8A01A145F8A858B0E6D34B19822C4637B5A0503D22A40538D1AB8FB5D0313B036D41CFA1C4829FE5CC8A919C466147EE3C5D6CF6F80F11D76B822268843FC91A172297328746833CCF5B5E46880B3D81D2480B7E8E333C7616B3EB15E5E4B9B4B39CE1F1E6FF34A73ED46239CEC9C0DA695595D555B9AF049FAB2942B49FE9C21F087C621346074144D290374A81749BFDBA59D8EBF593E0A420E3CF87F0963DA28F4A6B913C698F426A094F93870493B787CA0DA014F6BDF2AEF92F09B0FC65BA2B2B8827A60A73BAD2D58C480A8FCF8874A92B80E9F4F9DCB990D24A1168BD8C819176D594EB6F3DD224AAD8EB68A7F0433462488595BA39EA6C04082B284495536994123522302ECEED85C65D08B7A70BB868DCDE65DAECAB021EB0172B62AF9B9D826FD487211352E6D0E1E942C10AFE26D5D4DD1D22680CEE6E99178A30F979E3E080AE13E14A29812D8ADB4404CE0EC2D705845D384FA787BD681CDD9051F743D9A49D549FD3ED2E4F9A3699DB5434FC28F8E0C020C63F3DB008BCA092AF23574292CCD167099981DD0056A0A84AEB2CB163C62FD0E026CBE5D01DE8589818CB8E80E559347AAC4681D1A067CA5141B8483A9C6FFE98564AD372F013E418540EC381F9065A6027A5E5967A19E380DB52BE8B850497D76F63DAB00AFF750C15B95DD0F25598DBA11EC0452E61A932E7AB02DF28535DBFC61156F5AF0F8FEF1F060DAD086170E05085071362919A2D24CC22A1B3A0E3DF3120CDEFE16F23904570F69B42D96222AC0820E637D232415884D196500D5B1D7CB89197090A42445F849CD1E06F49B36870B4799E430D7016C3148A887D0E82C60AF03CD96FB2E61AD066B745BA7953B50481375331D1B85822A80E660DC05551A571BC1F23045A2C1BF6478C19632CFC82F374FB358597202ED37FEFD33A2CAA486130D674E1A16088D26CA1D059D0C1DB1890E6F7D8AD11C82238758BC8BD4EB35D732D56C4561FBBC71DD48627535FE804774648B087BE4E3595364941E3C1E0323D5D30C405F374EA588BD1D35D9DBD817F865946C6009CB0C198067AA69E8A073E5F408B82D71FFA62B457879F7E18C7C4325144B0EAC40B9963EF6D9EDC86CE36DBCA40EEC976BF1D8ACF19145AC6BA6F8045FB7FC2F4172301DA79D38FBEF27A7AC60FDB2CE18133C8151C370BFA18E31F3DDEF3BF2AE327828F2E038242677A3DCE4891E5A21B807199D6657E7F04461CC0987A2338303E27D56DDA2C2233A17F18F9CD42A883A0A9DB4222E88FA4D8E46975DDFF378C6B191A276031FE7C400E8669674E6B3D6D0CF058CA8B1A4190E4F9050D1D08C5F0720682A105AD8D4221C9EF0A49134B112C92209C5B15637B338A9089E908299A039AD9980A2E66D78F09ABA5CC7A91E12FC48B5226C08B6172E4E16E4133657CE80BF0CA9421FE629D5043EF424686A985CDA871EC5A7E49AA2C299AD69B89DC18D9ADFE1C572F2029C0F8B32BF7E4093E831E8AAE2806A82CE8EC5928FCF83D6FA609A3084E9AE168620A8FA389D58BE8CF878E269DFEF58EA69E3C249AE0032D304F68D84D86410E1220D3EF0714FA8C4A2D6603618449B4E14E2000F90B78B4401338E219E102FF101E359B28A8E7BDFC1E360B04208E85E280D1285C703045313F31A1717833D3C2A6A56BDE2988388F88784792F74322EA209A440B8FA2B8231B9F80F11CD32C26A0595C34E3133441E2988504311FCAE2535AD525103B681C83C88171C57E3F946806556A19010D0A93A09FA88E38113417C1E72714285769759FADC5B3124A836D04A3BF7B9999C2218B6BA7385085881707AC96F3AD2A20A6BC7EADD28654F8CF55F0F3FE944CBB2C6EB26A1B6852C364C1F812258732B1E16A2985405307450299FE8F236462850CD241D1406631BB8161F1E5775FD0045AC1370771642DE8E06A5864F93DA4AA8FAC088EA642A1FF48F34D14B73C286968C8E0A50735E161AA2D63AB8886CF226E73C481339F3738CC0016FCEE061F5FC213DB6E8EB9FF10603439091F149B84C071417551715A0C18F41DAF99C02EBE982DE8579A38B0B398A02D82EF363480E0B7E9D7DF1791DE260EBC05D8B5D0861AD2AB61B10605896785898943A387283E287785EBB6A045260EA1E5AC3223C09AF775A63EC8E25868B23176602BCD8800196AAD698ECFA8169B145C17B5DA8C0387BED79B46D08B62C189A32DFC8A3302FC2C27888B65D189836871ABCE08301760DDA90FB748179EF05FA755555657E5BE5A4BAE4FA084D42D0AACF08702A0D888F1C11011351816CF5AF6A0135A6DAEDBA982BF8A4049B10EC60BBC406E68B295982BCF54E8046E98DA1EA046A9A5D2664B180C5C57D9E6C9D3F661A08FBBB07B6BA820E4516CA4E05042314C2B8D9DB456BEA06079F636ABEAA695FCFA0CCCD0806BF69F809099C4A14083161D126C10BD945A447B2916E82C68BF2134CAFCEE3318002C823D8656EA9F619C9715B751F8A5511A0A3048C92179A549AD6539A509360BF349E110E6DF23E9812B1287F4FCE22478440D64A0E0017F3B24D7D32AA411420776382D2C16F105DA3F7E7C7E6BD6014EF00FCC086E96344579478FE76949033F314C482F2E564B431010994210FCED4010D4EAB230045DEE8B60E18C5F38040A675431013B22281C7E394FB2BC5F3A4598760E159182CD54B0E4F47398268A8E240EC8F4FF3D2F37FC2FA9280DDA7FD8EF070F25AEA5228114225F1CD00A3943850249A0B94A0B28E127AC976FB27A9734EBBB8867AC51460A4248C9D2E7AC4995254C5A136C2ED3759A857AE13D2C3A0279183DA44CFD131430BFAEF675536ED3AACF88177C1F981488420F4D704820A2B45369378EED620A4A4392980F25E30904ECEC2B4E871F8025CABCCD6EB1005168C5C88048C81A128EABBB6CD776589B5AB33D2020CED88AD010DD3CFDEE0B7983E49424E3EFAEB26BB2EDE40C63A3422ACD21E285835553AEBF5D3549B3AFAF5B6156659EA7EB60B3E5240D0E15F4F783991B11A594A644BC7BA281CC595DEF8F7889132F43DF440196D6DFE51975FF85982A3A0A72A2E87FF53361054315C74271E069142E16302DE5F1D2A078F2F87CA901A042BF5F4ADE335A959B74D997CD581A09E55A313EE42CF8C219533D9576035D393B857796409D06D448AB61EE0652C383E06F9226F99AD43406DB5A5769D3D39FEC37C033B720EB4AD0086B2CBA5ADFA5DBE4F7879BAF254044F235C72A524116DE421B4D4C497FA956F062564B3885A4352A2CA4D5222998DAD5BB0F69D35DDB9335895E1F5BE549B66534CAA011370B89F4DA7E5FDE6685A4ED9E46DC3624D26BBBBB0D286CBA2311B7DCD2C81B462F82534DA285ACC6D072493BE8D929AA1DB490D50E5A2E6F87DD0097B30ACB213E60311ECA38EC87624923D81B3E54335829AB218C40D614BAF944378596329B4209149AEA170DCC86FA325E337DB1BC912BB01C2F59C842CA388D0CC51A9E17EE170B9D2FA490F95F48A4D02C9E8D8FD92E4EC26B18A752407D77D49A09FAAE8887F9AE54DE6FE7C9FA0E4CB8EC8E1B0B393D37962BD8B05D82276086E5771D46C1B32046A4D1ACA44D7983F209A427E48C6ABC98D51A4EA1A01B912C81A92041C3D392205344269AFF8B8B5194488456944ED23EBDA6A05AA749586DD35432B34387789936FBAAE02099A4609A9C24526A162E2C2FD35D59B17C028386DF3446A6D4F897042C8D248D6334FCC63132B98B1A1F4163B9A8B190E3A2C6722525B99A89D4D1E93D1166260249BFA92006FD5ED755FD9C6E7779D2B0068B88981D75F2E935E45294485D166D29003A6E3266AC4F5188DA1E893494672381A290A9AC8B05499BF206E5ADF5676504AB649A84D92A45A5A1E7398041952579BBB0672FACB8B4320B10E412A14EB75F5318AEC363413B962C34094B049A4ABDE57FEFD35AD2724F2269B9A792B4FC252D36CCC5C050C06A652893F07E9B27B79C106B2A62F19F4A150339EE9293241005738A8B4F1004B5F2B1C3A8AE84133B758572F67F24C526E7ADFDC7424E2363B96260486587E5468714A52844A488E5E28C9F3858128C859C46C7727990C26F072DE40429AAED0CAFB5B3E70EAC94A3D144A0126273C61952C60DAA9546DAF8FA3C5F19B126D216B0A76BA946B052563B1881A429084EC1A44794B39A2348541A946C4D3068B80D6B6D4EB0B2F5B15B575881B2E8E4ED9715F885DD6A5FC469AB2F95B47099DE54697DF7B9FC96B2F6A1F162564B3885B4B56D527D63B6D315B05BE8CA14B7B625DBDAB22D6DB5EDEC761F34ADC080B9D8A77BDE4E2A4AC0DB4C4569E4FE1749CFC6F2C04831C70723140AADA1199798EDA104BC16511A853691942ACC2691725E8B08894283F09A3CB32958C26B04162AB087976699EC61098F3D2C54603F5D7662B63115F31A9A2824AD615701A9C6B052565B18818262C8250BA66648394F358444A141FA3834B35D9A8CD73C4DA922856C49C722E24AA0B788C3CEE8B21A9E4A795F52460259530DFC989B54DFCF8ABF806BF86759327D0C938CD93893522A05722687D13852CA6E1321D0DCCC5DB187119B4C655377C51A58C83104EEE7F6EBE1B33542CCFEEC3E5092E72404873F473330CAA8F316EC8CB6D8E779C889514A9E99C1153730CAF03D5D6E949ED2AF51B073039451FA52EB46E96323B94D3A42BF2641E33ECA225DE16C83A09F55AF57657193555B781A9A61132EAD7BB3B08EEF4026C2633933CDD1FFA1640E94F660CD319D59915A83F7560076C98C3C400355E01F8D096202B098B9460EA3D08AE3047C81A9C330505AEE3917B22E59CB926AD8F117B67228095F44C6311C28AAE07C8D2F15D163371C15F937AD7877D25015F9E77A3CA8381EF7B91E0EE4D03A52344225F13341838AECE33E9481B0EFB1A379D81F5CCDFBB3E7C7EF4DE635047351FD4195DF8938819B1E74A65A7F0A11E6CE60EB8652CC1290A4274E4F0ED578E722E7AA279C29683A6713864FB58144B729B21327D49D203E2003FC7456DC03E75156CC7851447E40467836ED552AD860A23E3813B4DBA9CA16A0B3811E8001563A06A012172ED9003FB7DEEDB4B8E54DE43CEA0332C17345FC3312E12E59ED17F0E310F8F9725F28E98F55382043FC3280FA32ADF75BDED24B5CE780CCF152D11BBE3C2C47F8EBF8314E41F75F391901176C80A74FA64F76720B20D4876402E2A39D8A1DF02A07648CA7D4375405735095966B106C9F18E52CD95246482D2A107E57FD7352DDA68DC6DE3A5561E93BECC4CDBE6B9CBDD81A14BD6575B81C90A39C1413D6394D0B6651FF384792FBFD2015C03463864C15C3B0D3691EA059D4BD2B41EDC3C1FA31077A36560E130EB51F9CB04E048F96119EF1358A4AE0C17CB1491854EE4D31344A852FCC9BD13354174FB92C325713AD3795C50E8145E6CA13B85679BAE42EE96736A1AB9EA62FEE0FDFE67857F267F436CA55D0DB089945C1BDF636E5BB27DE0A8E7E24B6A44050CFCED24E1204F0C85D4601414D725E6EB29B4C391040C80F2F12A0B485A7705F7FFFB3501C3D28BDCB95A86FA30C1741AFFB9CB5EC33191C4A3F382173A48CE6E0E63E99698A89AFC41223E1811AE21DFB140B452374A15AE75842A8396CAEA8763B456F591D2E07D65A529470C88259549D024EEC7738F8378B0E5202F9887046E11D4015D2F39562E5AD821A89F2514564167960CAA1761997FA350776755ABE3DC523F733809897C647E3886F81DB308F6C4DC7A176B5A8F36B8E41AC298986DAD61D93DEDF261E9D4A0433B2202588151389202322778199784CA2B005C8AEE07A3330B069C4DB02E20A8739A4F86E156D46C71D23F51CAA1AE3DC258975B8F42EA39DD066916FC471E97F8C984761338E5FC1E56E5C1486C112C02A5B47F0A003A2242F552DD451967E36B0B9A6F4A9B2BB8F1C4AE177A0595720E9B4B043755EC2D7D9EA73AF0A32E9C4AA9BDE18F4A13695A3F71A65CF181E227A8BAAE083819793B81B0CD234C3A66641F2265F335AE159475CCD999A0C5E8C1CD2082F515A681B2653411287DE2D92FC9B654CFE7DCD6883671B5125672A32785109D0114EFCACE6B310A4F4114140EEF41B0233C137695D372651078FA08E4FECF831133F4539F678F594319CB69A2E0B519CCC4F7ADE47CCF224E65C8EECF4EE145F49A27627261E13A31B5977A82D370391C71DD39D939C3D6A738A37653994EE97B2AC44F294616C9B42134B81D1E3CD2CC2250987D2CDA22484FAED3486B3171B81A2B7AC0E970339D1C9DE6E30300BF14C82C477F0A93DF80FCED3109D6564CF3D58308D78FF5444EE6AFB34B849C47E844FEDC897F83607E923A82614FC0A59C7917A217D0CA1B2641CF1A99D0DA360E6C02E185F03F2ECB648376FAA9640661C615DBFE11C33B932653E71D6649B86540E8079D57E04F3910FF388AD26A0766F2CDE63449091F481210BA6116F3D8AC85DED3C0634097C40EA9A6E4368184E25470AF238618F68919CD80F63593095327A28720FE8096492B337F04FCE3C27A4F7EA6FC2986778CE4CC1323D295F19FC3D35A802FBB5B4A02678D73D46263D504810B9C7C23BFC71B521AE64BE9C66AEF6F4BE1C5FEB91862F2CF9BE1D9496F7765D0035A507FF482A5721BF1F75A587F948AA4381F3655A97F9BD4C7184EA5014EFF2E2F08E4A31A8442B8499D7F9DDAADBBFEA783DBEEEC85497A4F2D2CFC46B9583EEBC772867A92F39DD4D910905373FD5ED5965B11367103AF4E33E54673D20AA76F7815FC9CB50103DA88A014CF63AAA3DB3A9DC87E0D671347CE23493C21D09412D87432E4273A9DD9B10D4FA018663FF52B0E0F9039442A888D6B5F177D44BCA4335DEDBC5B3D4136FB7B0095D6DB4F8577DE42B537D2014AACE129EFFE67408D58747A9A5D33183D0CB98271FDD1EACC07D4D7B9E19F8831B23B13ABA3DAB88BC112E567422E48B4FBD557E355EAE50D934F1A8BA1AC283C09BA9BD4DD5A579F22832870B6B3F2A4B06B2A351EC5C2DA5C1EB6DE4BA52F743597C4AABBA042CC5C3964DE87EE422ED623CB0DFAD9A411CA173280FD11092D70E79A482386DE6AB87014C200CD13994AE62743FEAC3159DEA23B77C62F703026B1BE34294583689E4A15B3EF1219B4414F570695D853EA1CC20DE0AE3D2BADA00F36C06F5ECE122724F83849B209351EAC03CA2BD6501B58B5DE598CC41ED26EA5887ACEC6583334653CA7C90EF14C63198451CD40BE97F0C8F24499E22AEE07422F76F188D4C83427A4FC8E1E74B6115BB3091743AF3986E303293A84E696AB503CD6951985336AD794F0A16896914A6B68089C1223192CAF4E63F39584CC691E40753A926D902B792202C84C9CE36296CA195E0BA453CD38D33A8F86AA0C498027881C0100361DB1297CB5438DB0857D9E6C9D3F62CFDC79D2426E250BAF73568C3E4062B5260C514CFE043D42DCFEB33E022B224CFFE23320897DE8F59A6E629C3A045B64D239EB6F9C4AEA66CDFA6F819FAA3ACB85503098FDC0F46C6D629BB202596CD22070893D6253EFC99E1F9C589DC93E2447E9000DAA49487BF59535BB462A4685C2C13BDA929813741E512D86ED57D71B1525097A072A92E688A5217FE664DDDCB7DC11FB713819F31EB56DD5FCE932CEF9D304F638C46D8B35A277E50D6948653815D35FBFF82A5322F15309B96AF06C611D102FB3D363308114E50F981B92F13BC1C12D588108F13D985FCC89BD21429B1AC6A7F755D108D3069FDF4BC3F83FCBADAD74DB94DABFE60923C4813D4F0631C5200CA4634811B53517988140D46D6136DB91967418AC56CABBB6CD79E7653C838CF24152A3537E5FCD022557FFC7DBE09DA14B8574DD2EC6B98BFB87FF38F3BC204E41E86D7D43A6E12F477EB26695332ABDA63A43D4463885F2560128AE16DFC2C4108D505B7A4389442E5675C93F2A33EF92D6005C262A5EF136A157D7CA1604922E4B66284FE02D3BD7ADCF15A95459364455A8D65AF1E5FADEFD26DD2FF00FED99455729BB66B8BBC86BFBE7A0C82F526DBA6DDBFDEA4301BDFC0E215E05900CF0ADA9C980E3467C54DF9A92A776905F540251A4886E2BE33CFD326D9244D725235D94DB26E40F13AAD6B18A47F49F27DDA67E8392B3EEE9BDDBE012AA7DBAF397622F1D56371FBAF1E5332BFFAB86BFF55DB500188990115D28FC5EB7D966F46B9DF26794D741A8F45DBBDFF4CC1EF5D5F36E0BFE9EDF791D387B25064D49BEF4DBA4B8BF6FBCE9096BBFE585C25F7A9896CC0DFBF4F6F93759B01FA3EDBB4CE9FC744DE11B8D95FBDC992DB2AD9D63D8FA93EF827C0F066FBF7FFF8FF01514634885E010800, N'6.1.0-30225')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201801301055346_AddClientDicionary', N'AuthorizationServer.Api.Migrations.Configuration', 0x1F8B0800000000000400EDBDDB72DCC6D22E783F11F30E0A5DCDEC585B07CB926587BC77502D6A995AA22492B266EE18503748E2171AE805A0696B4DCC93CDC53CD2BCC214CE75C83A017542ABC311561395959599F55556D6F9FFFB7FFEDF57FFF3EF6DFAE03E2ECA24CF7E7FF8F4D193870FE26C9D6F92ECF6F787FBEAE6BFBF7CF83FFFC7FFFABFBC3ADD6CFF7EF0A5A77B56D3A19C59F9FBC3BBAADAFDF6F871B9BE8BB751F9689BAC8BBCCC6FAA47EB7CFB38DAE48F7F7AF2E4D7C74F9F3E8E118B8788D78307AF2EF759956CE3E60FF4E72ACFD6F1AEDA47E979BE89D3B2FB8E52AE1AAE0F3E44DBB8DC45EBF8F78727FBEA2E2F92FF441592E42A2E90EC8F4E76C9A3B3ECA688CAAAD8AFAB7D113F7C7092261192EE2A4E6F1E3E88B22CAF9A1CBFFD59C657559167B7573BF4214A3F7FDFC588EE264ACBB8D3E9B7915C55BD273FD5EA3D1E33F6ACD6FBB2CAB79A0C9F3EEBECF598CE3EC9EA0F077B228B9E22CB57DF6BAD1BABD606DD24A8CA91F27461BFADD2A22644563C7BF368956FB779F6A8A921CADA8F7A1EFF784053FE63000DC256FDDF3F1EACF6699DE9F72CDE574584283EEDBFA6C9FA5FF1F7CFF9B738FB3DDBA7292E32121AA5111FD0A74F45BE8B8BEAFB657CD329B24A910CD5D9E6E183C764EEC774F6213393B353B72A10FE1F3E388FFE7E1F67B7D51D42FC4F0F1FBC4DFE8E37FD870E307F66096A2D280FB205FAF303923DFA9AC643FA6361C1AFA3327EF1F355BC2EE24A50F8CB27360AAFFF2F28F4E91303A5BE7A3CE24D88C255546CDEC469829AF3772D2422A536088588E811CEC32B12A7607044DF5956D56863EC8A99E3AACA8BF89F71161751156F3E4555151759CD236EEC2AABF977F9D7CF45B4FE1617F252C59CDEC4BBA8A8B644EB99C6E97354DCC695417EC856E9C53EEA0C329BD51F716A42A2FF0379CD78AECD1B88C79BD7DF852EEBE94F2F951AB062691FB3BEAC3708749F93ADBEC741FDFC4D526C1D493E946640F2B312B9925D1AA3D6D6F37A9DE7691C65DAAC2E51875D7C13688F7E4ED1FE43749FDC36EE816FF5870F2EE3B4A129EF925D1B1D116EF39A207E5BE4DBCB3CA5DC334E737D95EF8B3A76F89C4B08DBF6AD2E358672B9D40431476A8C462C354EA82F75EFBF54841E69B932F7243291073A5D89C7BE402E314ECB917824114B8CD1E94A4CF71472B9D91C1CE96942B10E0C35A489720474B2DBA1D8A3D1038D518A59E138C96AC1B1D08CCE41D32DBF4D8AB2721112B345BF8F7C957C9E6C36692C297B627F448F3692F5B7CC454157FB9B9BE46FEBC5BC8FEFE3748805BE57FAC67F9727591D90CC0E4E3E27556ADFAEA7DB2849AF92DB2C6A27582C17F7E92EAF72FBA514F94D92C69F92B51BA5DAE2CECA2F49997C755069B5FB7F1F65B7FBE836FE167FB70F92ACC6ED79FE1569897A2147E57DBCB949932C6EBB4DDBEE0575C6FBD27A3167250A334C0C37CE4A14EBFC27CEE6F2699ABF40ED9F9EBF30E5648661C35C993F4565F9575E6CFE88CA3BFBC088D7FB02857408205BFBC047EE318B3FECB75F1D401E2BCB58D57CFE2B7F1BADABBC685BF06C7EEFF3F5B77C5F9D669BBA1BFDB35AB3BDAA220323E29CACD77159BE45608E37AB7C9F0DB3BBD3A67C6ACF2689D254DB9FAC64FE34421A25DB121C6C51E38DEB9E741C65C114CCF08A43A63B427C9FDF26999AA83D295FD496422A6A47A62B6ACD4C4DD28E922F68432095B3A59A3552EDA7996B7E4D0D89C6AAE7C3CAD449B9FB10578FFADC8F5ABE6F0BC41339E96F8F18B6FF78A09C791CD0FEA43AA07DF6F4EBCDB397CF5F449B672F7E8E9F3D3FC489FEDA943E06D34DF5D5855AEF9B9A92BE44E9DE7451935A43E304CCB786866DF8ADA111137DBE4F367554F2589EA327FE57CC4019A4EFF1ACDBE628C95C3707424DD785BBF101939A4BDD17996F2D35D7F01B0B0C6590B456680AEA7D79FF5EDE401087CFFB6BCCA9BFCFF36FFB5DF968CCBEE07974FBA186854964E51AC6D7A5A66D1D19391C2B59BC7164EEBE8C7A05EDE3AE9CCBE62CBB4722E7C5F7B98C3E21A85608AD46F85C9C9861B33261E5D3EC76F6FE9EF90A35EB6A083797FBCC94529771B9DFC6B3559B6DE4F328490D20E74D52EEA26A7D375B9C93FD66B6891BEF1917F5C6DA643DDBC6A8DEDBF9F2D9BBB94E3E0F9D0B32793A6507CF27D48D27D1B866377D423D8D6EE77331B6A16855C4B53337B0CB097577C94D328D9568830938BF85ED006948C6892D328599D1A292276C78E9D770A452F5843CD9DA7489841D91AE9C28DB6DFCE469D75FCA84A5A94189492291D814E534D97F1A3A6935E9717A81FC23995C038C769A0ECFFAF8404D058C5CA0C140255760249D23FFC5898EF835B554FA8B1355E111E52CD9575AB2AF54645F29CBBE9A28FBCF7DB0A2263C462E907EA0928B3F924E93FFB92A649E4BD0F25C0528CF2763E405165FAA094CE610488E13CA5520A8A7E9F20B19E0AAA9C364126844D1CA95A2334CD3EBA56A137E2969BD2F551AEECBC96DF6D72EA0571376A41648DC13C9C51E2827C9FEF4493F8A50121E27E74B3F5249C5C74827CA7F8E22CD0285E7F55132784B2F5B269547A40941AAA00E493F4DA7A7D4684A4D2B3697402F9A58AE199363D6527013B94F9E723BCEB589C7CE4E36E676E50827EC0DED904A365771BDE767EE6C0062441FD99CC6C8D6591C666B58D3D4EA524CA88EFA6413AC8C4DCE9C958895A1D9153327F6AEF2A21E33BD4DC62DB6873BBB229ECDE04E6388E72FE64C5C8C68E70A45D090626149A06078BAB66863EBE18B86D350A28D49B06858FA14D11A9F2614ACA360C56A12B842B5A913446AFDB548A49E8211A94DE089D4A5CE0D3E7A644F58D71D721FA390409775092731A186B1FCC73A0EB58E716F3BA58EC7FCC73A0EB88EBB8E6B620D37B98FF52B1C629818583919705EDDA1E87C85C81DDE81208863B0E8890965E834269A6108660534583835ADA1B4B98F0D25504788DF1EF03EBF3571CF116273AC6EF12487A1AB8E70ABCF9E778AB2DBB8763306D87CCEE7CEDE183BD467ECD06A37E9E2E69A2063133CCBBDDEE84D5CAE8B64D7DE3068B9FB7F9DFF7DC1CCEF291F4224AE8993DCFB827CE3359901BEF685A613DEFAC210EBCEAAE85CC7D41426BF91892293CB3FE35EA6A169AA093F520B44EF89E4820F9416AF39AA0B92DF744452492597DC77A41542D457D19D6451FABD4CF4A6BEA81802E7730C229C0411F5A4E32E4D662F5CF57C56A77D05CEDE0EDD2DBCCCBFE7B0B9E2F0B428F2A26D1473256BF8BDFE8E3A99D96643B10EC2FD2A4F533450FA51C3947E1DCA89D85616BDE47D10EEDAF89D104C05FA720EE994CDC775BB55137CA416C8DD13C9C51E282D749E74419CDE9343A624FBD4FB0247BCAB498FD30BA41FC9E4D263B4BAD263DE4F4D7C2283407E8C4EAE004E3C7BCDAE85F4E45D434DFE63BCE2245E31771FF355B2398FD67749363B1E086BF2E4E2C4D8411E149D9C1A6476B132C8ECDC9C9A0B899A26461F43270B461D6C2AB4418226317C0BF150027C232E90CC17D2DECDC3431170340124F3A59C113D8C7E4B2C254E07483926F3A5C468E62E230DA24C5B47EAB21F3B59275DA39D55D7A9DE014321EC1F4002686514A09A3DF7755696FB285BC7BACB67C339C047149723C6256B5EBDAD0C4C59190A4A7B894C6C8236F84C48CFA5162F36341B576F504F3233E672B226D5CCACE11B51AC95D59A79DA05DAC2F5A5DE5EDCE136E63DAEC90CE4709B47070EB7B9C4FAEB4B5D1DA8C93F520B84EF89E4920F94BA626B595DC5E2CAD69E6C69DC0F69894DEF2D17D1298B3F69D7B9C2CC1E5E167F620FA6920A6F72596C04C5ECB8E01814883BF2807A5D829589AE976068A2FF35F5EE97A167C80E381CA8D59A78A4CD40772AEF4B153B5217BDA8B40B55EB3FA7779EBC6B8108EED4C540749A5834DEE540EA579512DDF58499149CC1B14B0978536EE39D4D6CA921181DABFCB8A7A6B1C5EBE8B8A5E6B016877EC02D35846BE3EFA9E190815D358FD6F8AE1AB220DEB61A984A41F2391B6B2897A3A9029E514599915E432D2C9385F905A64CCE0C038F4E4D118B9B87C8B2F8BB8778740A0A58DE3F441626D840C42554D041B68548AA04D6FFE968426493AA8351ABEA846731B2370A6FD4F376498D9C8EB1E8A262D13E72FC679E07B3AFDB58343B1C3F313199B53A3D431E2589D2E43F66364D196457EB7719A32695CD9D946C1C8D1956C708DB6A84CD200AB9843FA26C93A2BE6F753A1FA018BBFAB64C4D763337B56191A0707B1B44C7DDF704121B1D02002541630001998AF0B6B6D7C34509B6C481848A1A588A9381C2E0405948A8A2832454560EC6D8D871C20430CDE41885853A09DC5CE2D176B033B696915C8EB52D0A0D1A5B2126EB6F97F12E2F0C4C44B68B2DECE1724D461F777186C0D7883633D44AF3722227C133BC94DDE0B13089C46B201736149611B32361698E79BB39586967B4478CCFB1450ACABA4A36DD14C2ECAB521ABB7F899021CDB4EDFA22573BBBA4E931AEC93D2466783531C46CA7D6B6D5C3F08D2ECEF8D008167859DCED01F9683F2B24E7785A719E09475ABA86AEA8159E41A4CE48A7A007466CA0B3204C3EA3B3C0F81C3B0B279D45882EC5CA12AB52B3237C81A0D9C1749C66C7219E7BC86C106EDA21B32EFBB199899B9999970E0CBE1BE02410F37249A8E47678BC9DC197C4C314D0D93888CCEC95F15421CCCDF150BA4C52FE3DF29ADDB5661F7D53A020B84052201FF068F1B701BB7B89FD2A5E17754DCD6E42665DC4D3274F6C947AB2DBA1CA6DD0D436CC4E80BA355069A53EF37595DC0F3CA7AEDF2008157179D7A0EF7D72D3851473BCF1499AE67FA148A5486E13D1E58DAA36974DB2B52D48CF0E53267EE6CEC2F64C16EC271638096BF2C0F08F32A12B3D724AE0997FE2944F261A8DCF3F6FAA31213D96289F8FE6D34AD5313B1BDD5FE3F921AFE296F5E778BB4B9B83C713463E7C76475725280B37DBFC5BAD465EBDF1CD9D1883B8836D828F846B98C7D84434B3322D4637BFFE0D442D13F4F9A679846D9AFA43762DCDBB5C5394EEB31A7318C65CC5D14904BE8580C1EC8C0AEF781CEBDAC5D49893F9AC93CD060DFC4AFBF3661576218AB55256F93EAB8AEF0ECAC9AA685D7D429837FE32C124773E7D544A7139366D517CD6BD256EEAB91593B1A3B9B302E31D13EB18893793DBA722BE4FF27D393E766142B68EDB5CE13E6EB74955CD5631CE364DCB9F37AB60E8A5E2E665F8FEFDD179ACA827D92732551A904823F17A004D6680636F9A4E186D33C4DAE309CA23A8A9C16412A842D1CAD5A13318DEF54D97076FF9E65349153075F5120996D97DE3B1637411F352038DB9ECFE88CA71A03BCF17BA7C8ACAE55128D4D6B2326A8E674EBBB370B1DD8FF86811D12D80878A600AA17F9B7577B6DECC95EA5C95D6EC94D27CD4F4AD0164BF0D6D0E8029C4321BDA20C0F6DAD3FA148ACDB15F71D1AF98BCE4B706D5A0D2EC85F7801E8D58C809DCA90E9D0E8C61A7CEA5629D0C9FD474CC4D97C409BAF96472E1E73D452072EACC080674EC5C2AB9E8A61C3CD6699CA38A2CD060BC89660C8C1E087E4797EF684EECA42C93DB2CDEBC296A96EEBCDA623D286930698C46A0FA9ACE0C476DA23CC2384E98D1EC6BB1FC62A503010EB98666E25E44235C5D57791615DF5BD7D82E264D59FA63F91CFD978B90B5DB2DE469BFB9A83F6700C1EBD2058440AF2EA29ED5144EB75FE366377BB3A2B19BDA9FD36C8ECD40DC0C0C9DC3C2CCFEEF7D5C867708F84B9C6DF2D9E34A84A56EC1CD45A072B5AFF79DC785933D06EFF3EAC31ED56261FF98B499ABFB5110F5F1667016332744EBABFA8B6F0EDD37DD60402F4E3BB36B36D7E8C9A5C48C3797E7307C389829103EA4282093EB2039A228947E6CDD8AE2E31944F28F740A0A60C4BA1AB45E4E4DF89E5620774B2217B9A333D5FF77D09EDBFF376C8EFDBF93FEFF63B141FD14D17F748C245EBCBEEBE2753D5134FBA046C3CAD09613AB530413C7BB8C730687B97C2A5133A649EDF9FDAE2792F97D9A4C2EBCA9A3E9BD5B9C300A6FB31E3D4EA07BACDFA6D16D7BB47342DDF6998FB51B68ED924F38CD7A71A76571ACE9406BFA5DFEB56E8D33AE37AFB31FABD7C94A7CEF37673FFAD7F4E926DE9C71B9470C0D9010C0505810392AAECCD37BB74B5B4EEFD40E7DCD8E23B691ABC0FBCA75B5B7AEF393DCBBBAC944E876658A42775031C66B02E9462256B83E8D2BDB4060FED2ED863FF7A66D2A952BA0D53BB59B12B8176953A95C1167BC2E33BA2BA18838192BE298CA151123D11571EC768422E264AC88632A57448C64EE2B30ED05FF7A2358323CEA381C2324271192A9575FBA5A73D041DA5A2C09B21FE6BA86A19DC17EA14BBE1EC808BF40A5427E812631FDA845CF97F398059D2C12D1E2E31558117057CA12482435726EA9D7F813C2BEC127B72876470FBC280F7C7C774B752C737C772BA40529EBFD6EF0EF6ECD7CD98A72DBE2E7ADB8C4DC078AF839AC3C744517277AED8A47ABAC8BED77AF80F2048F5FF1A97514B2FC0C165DA2F82D2C3EB5B24AA65EC542FCBF44451269DEE04BC6491D876368240E680C5CF96D686B08E2D4D599B95BF29082BC26D29575DD9010CD014B81A08F271BDEFF807187773E80042221E7EC721BEA4341D6819227EBF053286BFF73EEA30153DC07F668C0D1777859D9057C82A503133A5D51139D4FBF920BE370C493DDBEA8B1B38945E437F12E2AAAAD81733FEDBB5A4636B287B8D71003377730C312409D00403521D2970AC9F6F6789250B029FDFD8048A96018252CDE40201472A49AFF2EEDE43D7043EEA3C30B776B54534933FBB463FDFE701D5AB37BDE60AFD65DB7F883F493E24E52A1879C75E7548F01B188381D20E398CC1712A331DD89F37A7061F76DB1EF1677DC0ABDB6A92EFB0352A0BEC1B8B1CFB459338CC5D1B3BB99F36A2FC333E1E2CD384F54F54E06F62E37D79E959F5BA7397F01F14D9CC606181DB7C486B84A87B93FB89F060918C70E53195EE3C10B81D775600AA1B433B668628E4C2A2F410B0B8C910825C6E90CCFC513C58093F13085585E43870F9B95B749775762DD3DC1E4D8E13BD942646E2016D25D9367C38300C3EE1F237D6DC772BB33D2EB0E67BE9D74854369063AC3C1AA6E3AF1BE34B37DEFA803E86F096F744D508F2E974BC4785D3EE5C4BB9A150527A87982634412C1714AC3037EBA2068D4CFA3914A3D67FC2FDAAE4396036FD2E1D1488436B5E5B7E15A6F0E9CBBD9976174ECA317B5CD97B34DCAD4407FFEFEDA66E6E9B428F2A26D1946A6AB5F7F3771F8F6ACACEFEC58E5691AAF1736E03E6E8B551D70330E0E1E760BC86097CEA135BA09962D08DAFECAA752907CCE9657F8D089961E4C6E15B5E82DA1EA5AD2396D040E74C1BCE08143A7A68DA55DBD6C59F0BC8F884E418119734098FB57D480C82152012354D001A79E1FCA35DC8CC47204A76330770CE60C1EBB3AC672C758CE7B2C4738384130C7A1835D3B8FD87C384796C48DE7603215E1DD457470B9B2904E29978EA22E823AA6645E54C7235454C8665C47162608EC78842A3AD80EEDC8D244B11D9752450D597427D503EB25B59421F2C935C2C895D5C2F3CC8D5CF3A209B426ECDFED331F43D440B7EF222B157179D71858730BEF4D817056A05109AAB347389F0557F68C384A77BFD6FEEB7FC5EB4A50F0F32736CAA51FA17156707DD569BCF9B35ACF0E804FFFDE25086C2658A13FAB6628F139413DB2A836545BA150008D66D9DE7734C1E5B65917DC060FDBE1F632D6BDB7A87ECF93759197F94DF5E8A4DC7D88AB477DC6472DCBB70562F7575E7C7B8473FCC703E57C231E7E52C5C3B3A75F6F9EBD7CFE22DA3C7BF173FCECF921FB6709467E7AFEC248A9DCF8F2CF12D50E1854E2F57DDD918D31249BCA848C00C9BC53D271711F17685C73B18FF742508BE635492E47FF15C0D6EA60B73BFBDC15AC7379C093A7F57CE5C7DDE4C97E9CC7B149889BC4EC07E05A6CD50E7151F3C175A633336C3EEE27BC6B36719A1787363CC10B5330DD19876CEEC51F4F9EBD4D8AB2AA19CF69BD239763FB75B24C87DDCBE76485042BCFE82209A107B7058DF0BAA63290ED884707B6262EB1E14977AA2C78C29D4B2413DDD42ECC9AEDCFCD346B03A0E9AE606072F40407E90986E3051EFCC0802DB11BE090814D89476BC1098C45F17D00442391DBA407787E7132A7EDA3ECC756BFA86D3AE7D16D893CC52E9E3DF8CD1A1BD42E671EA3D3EDD7BC2C0D30FA94348B3673D9BCDDA737499AB6273D668EEBBB57E2677241DD7E7B16D4887DBE24F15F73590DD707CED7EC6C43BE763A95D7EB249BCB62681B4D9B9DADDCFDFDEC1A8BB2AB5DB436D03616B2276CC6A01B7545FCF136910876AF2485D1AD533D7B68BF149DC6956DCECE28599CD2F1E7442864AA48406351C98B8BD59CA804653F46254EA292AB2A2AAAF967AC4FB3CDA73C19FB938927B5F79913FF86CAA93D9A41EFA6D04611A6056D944C05DB2845A2FDC4586D5CA1741D052B5893C095A94D9DED327E398F9274E64C46CFE3E83CEC2E497466AE2D7B7440A138206EDBEE5B057DB11C9D06B67082407B63F08813B9740431474A8C462C2D4E68D6530E4580EE924C15CB68C07112369BB0290BCB7FF49981EECCAA31F3F24D52EEA26A7D37A7771C981CABDA6EF77819AFE3C4D5E3D37D61465E56FE9057A3E9B4A72C26F54E032AA1EE894804BD2949A1FFEE6E5F530AF2E1C43C31471A89B418E1ECD0F9D755E313E2A2BB2C6E8E93A0791D7D85A0ACFE669DBAD9BCCF6F0DEDF439E0393E1A5DFC093F3E25D8B004E4136FC3EA2B555D1726A344238A5E4D2F3AD37CE7718EEC5424517AB2DF24939F2363391D1DC7A4FA582190B56B45D31E76EAF31FCD2F9A744076EAD6E4E6FA6C3B1B9E4557BA8EAB89B063EA11704DD012BE082281DC0F4837CFE3B4151815DFCFB2BF10C7F681E0494F7440AC8EA81794551BA874B241DFCC4DEDCDCEDF9B2650DE4DD8FF0B698F4F345AD3FE04D54B565798F5925E17F9FEF6AE7AFDDD7A49F8D8C7D3344895AFBFD56D7EAF776A0177180387A39F90F48ED469DC8973FBD3DF3B85F6999425722BF3EFFD69DEF7416E24EA313D8FDDC75D9CA186D0806B662811FF65804BA35E7BA8D9849DFADB790DF01A870B57BB3C490D706C6E94B88AE72EFBF4E87235F4C6EF8A5AEE609FD4028E46478F7BCDD06311299F8C8D4A05B4BA237DBCDE95E41F89F9C2F73452C907C209CF3AF4FB1225326394B0C0038150DA91CAF00BCB5421C013CB30854C5A238F2CD3D7D5ACA62EB2418C8E0188A02CD337FD391EA32B5DC10481427809935206A661A8E5D26B27FB2DD64A4E763B04C946BBFA2B8ACDCFCAB769745B0E569C7E790FCDDB5CA34155BB898BF43B82020E2CB282CFE37A5B73BF8415DD4757CD835E0F1F7C89D23DFAF484810491E30312FC3E6EDE6568701FA543CEA7ACA95BA3E21F4FCA325F278DF6ACADEBD3C0D7AB344AB62525F569B679D0D63D4C3E42A4AD831A8C14256A1DC88849FD0D01A01697F6291FB3F6E0FC8393269EABBBD2721D6DD8468234DB68CAD7831193AF771C355943454BF8DF988291B743616B637654050853519255AC6B4CB275B28B52258B51B9155D6B6D84A11C3AE54D8C460FB5724A265111A03F26CE0A319445D590CC52AF1E6348D403E8FBFC36C9D401DA92870BD04E3E09401B2A4700252DE601A0A4491607D05A29757C36D4E1C2B3154F82CEF67E2727E024CCE5019B843D8287663D24041F87E2553F2F0304509C565EFB0A650028933482278F1E3D35833399500EA026B3BD8A08D49367FE41873FECA50408F0912FC3A0839E07F30E3A4028D7A0036CAF2202F5426008A01B5E6553C403FB429B71C8316FBB6145E0CFC859ECE64D809456C33D46E9BA528328FE80A81784D65B49EBF39AED6A230F34041584C66643AB3A08497E00F4469182431E28BB03BC8175A052EE90C92BC8F087A245B0005F8B9E0534E85D698C23F18275886003E4770437A02E544AC6B2F9851CB62B4C0810686BD83CC8019BC870C8E1DBD582841C2BBF2BC8B175A10439729BA317C8612B8CF1BACA0B2EE668420874D87AA63AF418C630F63AF182431E4F7C07D0E355899ABBAB7378F7742D5A645E895A029FEDE5C8C5721500FBC71928BB43FF46D481AA771BB6A9F90499C4B11154E640B6486706CAEE0E6413DC589FC927C8FA2B3F6AA0085081917160365C3EA285369C2F3C2A0D126880D86E9006D483E288341090C9E73D18625B805BEA64085705E7105CE8D4C870135215DDC6E37B050AA8217358012655C462D109EBE116A27075A9C8D0650907A53F0D674DD4713AE6B18854AC90856395D5C4075AD94A5392A2CF140E629F0DF7C72B6369C86211AF63190B872BA3880FB43235A622449F2734AC5E9CE842F5E2C43A5251110701D4510F7F381DAB4B19A61727C1A174A58DD2957D94AE0E04A5AB0050BAD247E92A1C94FE5CC7CEA7D9AD70D69293C5224EC732160E5446111F48656A4C755055E70907ABCF75BAFCE7567BFBE7CBEFE89FFBEDE39FEB75EF21F5EC2F9A27BCD0E7CB7DA60E483C97456412C52C1CA2902E3EB00A559D8A1C58B670D0FB4BEFD82FE372BF156EFD1166B48861BAA485C398A38E0F2473EA50271E68738683E7973A43AC975647572F973FB07AE9774CF5526F3815D248EAD7FED90A65B8F4392C22722862E1B0A4F5F0814DBABA5464E8B20483D2A74F86FBE355313466B18753AC8C65039555C40352D91A5311A2CF131056C90B89D5C144E4B3895AB2A0A54317D4C60B7EC10A54F2B7284738007E4A5FC7AF8C2C3AA7451033452D1CC63C7D7C0099578D4AE32D326B18877431CCF100C6A1B77648172B02462EA791F887AE440D078095D4958A0463AE3010DA1A4FF730399DCB1A5A9982967CB09CA78C6BE4F26A4F450E3A6F1028AEDFF320E0A6822D3A930CC3CDCB24D360CC1405A058D45CC2C2314F1BC730E6D59FEAE46C9F2F1C046BDE5D44E5B18DDF002F31E2C8E5038887719551A3CAF0B2943234D817A6EC4090799A2A0800D252F9801F5D034AE0C35F4D0B027A9AC325328B65F01DC6B809D6C40362173D7AFA234E372759947E2F9352D15FC2597898C5A97541CB29C9B7CB148BE50881E25A5886D3AC2717511D550AC063493913A30D95E6B428CDD927C0F8E2B899C6E45879618052980502688D436AB9B33D02155CE270C9D707B61A28048200AD71242E37E613A8E012898B8DF2AE92CD79B4BE4BB258C52B82D49C7BB83A42CD8BB800F60BF38D42251C605258474BF38F188EA44E0C53DCB47FC458C3D72971C0EE1F8D02155CFA47B66E544A1F7385330A1E70A43C341D8D60790C3C14C4D9A901C1DF3F42A56AF81832D375A6D89B377982C2AACA3423278F0BBC2E34EA5450C5136A971985329A9CE79BE426D19B6C1CF358472E565450D38DAC5C3E60C856848A1463AE7060D8BC83F8FAFB9F994E7F8F65B20E44BCAC858D935474F1815EA0FA54C4C0B279C56FFF08FA75F7EEB1E0DE59989C87D99E5217AF4009BE7D265F244780E35B5D6926BDCF1406D0066028A160F8610B66C38F6050464BE41A64B4C995CAEFF28401B177827B8D69426BC07AB7A0DB8D7982BB86DEBBE5DC708CCBDD6FB9D4726D7426191027ECD3E116C5D967CBC37C5800E569E318ACBCFA53EA92B17CE120582B022472D8C66E70A12028950F002E3F20ACD5D0769C8E9C6670C121249407D82D3E44C49510BE5C26CAE4087CBCF7CD08F983EFB1216D3C2257F7E9333C5F3008565CB081B35846EFB2576BC49A78C0EDA2D76A9AC94ECD8DE19C3C3CD412E4BAB8E595E5BBD797C8E50886929A508A38BD6FE6651551DA9901677100C2E56ECE10EBE105B38BDC9ED10BB03AD5F09CA24CA26D6E23FD940D6F6069219C7B1009E600892AB5B10CF7096822F59F823C4EA0B84C17AAA0881FE41E8A13D5384301E67285DD858E9E9494F186E0658EA1005D1476BC097339417120FBDE9424F303C945EF7D83836C0C3DFAC31DCC34EEC65858A1825081DF2AFC3B5D1DDDBC8EC0D8FAD50923C6DC61E15E65129697C90DCE171A4CA8E8E20BCFCB0C25585514F7CEF33239C06F2061848A605EC078404184EA0E7A6E2E07705CF8267AA9325E30BCF06DF48032A7459117902A727061595DE1192F120035A3D152A00DE8E50FDF40BD2A831CCBEBF3F60724DD66BF6E4E68D74A0AF7CEC0E49CFB1F3A4ACDFB1F20FEF091FB41DAE0902B56C3015AC5F5A42200962D1470A689E4661286D81A305BEE1C58B672860E4A4205F79024EA4715904D267F514153FC9708D5EB65BCCB8B46911E4BDCCE5990098C04687AAD484054188C564E5BF00F57155D5CF4FB0AF5A708DF2E9767FC5E55F9FA5BA70A0B3631B28479F968C6B2E9A3595C2674EC45D68242C1B69266CE20AE54B72AD230990302BCB2C386333980F8D21DB658172F685EB8C3BE8CAB7D9135478318A8897125C8C947F290491FC7A2F2B88E5AD07242C1B4825ECE80AD50A7EA4E1ACB1C8293563F74CBCF2371D193700D17B4BC13B77265DCFAE7E59FB7A574D1F4CFFC8C76517C50CE59AE9607501F866BEE5FB1F89057712BD5E778BB4BA3AABE58764CEA3F72D1AEC907023F9F854E43D015045C0B04140FAE694C54D4414B99880515C9A0FC21B71DA4C14D92CE6A361D0BAF2DA69741D0587A4D97D84E28F5C2682254BDEBB68E205A85C2D927985C86F6A9F80EE4A4935824C7F85BEAE9264287290E57D7C54E06DDA1B9D1401CA70957D9650D03C4F2157098DC1A7097BA0E2E56C2354C17BA168EEB508F780944A9C087CE2483A9E69487B028C9B02E6CC8F2B4710C5C5EFD2D27144DCA5D54ADEF8647B515C2516E1610BD14B5167CF925790D4DA562B940A1B4161612A2D27A281C3B12E4B10EC1E59E395250C5076E177BE288D1442136E566B18EDBC5C6A952457C80F650E2551A61CA81246310BB712B5D1C14BB4A5A4B005056D4CA470CCBA94FA53896CA1B0CBA5522096E16CB885E701821D5C4037E971B44608A9CA350BC403C4FF69BA4BA46B4C96D166FDE1435811282450C647826F24E45B650805056135484740C61958A531189CC1920A8F516BB38793D403990890775F9BC0278B15311EB2ACFA2E27B1BA5D71F95C674825CF0B08EC9A037B21395B7B4C19D822E4EC6770A75B88C21DEE9F66BDC9C59BD8CFFBD8F4B1597CBCF02C197A6D6C1AEA0249F7E552E96030CCA6B61195E94D143E1B491208F75082EF7A891822A3E70BBD883469826EB38D955D70CCE144005E794A0B8C93411C59C02012CCB9A4D508816ABE516D7E23A559185CE1B0EC6F5BC339DC73AAE0FC23BF354F181E2C3F1CE57676F9A9FA2D9315126FBD8C5CA0A24BCE50AE6058A6C5D286171CC160E18BFA012050F4C72E8AD43B02B06405F2770F86E9354C1074EC9BA5291A0CDE1F35AF5B76974ABF6AC0A49C9B93EBD26D2BC339DE2EBF99E74581A0768E25A7819A3F95EFCFA7FC23BF16842C3401AD802381A640BCE99F1A477883BBA3E548AEEF378479DDA932614A961E42D77A59EAF8143FC2D7665BE5740ED41128AD4300603B9289C2F8E43402DF652F05E81CBB8CCD37B25408DA4860185310E0150AC380E01C51A59A5F031977740B526135E2DCF921A0614C6786157C7F335708841B65E540A1F73F9C4E01F51B64951F7DEFD2BC22045CAC160CF480F86346FCF7E8D238E1B4C71ECAC527897250440A93CC449D35A81D4621FDCE429E016854B7D6013935F6114CA52DBC2E27287A37C259C2372B183D2A659D44A4F7B409B9B53F470269569CAEB99FC72437841532A9D1B7CAAD5D062668E4175547A756146C7405D6CE7AFA48D475C2F352CE029A3102348B2BA47F6724309458DFCE2FBB0820C8DA7B9F9591D633C9C997345F13C0276C933EB5FA22289B2AA6E74227062641C2076149AD8C3F9C2BE3448270A88ED067F403D283AC71040A6B06716A4B602B9E5EE90152AE116878BDD154BEAD023490D36C34F3BA8EC7FC2A8E4B00F0D959412CE5149D591222ABB5C3E51D9BCEDDABC02A03235C5527350D9136AC212E0EF391CE44BE406637C8B2F667A69504112F4E1749660B5B0B80F92DB31EC9615F90D62373F641B61596A4BB01BF9F39E360F765F2C5F07C74064EA48A5FC219377506AF4AF6A9DEB142C06D6AD7AED5397DEA15E639BB5A4F53ED21A8714C67A793BCA782AB8C4215B372AA58FB9FC235125AE93057593B0B7C470CE532CB7C4404E238A530BE126816CE9C19BD7C86DA961DB873CFB1417655EB71A79E406524340C40875B008F3F719C2092572802FA1C59711C8E12A282CD9C2E4964016C872AC5824C7305BECB22BAEC4555CDC276B719FCAA1B70435BC046809021338B82E56A28763800275A52201962D0C88CA576D61725B005DECC2AD580BD7E85CEAD26DB3FD667CBE27CF6E92622BECAAB939208412C43A18E597E2B3CB964AE5007652FB2B058863B640A0D7FDD0801E96C322F4F052C2811E209573E801F6579BDB1BB205033DE95C332F8355E02D75EA59A68707A42E74129A5443617B3F2F83459C2E7703BF4C0FE7385DEC66FD468D3FE274A371165090878B569C5C1BB19CB2BC77EA62B95C81505C13CB9874641579273BE7C7CFE20084EF1679AA4FAE8717CCD2F5A6E83AFD9EE4E3AB411F43D247157DB2C61D9EE99205F0969CB60A19ED1C2DBD829F53E73A6D81621156D3508A7F3999DC348025C7C2125D7C21FB506262857550512607F80D64655445302F605CEC2A29AB4AB30BE5F577E1857DC25C0EE08897B6C4393099325E300C54A18A1C5836BF286E04D19D67E064E26298A0D70631AF34EF3E5522982B3C4A6A6341930DA4266AB30D701E27505CF0848358113FC85DEE9403AC87D69C83120BA7A83EB869072D35FD3681439B7860B4549A79E0E572D50C963CF92053C61BBE173CFD40EAA23AFFC0CBE504C5214D41C824F303C9654F4290BA28CF4270B33901E5D22722A4DAF841F2614D45347F9D16455E40BA28000CCBEB0ED578A1BC2380B8528B0138A09847940375AB0C752CAF37BC9FD5EC518DD75A5ED75D2F7F74C8924268C6A9AC824A281880F89EAA268084631BD924D8F2ADE400A57C4BA8145EE7F206C4AB64F3E469FD30EAC79DCAEC2F4C0E0112A7D471AC9C127C06AF62911CE04B6C758DF9DDDA4E5EA1F6EC6D529455ADCAF5198A3710D7E43F52C0F132F16037D2EB028F5B926FF8C904730442594D288981670C058C0A3352DC1C5661B8DC5928A922EE31BBD8D9A75A8F9F9B5838C96E353C27270F0FB103B92E6079E5F8769B12B91C2150520BCB729AA3328A3E13CA601180CB7698223D9CA375D1EEF2F9C589E27886A0E4211311E96292E4EBDB1582D238821468618D618B6797578B2FDD8B42131A06D232B79AF0A47788BB456E2AC18457E9624952F3C85B70870A6BE0167FCBED445F5CAC54314892F23088A8743148315E2006610D1C6110AE978561F0729F4982B881CA30F25A9EBE8337461287E021ACAA526E93C12B647E398F92B41BC108518313F280D3D3E8A287E0BD948B8779823BC21B541F8AAE2A0CC075FF9EE71BFE7E055E066B00C4CB008088CB1C362001455C0313A82F1511B06C610055DEA392A4D6C01946070B8BE31A5C0BEC6A5FBE49CA5D54ADEFA47D2D41C983D340A48B2792FB92BA5B507247C803EB64091DEE28F865BC8E937BE9242F94C12208B1427CBB369150CE61C61A5FC9CD0DB9BC82EED7D5BEACF26D5C74B7202BAE2FF0B3F10048E7D0C5A1A044DF68948BE60893F25A5111248C050A4697FE0ABC0F79FB149D1658A8CCCE404A970B9E0C20F50AB2435755CC17D039F5AB220E95D527E85777C9AEBDBD1EFD8E8A8DF095020E3D07DA3DA926A2C112E05BE007814304B0480F379815D5958A0458367F10ADF2F5B7AB2AAAF6E5752DCC2A4FD3782D8916F87940A88EE45A501594E2353C90CBE5027EF23A500A0CC8ACC1C0F0AC2CF75A18EC335804E0504448E8A385F2003DDAF4AAB8EBF30501BADA17A7492CB80C1EA4B604B7913FA7636E450DAF5B16E9E0189A4C1DA976C94DA65040F9252A92481D951DB93D58F605C0B8ECA50D1D989416EE9149D5932234BB5CDEB0499F4B5DD5CB4BCA07A0957243C88532EA4058ADE0451E83D652CD01CCB5EA58451E4F47A14F9B83B2284F8572C445270C16E5BDF95A27C67F23C0AC9B898B28CBF2AA49FA0D4580ABB4A87154FEFEB02AF66C93A8995FC555CF76BF415DCE3A467EB94DC203CB2E0D8037C9A48EA8C6673D183E64B284577BD21B10868E72257CF043D5AB344AB6105386488BEDFBFC36C9646C1B222DB6359A655CDB63E212A6E32521103BFC0A1109A3719B1BC408DF5B2867C4E1A092B50F20A0FC7D9A840BF63823C488781D53C66A9C410159E153580AAC9AC88FC7A80BB9E56CAED0603A076B6948D46ACD08BD10338A44892579492FC89224510044BD039D078876BBBFDC64E7D1FA0EF9598ECDBA54250DEB416584FCA5C0681889164B193FB983E9087970C5D39524A3AE8501A5A368142B14BF24915BB33891842FDD8D436CD9684B6682A6495EC6D5BEC878F54D9228B26C82F5CB78971720B2192245B65F22143DCAD862442A2DA77B4994D37286675C95E4E30BA56337614DF4140AFDE6B884D366FD1C6F77695481D0E1536B15A45A843673540F37091C5150245AF2724CCD2C3F6AB094F19333EBF650086251964443C0736477340A4EEBC098135371881544477D731615DF5B08D51FC102583229EBD3EDD7B889459A3D223B50709A4687E9BFF7712963DAD048997E410329387A6953A40CDEA6D12DAF87EBD394BB4A6EB84913C8FBB5BA6C4E6F5627A9B0F823CA36293700EF5295FB58E636626E47CB50CA4BE8A68A385C87793A79072360844FF8C9256ABA778EC7C292D542091EC08644658944E24899608F81437C8897DA25AC9A3A16384D2A5D859B24DA076854B8CA824E8848CE372FD017985B9724E17119DF147179F739FF1683F30178BA02B36D547C83D9D429720692F903A5B9837A241C17083C17FB78CF1D2B8F142ACD19BBEC0C6ACF58B202AFF1CE1A1E3BFC72210586C3A50E3C7ED8CD1B0AEC9E5F9CF01835A78C1558BCB858F1583447F51458F4FBE6797CC6B3091266D8E90C881771404641AE61BB2B4F306C83B1023B7A03178F2BBB214F85B934EC63A994A67CBA2D3CBC499F618B958C553BF58B82C2B3EC2F84F67FE639DC26003A05E6D8CA1DC0124BD51C86AF385082575C28E6D8D43936974D4E115FF7D3BE18313C99DC53D273FBE3320E9C6158301A741DE6AF99750229AF7E0D08E305CD61D36B39A4252658A99FC5965BA9A354D7ACCD60C64A1D2F89957A658C5BA9EB54E5466A09D5F56AE8CD98A86525B150A7C86C03E153C0D7AB3CBB498A6DB36B0AB0119796AF1B2F0B6429D1FA921A53C066A0F9E7DAA9FBA164279C5651252C8B393BE14CDDD9695C9B929A69205556A8CF61D248034FC046C442DC6C4BD5E7D0B0152FD63E24015F03820EB2453BB414D880E40068CE5F999BA637B140076B8E938825C728276B8FF300F427D71BCD98005F58E49880B7DF9F151FD8E9AF6D02602F3F6E02629D74B609B0AD75DD72266B038686AF004D0A59015F9E15D88261051B6358A23586866E99848F05607329588BE4B6D2293820378E2AD970BAE27C00900452B1F955AFAAB8BB1AEF6F296AE6F540CD710AA1E0182147F771D787D8043827B81730AFBDB0FF63E954E517F68613ECE1AC6F1CAEAFAAA2DB189B4B13DA872256528ACC63C8521453D7E6FAE92CBB47CE292FC0B85C44AEA1DD98CBA8D130B6AECDF66C9C1255B0DA48ADA1DD90C9A8CD46AE7E4C56CF002B5B0C116BAB767162C15E88A92773AD74CCB59A60AE950D73AD9C9BEBE7DA819E66B7BCA88847ADA1DB90C9A8C546AEAE4DF65CB12D3ED76B86CF0DB7C0E71E1ADF8B66050D7DBEDC674A362232682887E7336A3582B16BF3FDD263FA322EF75BDE685D9C4743572AAB513BD2BC5D9BF2A5620FF052CFF9BF34ECF75F7A70F9BF0E4BB80AF619883594EAF318B5D4C0D4B1B99E3E191796E5F6C2A8D5751B3399B418C6D5B9C9A8A56D15BB915974D424729AB520C9DAB5199F329B0F140CC964D2D097CE6BD4980C73CBE624965B4669A4EB4318A9E25A0EAEAAA9F5218C276C275E25CCB5545B9AC67A1A934151433A9F39DB319CADAFB051C79BAE49B9C50664E8D5B4A4B3C9CCD76E66553421C31CB0A0F090A60113AAEF10A0C9357454DF27A06F3FF7DB059A6287FB1355AC065FB628D68BB969D198C5981B151DD84BBD67A0A8D5F552EF1FB44DE6BA9BC07760CBA1C6A116AB0767E2594EB4255C95B545B4BDEB5F4A12DA0AA01206561431274CEB0FBB8A83349A970B6388A30B884C41057124A1690FC7DB73DA42C5AE082253D044EC7C34CDE2D2DD8C67A92578810985DB2E587ACE368EF1ACB7781F07C0D01D6EF053E702DC60640A558D29351F37183378C703CFCE26BAA95E0AA55E6A20D6E84946354DF7510367CE5819AC0243369344453C723DED2471D12CCBF90B8CCEF34D729328474618B98686632EF3D6C3785B0EC589629B931CAFBFFF992936569C5E433B2C9B79D3E1CC9DCC3BF4878BAFBBAB51E10D6E1C4AB1626C069EBDB06B4724C602785A86D850E278F789C43E03A1A22AC30F73D6197EB832CE3B787B2043A328FF3B788BE0446BBCB3BA4D90BA67E71AFF5B6613865E4D233A9BCC564A13035CE69CD93B6E4598B0A1AA3322893514547549FAA673ED98EA4275F036016BD670E6DA4FE165F24E3408E9F555E39D75306237DE2108EAFA2DE3369407F81C6A7515E5E1FD64EBB98EEE891B22E4F39E3C72B1829C5C3CE3096FAD50666EB9D992C5CA46E21C6A1DCD6463F1395673351AEF798D97E8A84D1F83F4F2D919289B68CE877FB78F3A7B07B3CC58B922DC89C8B59413216FBEE93C624F6D5A1ACEA0ABA3C254F52C1B3AEB3580E2C5B342E20C5A7A8A6786E6DBD1DDEC10EC7F71C9753A122CDF14B78F59C062E782952268EA82FBD50C595A121D72E93575964488332DEA314894CF0173E9759494CF02CF31A1AF96AE3011CCCFA0A3A0C254F01CFB399F0C068A272E2956B625F78D0C158DA127324C5B157A0D032B03B8C3D9C48A747747B1EC4E050EA5700919C8C059941EAF51162F4A431C9DDCB78017CCBD6B00A453D6877BF3C044FBB8B98780B935FB1ABFF71A689C227A41931164031B2470E3B7A8458AD8C326E455C9641B62179A5F037791F34C29CE265359989B6F58F28676A961C5A54073F9D2EA33626615A872E875545681EA0C8BBA87EA70A1FF3570173FCF90A24C32750579F926C55F26901A54540217A0A24A9B0750A5453B01B9127E9496ECE89705D4A0E965C18E2A5E1D9A823CEADAAA03739A35BDC192FFBA03F148F8F82A036B665D167CAB6872822A41F8B685A042748B068747E06B172EAA6878E06252EDF4B96759A763E2B84EFA5205D531BE0F62B426C46B1C1C4A355DC5EB1AD48B228AF673B3984194A809CE8970D405A086C90200997048CAA154D44E382C9D6831774353EA1D1EC249CB6CC5D0AB69476793D94D1A0408994B3A182336A4DE0A92B8343EB540456E26D07A92C78B5459DBF47074A9E2B50711B9866AE29587796673B9EEC0142EF66F7C6A0DFDC47E6E96E93CBA3B466E059747E7D1F04C8CE6A65D1F5D00E4FE644F9BCD37ABA431F3A9D5359534E5394674DA92B1B2C96B471079729BC59B37454D20B3A330AF9AEA2216321BD34F9F285A5B58A4A3F89A94417934C2CB364571E5718A11333BEADF990708659D942883A83311E483BB2AE805456177252AC1768F453F8E2846A8809AAF203F13643FE0454781F104BC2DA28F2955BC882122D7504DBC8431D36E2E1730E8573EAFD9173A8546E46452D216CE2B3168FF5EA99A413945006695D69909E32A639321D7D056199B534CE9159B57676F9A9F9C204948AFA3E398CD860531EE6EFC625B6EFF5EAE82DD3A520DA5DA1C16ACD531060C35BC0C6C62276FFDE4AE740B3E45C4D782A1E5ECD2EDDE0016EFCDA538D9DD57DF14363E8BCC37C3402397BD279D6D8481116003EC99676376906E8BA7A9E42A4837C0AB5BC3F15EF7A64CE906779A4AAE86742BBBBA45DCEC65ED4BBB8CCB3CBD97D902A3922B3012CFB605C6CA812DDA22789B79012AB90223F16C5B60AC5C5CD9D33DBC7E3D3CC00E5A84A612AA4111732C32BE072F360ACDCD2E40FA522447B4183225152447B2742DE2F00C1656A4B89301085575117735138CE3FC7055F36886EE29497E26A19EE2BCA283565426A5D356FC821C9C9CA40B57393EC9CDA3AFABCA414A1336757DA412285FE15CA520D72495154E581A32AE7777A076E052904B5F6DB5A397260CEC2C9CFD121549945582F703710AA1221821C73C1D85D4243827ABEF07F60589E7E66042250DC4F371134CE2720E8E2CB6FB2937504FA8AACFF0D39481FA9FB081780CA719A8398926BD991B2614EAC3D2730CD4134A2D0470B4EB5B8602F9CE852051939EEF5EF42D61DDC10C25353F04136B00A19A0A03BD31A38C1C79272F0D4EB635FCD41A8F56CB516B366A4671DB60E4F76733640A2A48EFCFD6B187E37B90DB42254E44D183C8DC87A205DC380E35AFA1E532D4FC85A215DC798A0F79F60935B3BCB6BBD059C0847C5D407AC83418A1D83A30478B8E032F503C28E250AAE9221EFC4C328F9B510E5E62F73A15AF49F148D5D4C172183311CE138A67C764E3A6128E8938948A4A094745D3ECE4705CD40CD6C77DF4E2A78CF8C47CC5B879207311C4427BF1D95A6C7D64A1DD0F3563E1C4AA5A61794C1A0B67EBD058A240904BABAE9328249C6E2977B12159B278C6954BABAA98787675AAB95CCEA43625ABBFF1242297A8A7FECA13432EB79DFB779ED862458B26026A1DCD440B2573ADE66A71845F323349AE63473AF314D5E919778B56A68B12185DB27660AA0A647E52FFF91751364BB6F5E837C5C32C21BD8E92E221D75C13BA197DB1E54AAEFF1367D0515072FDDF5CFB39BDFEAF295EE3A27221BD444B8DABCA597AB9113D5C560E942BEDC1B5AF2B17E4B2633AA7BD385CB46A37AE967B92F6AA1DB91153FBEFCA75AEF21567D03580AC379F6B60B7FDB9CE7DBEE20C5A7A2A74E9B3ECE8B053D7BAD45792434B47957E7D96117DF7EC2A37FBAA64D3575A72B7AF21D37AB8DDF76C133705D4825D77CD80352A40C5D78E25864C56A78AAD04F0819E0CEAA86A0290E7B4CB7C9F3CAD4F5C7DDC49C2490E255F293803E74ADF815268270E4B8B6EAE2EF1D9DBA428ABBAD8EB33E40F92284DFE23B212975EAC182F1BCF6223BDDC685CDEEE4C278E53F8C4CA8A89E3931916731998D445FFDC38CD24BB55831B8F5CAC1F2717CF7403B9DC723CCE96A136162B471A48ABAA951C67938CE51A65CF2F4EE40E9F2412AB42D0F24C8388E446213959C64D5D98682680A191CB2E1AF36B19C1D5F01E2B4FD272282A251524AD45C71A4E5BC88B8B958245282AB11A2431CF22884A6E118A95338B5CEE33BEBF1809E4C23774B34DD072B1EC237E398F92B473D23CD5091AB1DC3829CF003D8DDC0A04377B3B1289A2BA7FCFF30DEF7914985651132C8B41FBE05C013B61C9C6ED256C341495A236C2E633C13A4E1AD2CBFE4A42514B2289C4E213B43C6B0C44727390FCECB6A6B1ACEE4618412006D2AAAA3266316A218CAD65D8FCBADA9755BE8D8B6EB3A33C7015E410ABC7CFC8B31D9D436E424119AE0D49DD88A96C4E3A9FA6C2F4459CF64C4B9724B9251A3A2633CDD6ABBB64D7EE03963E2506920AF58472708CD8934A6D07F274F09C58FD3CC7551555FBB279236595A769BCE6376E01B9403D7E2ED06C23B9D86A02B6365B32556CFD6C8CAABD065A75ADFA2C262D35F0746426E18DA430A19A32C21B48A758C7DD85A354A982D3BD1C4A658504E77B279AC8D9015F7A256A558F1E5456E7D432F21556CA0F5914CA28B6AD5A518697E95E3D6E19ADF2AC8A922C2E86B4578FAFD677F136EA3EBC7A8C48D6F1AEDA47693D384BCB3EE13CDAEDEA41CE98B3FBF2E06A17AD9162ABFF7EF5F0C1DFDB342B7F7F785755BBDF1E3F2E1BD6E5A36DB22EF232BFA91EADF3EDE368933FFEE9C9935F1F3F7DFA78DBF278BC2656FE5E51D20E25557911DDC6542A2A1A49DA2C21BC89AAE86B54A23A5A6DB60CD9C96E9726EBC63C6FBED6DFE3BFA976F56AB0775F640BCCFA8AE7B8792B8CADD83A43DD3FF739EADF7DAEEA2E2F92FF741552A0B8E7D1C92E797496DD14A8328BFDBADA17F1A39E39CD7B34F15BA475BDFEDD1820C630C1CF8A325FADA3342A3E15F92E2EAAEF0FF097CACE36C84279BADF66F4571AB97C4EAF919D5FFC7C15AF8B1AA8383732459D63FD7F9253FB85E5F0EA316519BA5A1E33F5423515BAA295605077A682F709662341C45F010DE2EC3CABD358D043C138EF49F32153D4398EDB3D688E648A3AC7D699F2F942E91ADCF32A4A2FF651530F146332499367BDFB15E0D77ED6E4D5741E00B3EEBB4EED0C27B3D8EA219226F0FC987138D609EAFCB0A3768CA3239326F0A4652412D4F99D95AB7CBB4B63347EA19A1F9EA0CEEF1275B4C5379255FF2D18FFC9DBE233BF0B1D7BF6BA8C293DA98C831DF7D9442D6CBF877D56E7F53E82588D5FD5399D279B4D1AB3BCF0EF1ADD7AB2FE96B15DFBF0559DD3D5FEE626F99BE4D37FD3B0537C1FA79491DA4F3ADD5E92BD8968973A7ED570CF4995D29EB9FDA4CEE3741B25E955729B45756B2099D169EA5C3FDDE5554E32EB3E69F0685F1EFC94AC59C9E8346DAE67E597A44CBED2E66353D539D76DFF7D94DDEED130E35B4C75E74CA2460D651192E43CFF8A0443AE86AA223A5197EFC79B9B140D711AC705702692355A5B375140B436CEE4019FCB59897A71A89B1B3EEBF07A5BE4FF89339A55FF55B3C5000D459BC7D0FD03CCB0340D6C4765F9575E6CFE88CA3B0AD7448A463DC6EB7D51F77355B4A590472569F9862CFEB0DF7EA51147244CE2C7B1284CA1E167FFCADF466BD4EBB76D828EAC99548DFE245F7FCBF7D569B6A97DFF9FD59AEA5BD8E409BC0199E93475AE27EB755C966F1144E3CD2ADF67D4F81D48D6F3A06CE4307E0D2618C57778AFD228D95A894C995226C4A60A3CEC44A775813487FE9BC6D0A916B95D9123E79C86CF9ABCBE44E91E62D67D0F1261EFF3DB24B38EB0A6949908E3F0E07B28448EBEDD271BBA2FA092B4E2BB26CFBFE8088C48B085E300D0D29E38B10C96BA9099588159D8752775993497FE5B3095899F59B3508DFCEB87142A5094D94E3FC2C60381C502F8EE5D0BD5C5DFB2AC505DA2CCD6E6F481C97CCD4EBF3D38C6CCBF8E9F35867DD93D324C5E30B3B944824EF7D21E03A1D9E1DF35B95D9C80CCDACFBABC5630AF957E0D9C66B78CC7C5BFAB736315D4D5AD99D34438BADC67342B2A495FC7CBB8DC6F995E814DD5D097A9045DFB777B7D6936D8678D15926E1B28B3E4827DD790EC64BF61C4EABE69D89EDCFCC7189F4DD6F240ED4C13E087C6048DC1FFC9676ABC5F7FD09978FA84BACC24A2A68CB0CF5A93586974CB4C6135DFFCAD1F75BB6299D5ADF1B306BEBA4B116866F8F790BA7E5B7DFEB4CEDE612FCFC665C3476D3E404BED3F6B4C55269BABB89E86A3B911095AFCE00D2F4482AD5556FE84EC708B30231799A4A769B75118D2154BF2E785CF4A9491E348F1148D5E1ADC763165C7C5555ED4A1DFDB845E4D22128EFE744CE6FBD36E91C88E538599ABB9565EDE1F74D44BDC666EA1B60457BA2BD49730F78F5A63F871101B35C63F13A35263A2DC3F708D7587082CD517788042B1B63879EDD41527B29B10D6A9D73A571664DD6AD59CA82684193F8784A0D646B610D4729F86205EDE1FB4B5E33BB09BD38D166A8C2A63E63E719083B501A7E1ADE2B822D0E41F9EA631C88BB2DBF86D916FA971DEF85993D7E71CE0F4596B1F5D3DAB036E8B2112FCECCA1A0E5433558027F8193A2D612BF89BB85C17C9AE6EF5F4F6772C41E3604EFEF7053D24EEBF05E52989CBC02D794A51198AAE52CC6229BEB2BFC20A9ACBE9BFEB731B2F5CE6F12529F4A776D85330648A3A47FA00252D3194AEC9BDBDC416643C2669797DFCA03BE3F9C9C4C3F0D8E38DCACC12159172C0D367ED4D7396A6CFA06BF51467CFE0AC4B7180E6CF15A2F1CF79B4BE4B3268CA1D4B597AE87971C25D6B2492B41CDB297FFDF27422CF8B155FCED5449EE77CDDCFA7E91E82F3F53795D1350B5B73191DFB699319DCCC765C9C7987B488F991FA369A285BC736E747B0322606FD420E76F080170BCD66E0693E3BD25E0E68AD994ED3D8A263E1187D9FA7BD00091E45F469FA5CEB85FF2483B9F669FA56E55954778EA21916B0D3ED44829E74F1863DF18A7F0FD2CB58773133FDCB92F6F45ABBE942D44E418289FCA1160B1268F23776BB86C97B3FC27728B514F00623363518E782F770768EE860054C399E23CCFE03AFCB91EF2859EA15848528760D121E4B996F59EA84F3EB8813293609C7E9E6E374B31AC7454D370B5F053536EFCC2F4563065AC4E4C7F48DBD83FA679E735C579BE273F1CDB4771DD6DA5911A924BD5969EC192D765E9A48D49B9916F0A512D5F9D6FA5DC6A8856534533245B3578159524947EF6FD2FBF391833CC21F51B6495187BE3A050E4DE08913F95EAC047CEBC4607A2BF60A640B9D95ECDA6885AE4ACEE2471D87351B8E5B2F626DFE9F2C63CA204CC6C1D2FC7F536C73F7FA65BCCB0BCE2DCD1481FE940BB3398C4850E7F7711767C88C8D3C24433245C702790973245302C333562316118D953219D3421E76507D956CD0970D5205D82481A5E8B6932FD13EAD44ED842250E75F1FF5633DE9F85523E8E52C3D4D9FC816CD914FE1DAF4548C4318BFEA1C8DADDD25C30AFBBC4CCF7200DB2E98F660D14B61A54CF652421E4BF1524BC0F0A2A6AAC68AB0B579A8633F6DF31037B335C01ABDD9C0C6FD01EAC311AE54CB39A667F194E7E4239ECECF77324FC1D87C0486C7E164BCCA9FBD759449D4E0BBAE927B9A5DF74D274EBA29E2F2EE73FE2DCEDE2737F1E784D617A6D090334DF3BF90F32E925B7AB30395A43376FCB4FF8A0C470F1CFBAF8135C3A627B43BC1D017316F2C7640D30B76B62F1E272D2CDC4D3A3EC1DAD6F9E778BB4BD1B0C5D25DA5BCE226DD5DAACECC4E33C22560F76D9369D3B8F61A89B8E3344102CB19A40C81C9358C829FAAEF8DF3A97D4DC56A3D7665CCA8422E87658CBE0C04BD9B0D0A1AA9D75A868F1A9A55CC1EEFEE93CEDAFC3EAB0AAABF1E3E6AADF157D1BAFA1417257D349E4A0AAED50CCF9B5BF67ED3025029074B5D67775B2DEFCA0E28DD77C76C7EEFCFB8D77C1D23A138DB61C65475CE9F8AF83EC9F7E5F00628C1994DD59779789011161A4BD688C8B7DBA462B61B8E5F35F48FB30D823DA576FF516BB06BECB6DFFA85DE0A7A498B48D0F089E4B5CA10670E49903ED2BA839CE91D971A50507111CF1F62C91ADBCEA2728896C95D6778828EAC66EFBF31BDE10C79F9AC44C146FD6C38A3339378740D78BAAE6BA022002BDE4152868A8790B2588697B07136B8F69AFF8CB3B88880230454A2C6AC7980176384B0B135802EFC1C4957A0A8A8F15AD6FB73A2B4999DBB84D792E60F4FCA32B9CDE2CD9BA26640F365538F2857EA8DD6559E45C5F7D6B7D61FEDE09B2D6752A7A4C06519FD52B712052FFE3389C1E0E574FB356EB64A3483F79D1D6748173201297216D66062789315A6C9BFF771C9F085D2C3D968FA25CE36EC81FAF1AB8665CFDE741346ECFDDA649206CF7DBD55027ACC974C51E7F83EAFA027A3B1CFFA3352F04494D6F02ED9C61F6FFAA6400EEEC8249D4D1E3AEFC4F877574DE3B0EDAE9A42E6B92B0E8BA5B8AB8FC506B51AA00910099A7BC25FD72351667B0495A4C99333CF4BA7D98F223D358DD6075B69102DEB09CD8097F1075D9FAE1FCCB376074BCF7C4235F1B3FEA01545DEE563F3C69CC94F43C918FCA035F72EFF5AA3D9D69510CD9397FA95C5CD69A796CCCF91F61E82E6877FD7E8AFA3E236AEA07B60C8147FEB31287ECEB7A82A3711CB924ED3E15AE6E93D14529029FE66BACC5F2EE0FF5141FEBC7F6F757ACA7FFC1E925F6BAF37B0F6DA7BC77E9A77E3665E8A83337BBB4D670E9A19F6D9D6B83CDC66E8F9B6A8E63D7A375746498A526B516A9C7ECCE675BC3C8ADE587ABC3CEA7879940AAF502E8FF2D7197C898A24B274E875643FCDE773335B73F3803FF63DE18CF2757600386229C1806A14CBD621FFE9A01265F63D43C405C0720ED0A3E6D27413B68E4D60FCA779147EEE705D4A233334D94424E8CC0D997EB3A6BD6B085CCDA5920E76B569A80B7BF7194E5CCC10E4F5EDF13C7B29AB2E6A867F3A3A2793CE697CC543F0ECC96437D51D4D12F087290ED6117EC8B3E64427429295F685F19FD0C484B9EDB4320B2382F6E40778CF1399E4632F16322DDB030C1FFD2D619D959FDB06434FBF0C9F757885FBF4FA212E5979F265CD74B3CD734CC20214DC9924FF5266C3CD77FA219E353A1B8E6D0F13D480FBA009A6F1E73C770B10689F7A813C0B95348127ED0F888409AB02803B259326F0641C209E1096D3AAE7FF6D2EED490B51755E621E4B716076DEC9A2563B79CC01329F0B7DC737B38E0B5FCB88ECACBF26282F45D54D1EDF130CC44F1E5F163C7AC91FC94B222F57D91AFA82BCD53C2227EB0FBAA081DF366DA523C30B985061E2EC96A65DF75FFF0BF922FAD46BF751F70031E39B269C886F5F76F9B3622EE01E3EABF33AFD7B97209332CCF0EF1A8B18455E357EFB7382FA74CA664C6240B0AF77FD5A027CB3A1780AD4E18C3FAA67CA2D5D3B7BB6891B267501534E8B09B3FFA095D55A1B85CB17FB786FA7DAC822A66CE09230B03612626B6FC29A56E06B503FDE0ACF55B279F2B41EBA7CDCD9DAACC8E5AF827661766B589FBD2BA403CE9F253B754025F9C1687D29C819C5A8FFA6C7E5E31EBA6F641F52985483E8D9DBA428AB1A49D6603E163111E822064B99E0C20E72B073064CE224BE7403A0928282DDCFCD9C1BFA660D754309134127C8FFA3636E582466D73DB184A0F0F6FCE2C41AD210EF891803732E055D66A7ECCFA35B64D5847ED10DFBAC83FB6610475F168F7DD6984FD97ECDCB92E1857DD6984D491AD050B328FD47753E6FF7E94D92A635AC485E4482EE4C16348FA5C5A57B4692E2337CD5B6D39724FE0BB4559BA0CEAF3FD843F01A3EEA6978B681AEF82253D439BEA6DFF07BADF772DFD03C9A16CC693A5D9A869EF7F7947AF5078DFA8BB2AB5DB4661A0DFE7D59CB401E7BAE17172B6B3D17E23DB1E702732EA5E7BAAAA2A262F700629F35FA876CF3294F68E7327ED5D84DB8CF80EB6EFA8F5A7CD8970C868F4161FB97F328496D0E02FA0226A29C9F3DDC19964EE4F37CC36C1DA0928E0D66510D06AB3D2BED05E33FA1B90873FFA8CB26C885BCEC9F13B1E6E38612263A3941FE70BD5CFF821A74411C9EA2CF918E0BF1EF3A6B30F39E4AF188D85FA97784AC01972E68227EE56CECC0987A679173F2014F3E8E79542168FFD919B698A9F0B3FAD08CBF4A58DD253B6BD71660FCA7999D9FDB4E63AF8BEC66B280C3BA78D221C52F55538D51F1FD2CFB0BA958DF1567070E40415370A1C4C60E401ADBB0358A7DF671E4DAC6F3178D4AEC6010FBACCEEBA4AAEA2979FA2037F659632EB5C8F7B777D56BCA6CD8E729E1252FB80CAA99E6EB6FF62E6017B0576A9382DCF67CB5C907ABA6DFB3265C48E8AEA567223C2A4DA3B1370F784455043F3E0D24ABF3FEB88B3354CD4D6D926CC9148DDE2FFE0BE0367ED5D4BBDD2C0D68DC27E8DAD1F423294DCE4FEDAD1E757BDBE5490AF06628344B684EF15C31CB79749A3E56C1D10895A6C77538140433A6920F72B0431FE65AD99ADC830A9A7A6598948D1DB76EF7605C20C1789FB8CAB32A4AB2B8A04986D2BB2FC3DF65FFA1AEB3E836AE6762D372CC77B5BE8BB751A36DB98BD675834014CDCEBABA53F81A95714BF2F00132CD7DB2890BD4C17D4736DD3EAA091E5DFD3BED3705F404E75196DCC465D59CDFF9FDE14F4F9EBC7CF8E0244DA2B2DE8F9DDE3C7CF0F736CDCADFD6CD0C4D9465791BA1FFFEF0AEAA76BF3D7E5C3625968FB6C9BAC8CBFCA67AB4CEB78FA34DFEF8A7274F9F3D7EFAF471BCD93EA6B3776C95B83CF9B5E752969B14C72AD6ACFA68148DE0E38C9E417AF5AFF83B5DC53D782EE31BE634D063AAB6E9ECAF687735E4AC45F9FD61761F15EBBBA878F8E03CFAFB7D9CDD5677BF3F7CF6D3C3071FF6691A7D4D11C94D94960C3669BEAF518DBEF8F92A5E17F5D91C01EF974FB479B76D43C0F3E9131953BC99086BA5EE0BE09B6CD46A664A9D8CB5D1AC49356E7098AFFD14A1E149918D6745B4CD472E5C6305D148FFADDEB3F4F7EF0FFFAF26E36F0FCEFECF6B3CEF3F1E346FCBFDF6E0C983FF5B5B08F2061D3D21F0BCB384689FB199230ACB619E4075A0340EB53159A6306AAFC898C9A4BDFA710617EA121EBAD92AD537C681B42FDEE87F7A89CB86820F75D1EAB0AC156C83DA5895D4FE45534DEA1E9F096A121C4CAA495C083453CDB312BBA4A9E5F535D10745FF320A69A6FF6D1BFDFDBF8BB55376DC27F543B2EBC6D6F5A10EF7BE1BEE99C8DA53B255132519E8F358CEEF234B8CCF93CD268D21D60A550C74F8C9FA5B668AD9D5FEE626F9DB08ABF7F17D9CF69CAA24FB3EC53FBECB936EB3C7CCA6F939A95233263ADD46497A95DC6651BB39D800CB4F7779959BE154E437491A0F3B97CDB13C2BBF2465F2D590116BAFF33ECA6EF76838F42DFE6EA662B29AF63CFF8AA4450ECE20CF8F3737291AF135AED2482B6B275D4DB0C28E8E4EEF70CEEAD581FFC4D91C1E4DB310FACA9F9EBF98D4D6B08B15A78BF7292ACBBFF262F34754DE99A9C378BDAF2F344175B9358335E405B2B8DFA86E969F11137EFE2B7F1BADD178AB6D14B378BDCFD7DFF27D759A6D6AEFDE5C7DC177F04ABD4DCF70B66827EB755C966F11F0E2CD2ADF67C3087D4AFF55BB0C388890C5BC7DCEE6F33F1E9C957F66C9BFF728E133B20615F6522D6BCE90BE1F38D7C5AFD228D91EC8B8BE3FBB3C61E8D166551D73A88D876ACBB6676F0C34F486DB9728DD4F61370919EFF3DB249B828C26633F47C94EE102397AE27FC5C0C22E400F1F5297E38F92CCF03085D0C2306F9FD09E841EF6021735F0F0EE1F0048EB22A6A0202C37D16B31419A36AB8B9A1DE7F70EA4AB9838325736D8384D7C2006EBB6886B4F96CF9C0FEEEE58D12F7AC838ABF8B3EC1ED92B2FBEEB0B80659D25427F0F82BE0463CEF9025C9C4C2CBFCE68A0F8D5D4E2570600789ADD4E58291A73CE12608AE5671BBD997145ADF7729FE9974E643662FCCBB8DC6FE3E955D0E79F57111330381B7EDDB92EFD92878CF31629BBB349139628879CF3F43FD96F2628DFE49A073DF254CB04ECD10C668953DFEAD14C284EEA84FBACF396664F3EF7451771944E9880FC8462C8244AE74CDC9C956FD3E8761E0723EB77D876B699AB16F8FD7B5AAC7482D1C389428DADA975BCD8B1D7B4A9E2647315D713A7FA0D14CB3AAB8112FBABB545E8B3CE1261F2AA3634F74EBC98A7A90F9E79B651B1E345FA661D322FDDFF9F95889301176E6277CF555ED4239BB7C9B854F9033871E81CC7625DB9ED1918CC051C2DA666B1D15B1D2DA66CB1764FF661D86B720463227C3116D85DDDA1DEA1391A61B7EA5BAD0FA4EA6D37157C1BF9FBFCF640AC16C44E72DCB4D3E6C8C6DCF3A2FFF115D7E9A1DDF080EB7416F510DFC05E1823DBAE881B4326ACF161F98DEE883616F9FE20DBBE89C7CD0D7452AFF3BF2FB863A0997E96FF76EBD1D1CE1D84F7572BEB8FC1DB9C4604201F4B9CEE28C9A764A7F381CE7ECEE436BE84A8676922F3CCF90EEAE9C46327C0E544BEBA3841439C814915DDCCCBD46DF2E8680FEC6C241AE19D47EBBB249B36F13BE43D9090FAE2C4C8BA19F2AAA786185DAC0C313A37A3DA8179799DA9900EEC07E20383703F2E2664FA8B8E0E674286BEBE497F2E64CC3D3754F7DF8FF6BA4C5BBD24738771ACBFE7D15F2B359F53BD649D64F3FA461A6F5A6E9F07B8B9731FCDB8259FBAD31DCB6F52ACB6DE269CF69DE4D70EC4A979DA7B6DF62E0E732D976037BFF99AB9E4C3C87D23474FA2E7496A65C16D3186CE33611DE081B812175165D3968EF3CF3FE2FCB38628388F79FBF2BB9EE07564730E5B75EA99E0304BAFE33478E01324C76970601A7C6CD647CF7F409EBF77B2CD9DFE01AC381A72FAC30E81F991FBEA147BD279EEC4B62156B5569771B52FB27923AEA63731C1E8D8032CAE0780008A9CCA1F51B6495184B13A9D87758CD5C54A9D9572BF44076507D22B591FC735DB9ADB267F40AB038D56CD0B0797F12E2F26F4A7000B2353F4FCCD604A6C3E12CF40CC70D0695EEAF3D1841566BD0301D655B2F9D4BE1C3169AFC09077DE3EE0C6B85FA27D5ACD4337C162E63D02062F41BD3037796C8253D3B3CC6CB6AD835D74DBF7B0E18041E9D18B98F322A1A1C9FED4C568BAC3C191EF83E0811C9B36D6F7383953E6EB2CA1B15B0AE1D74E18134DAEBAD9D7B26377E2378B7A33FCD2C9BA4AEE070ED39E00B829E2F2AE79BDE77D72137F4EB6F3244AD3FC2FE4288BE436610EA9884CA7B6DCFA69FF15D9CEC2101D1B141C879A16879AC1EC8DFBB1C6BCF84BE46D957E8EB7BBB4DE02751850C7159CB26116CF3DF3D8C0C8AAB7F13C81462E1A824D42C68161C2F6FC646FBA4FEDC3150762355EE0EE2BEA3DD96C508462E6118B7A9F9619A99A0BFB0B33EF89340F3DAEAB4F71514E3AD83BA9AD1F4E94D3DFF238FDFA019683B12EC06B5F14C4B68171936CFFE4F474A7F2A988EF937C5F0E6F411A58BDC75E729E11066EB74955CD542ECE3628049CB703C0C0DD68F513A815F972D0A48D56E4DDA3BA0C2739B503F16801CC9D51B1CD743736309825CE1F513904A7333069FA028D40B79220C79D9551F382BC9137ED96E611A8EEFCE8154C798520028AB3B276F5836167CD7E0672B23D503F627D1115EFBBCF11EF02852E8DB33990262B1809E8BAE0B24C6EB378F3A6A8194E8409CDC402567E3C0827EB2ACFA2E27BEB609B698FC3006F00FD4DB7FAE062DDF374FB356E567C9B71EAEE503C5010DB3930DBFE7B1F971344613958DDA5A6C9EE0B1AB94FB9B2B6CF376F97C3D99B6E6A656AB7407030E97CAFF6F55237FC30E9B4A7BEF3CAE0BBB5468E95A3AEE4E34DEF33E60EB4263F5D30C5CD350DE9E8E60CEE5AABB392F894DEA90920AADE1CFABA1EBFCE5C9A6E181999DD0C22B6538678EB550F04D8B6D730EB978C9A5D484773E9DCC6707C0543C368EFF2AFCD83598761AD20E6C0FA66AB2FC29873DEBD3C51711B57D3EE05C0F3CE5CA4303B9D8FC2B87CBB45DD4764906599A7F733FA4E9CC10F305F13ECD9D5009E6982A6C27B78585846194EC51E4A2C1584E7F67E8B4257A7139BD790DB64DB32F8625F00CD54FBBA92E691E8E39D2507D9DA8E7796C87AB0E39D254B998171E16D838BFB9C74035FA222897C9CBA3BA4AB62839803468CBACA9C24C490D7C6518F91FF8100CDD8BA9293156684F0A63F389C9DF79E1A7A63C569B35F58563B8FC34C51C5C43A64100182DE8558C765076DD77120E63AFA0DAFAFBA8C97CD9BF03CDDB1951FD4937DC8B34FF5B93D84CE03699C6184D1ED1181698D95C86C64F6660E9E11328CC5A9A617BCCECACF6D6B9937EF72B84F14073B2DB1A479EE667EFBC00EE30431BB1D443411CA199AB3E154B0B987D73B7606DE651CF6E14DF624040793AE64607C7C88DD84A33B3E7C7EA04B799CE5DAE9F2308C8CC4AAC777D4A106727C40E6B814A7E8C08F4F871D3DB8570F7E7C44ECD8071CFB00B16056FB80BCA87DEC61787EDB4B53F805C24BBE357AFFF5BF905B10F27DAE7FD7337D80DE14DFF6E5883FABF5EC967EFAF72E4115688215FAB36A5CEBE704450B93AEE0D6805DB365F8D846954EAD75825DE63E6E2935D6462133C93BA35AE9FA57F3F91F0FCE4A144AFC7B8F123E2383521DD24FCF5F18DB6C1517F7718102C58B7DBC3FA0857B636B59C1AD3D2D622DE52AD93C795AC7B11F770734369D37C7D4D5DF9FE5E4532D04873023F2FAA28933336C3EEE756FAAD082E7B3B749515635460F07A0FE274FB0930D930765140F9340C758DB757E3F37732EF53DB94770FD28E01A5660ED42EBF9C5C911540734DD7B1EDD9655918C4F2C4D8A30B3A612C67BB9A73039DD7ECDCB7226934FC9BADA17B39479BB4F6F9234AD777DCC0A98DB37C2E670E89E5633608F2F49FCD71C36FD919899DA9C6DC89B9FA6F0793D3E993525FB80F7A6FDCE52E8FE7E56CD44D9D52E5ACFC4FB814DB26B75452F2E56C7AEC85C577455454535778FDA69B6F99427A3A798B4CF6D9F4DBF09A6CD6BF4E285FD940BE2B590FCCB7994A40715AEFB38BAD219F13CDF4C58CE25321FDBD1F2DA11568107D28C6CAF78D49EE765FF0EC481D8CC93EBE9DF6D9A7183D9C8C0ECAD412D5F23F7684D7C52420B90BF520FA01C082EA957E5A61C45A018CCBBDBFB071E36FCBAFC473474F45DDD25BB661661898A02D1D5A2DFAB57AFB85687A8F87E96FD85446EAEC63A8C1AAC55298DAD9087773F7DA31F1EFFCF7BD915993B337696F57591EF6FEFAAD766DE641D8316BB4D215F7F3BA8BBA4037834C6C3154C9C2961F89D7BDD16DC5CE31F55918907543F1A7AAEFE43FCD76C1E8D62ED46C6F9F631F1CC41C3E9537B7F0182C7D52E4FD2D9FC9AFDEB57F1BCE98E1E4D73C25A8285D1C816DF553F4B3E82CBA2826FFAC4C4EA70A66A823B4E62383E3D29CB7C9D34B2F77149FD6AD1BAF952EF08BB5EA551B2A53BE8D36CD36C2D65C87BD1AEE2F4E6119376BE4FABA4FE862441507E4843E263D66E687C70D2F8A0BA7595EB68C31A0569B3E149D4D7755D64233C2113904A4AF5DF98C210409173CDEAFD1DAB3C2BAB224275CFA239C9D6C92E4A3976A1E815F15FAB3A70A653DEC4A83FABD5E12AAE5268BF71902D78E04FD95E668F578F3154E981ED7D7E9B644B055B233C176C5DEA2182AD556D7160AB15592AD69AC30C3CA8B589878834F60C478840ABA3B97E5A17BFD2C306D69E3C7AF494A9DA91332E0AC1964C3814AC105AA994475DD9E21F2ED8453747B8040717EA22A310E0D25F64C5450B4682D728FED949F7E5135B3C3305032BFC2A332FA87A977F6D761E43D3B1631D8E147805625F9D20A9BE6E942ADF126E3816B1031BE616554E3183505EC182DD33CA850B4E835718F1FDC020C3B58B5FD05077CAFA83CDB852CB870D4643C006FF7E68B0E1D9C5336CC855792FB01996C690CF5957CCE3C6046E3A0A0A35FD57279819C465B0DB7DB5851FC83A76D0332AA3E67A6AB9BC7B1D40E0E9B57610FE46BD0A1D7A9B61FDDC275816E1689C82C59D73D1008B7FCFD29DD0B9665F40D0AA277B08E904A405183EDB1A3639424AAF87E2B82910A82C6594ED0B3C4EC7DC9A10F23FF4EE818424B98D79F7E11CD1143E9ABA9A0B074B3F9D65F78875CE3C54714453F8681AEA2E1C3C3DE35C57738453F870EAAB2E343431D7D41CC1B410305D9C048725FA9E8923969682A5553858FAB98EE34EB35BFE7CD1114CA182A9AFBA70D0C4DEC376C451F8380AA96F7BD15C418A3E5FEEE94BE98F500A1F4A58ED8583A95F7A47791997FB2D7FE9FE08AB506145566038C87A790CC21788A690E2EF5FE14BD68E300A1F465DCD0583A5A74F38D7661DC1143E98FAAA0B084DA21B898E900A1F52E7A8E2C281D353F1156A4740850F28AA06C33844C4D3614E5D1EE02122DDF558C7878846F1C240D5E7A8B88DABE301B54338A046D76510087B9FDF5EF335995BB10E408614E08AD3A459819A76E51B045BAD95EA64559F271CAC057392DF0F703C1FD056C64E6047FA1BE8F4D7EA1E81133070F0BB938380CD4203733F28F3179EAB022C9008FD8F38DD9C6451FABD4C4AEF9E091786010D997848BE89D06C19CEE95DF72E9D57C8F44230135BEDC74381C8A0D1C2A0B1A0D1BE0F24B91DE56B812880B1FD80A205853D3E50E436D0D142510011CE55B2398FD67749162FC91B8D52D347CA87CF07E091307596E69378A2CFA9C303F2499A35EBD2278DA28533EA8215985A871687F4BE87675A35ED635CD60B1814B696123D058230C7D3465330E63BAA6250769E6F929BE4387114FCC4D15851E180A77913E3F5F73F33410F184A641E02D6DCEF0ED0861956A55E71D63F3B75DD3DA723B8C5CBAE7FEA0561F032261C925F1AB4529AB1ECEB260CA8C0B21F91120052F057E4FC03E55D90B7BCF9C41063914070F3CEE35D6FB8B0FD1E35A98B9954890E0005ADE51369D6F6A8E9F90973F8D2D9A316947B6AF7A88511F5F8818DE71E4D7D875A48E14F0D9B4022A0236A444586E66BFADFC2BBFC0922E2C13222E107E9D7F8260B0F675EEFFCA7B1B6B0496DBF28733FA5AD8BB14066B49B49AB60B64212D230B0A1520FA9272455538AA0BC6F7963E1B398355DFF3873BDAAAB0F30EFCBBABD00ABD320FC132B0E88623CF9503C14A0DB325C1400A145F8A850B0E6D24B4D0459886E6A41A17A4048F3B0A3571F6BBE6376006D5EF7A184829FE5F48A81EC468123779E2E266BFC8788EB3541E135C21F650D0B914BE94383419EE329AF4988F3DD81B248F3BE8FD33F761633EB1564E7B9B4BD9CFEF1E67E37A73ED442D9CE0960EDB428F2E22ADF1782E56A8610AF6736F107029FD884C1411093D4E7895224DD66BFAE16F67AFD28382DC8F0F910DEB2C7F451292D9027ED71482DE169729F6072F650F90428F97DAFBC2DFE4B842C7F19EFF2A2C113A8C29CAAB4D523D2C2933D229B6A0B603A753EB72F64B452045A27A367A45D55F9FA5B8734892AE62ADA2AFC308D00A988543B5B9D2701C2080A71E5540A65440D088C8B737BBE71E7C3EDE9022E18B7771957FB226B36D88B153157CD56C137E803C884A5597478BA503082BF5135757787091A82BB5BE68122427E5E3B38A0E344A4524A600BE2341185B383F0751E61E7CFD3E9612F1847D7DFA8FB21AFE256AACFF1769746557D99DB98D47F142C3800C4E4D20344E004957C1DB912D2649696256406B6035881A22AA54362878C5FA4C14D92CAA1DBD3419818D28E80E5593478AC068151AF7BCA7141B8483A9C357F422BA56ED9FB0E72022A87E1C05C03CDB393D2724B9D8C61C06D29EB623EC1E5746D4C1B56FE57C77091EB012D5F85B915EA005CF4109649B33E2A708D32D5F16B186155F7FAF0F0FEA1D7D08A1286040E9378302116ADD942C22C1A3A0BDAFE1D02D2DC6EFE9E04B200F67E33285B4C841500C4DC465A53101660B42554C354051F6EE43505053EA22F4ACE60F0B7A45ED43BDA1CF7A113701642178A897D8E82C602F13CD96F92EA1AD126B759BC7953D4049E275309D1B858A2A80E660CC05551A570B21E03045A2813F6478C4DC6580803CE75956751F1BD8D18EB8F0B1A0D30B253F122907E08630256AD650C0B4EB75FE3E6C4CD65FCEF7D5CFA7561B430046B36F1501C16A3D932FC14039D05EDF20E01696EF7784F0259005BBC31B9D771B2ABAEC58A98AA63FBB86BB4E1C9D4255AC1DD242498435FAB9A4A99B4A0E16070999ECE1BE2BC793A75AC85E8E9AECEDE343FFDCC5984001CBFC198067AC69A0A073E5F508982A746BA64BC56FB4F3F8C63824C1410AC5AF17C5EE8F8368D6E7D5F6D5CCB402F00B4DF0EC5E7F40A2D63DCD7C3A2FE9FF0AE958100AFBCF1A3AB4B641DE307368B7FE0F47279C7CD8256FEDCA3C7F965C3CAF8096085AF4790EF6B858F3D5260171FF6C0B88CCB3CBD3F02230C608CB5E11D189FA3E236AE16710DA67B18B9BDF252074163B5F944D01F51B649E3E2BAFBD78F6BE90BA760317C3E200703DA99535A471B023C96F27C8B1724397EAE450742213CD38261684163235F48723B42D2C4520083A406CEB58AA13D5046C9043A4286E6807A3650C1C5CCFA81B05A4AAF1718FE7C3C5F36057821748E3CDC2DA8A70C0F7D1E9E349B88BF503B54DFB39081616A613D6A18B3965FA22289B2AAF66622374657AB3BC7D509480B307CB6E59E1CC1A7D743D11585009505ED3DF3851FB7FBCD346114C04E33124DA0F0249AA05AC43F1F3A9A74EAD7399A3A729F686A5E036A2EA5F53BC9D0CB410364FC7E40A1CFA0D46226100698041BEE780290BB80470B349E239E012ECD0FE156B39182794BCEED66334F00E258280C180DC279075310FD13088DC3EB9916D62D5DF3764184B945C439929C6F125107D1289A7F14851DD9B8048CE398663101CDE2A21997A0F112C72C2488F990679FE2A2CC91D85EE3184C0E822BF1FD50A2195CA9650434384CBC2E511D7122282E80E5271C285771719FACC5BD124E434C04E3DF9DF44CFE90C5B55318A8C2C40B0356CB59ABF28829A7AB55DA90F2BF5CD52CEF8F37B7E7D94D526C3D756A842C045F2AE5503A36522DA51068ACA04020D3FD38422654C86015140C6416331BE8175F6EE705A740CBFBE42089AC056D5CF58B2CB79B54F59115C0D6D446E83FE27413C4290F461A163264EA417578846ACB982A62E1B388D31C61E0CCE5098E6900F37E76838F2FE18E6D3BDBDC7F08304ED909EF159B94C061417551715A0818741DAF4D815D78319BD7559A30B0B398A02D80751B1640CDDAF4EBEF8BB8DE260CBC7998B5D0861A56AB7EB1D60812CE08931087450F957C50EE8AD46D41834C1242CB1965068035E7E34C7D908531D08431766023CD8000E96BAC391D9F410D3619B82E6AB419060E5D8F3727412F8801278936FF23CE00F0B39C202E94412709A2C58D3A03C09C8771A73EDC021D78367F9D16455E5CE5FB622D393E811332A72888C41F0A8062238607434C546F583CABD9A34AA8B5B9AEBB0AFE280227252A984C7002B9BEC85A62AE3C63A215B8116A3B801AA3964A9935A137705D259B274FEB87813EEEFCCEADE182D05BB1B1844309C508AD3466D26AF9BC82E5D9DBA428AB5AF2EB33D44323AEC97F3C42661487010D9E7448B0C1F4522A11AFA550A0B3A0F906DF28733BCF30016001CC31D452FFDCC47949761B845F1AA4610083A51C92571AD55A96531A61B3309FE40F61EE3D921EB8027148CF2F4EBC47D44806061ECDB743723DB5421A21B4678753C362112BD0EEF1E372AD590738DE179831DC2CA98B728E1EC7DD92067E42E8905E5CAC968620243283A0E6DB8120A8D6656108BADC67DEC219B770F014CEA862A2A908AF70F8E53C4AD26EE814E0B573B8880C6CC684255F3F4768A2E848C2804CF7EF79BEE1AFA4E23478FD11DF0F1E4A5C4B0502294CBE30A0E5B387F205124F7D951650FC77582FDF24E52EAAD67701F758838C0C84B094A5F759A32A4BE8B446D85CC6EB38F1F5C2BB5F7478F2307A4819EBC72B607E5DEDCB2ADFC64577239EF779605A20063D2CC1218188D14EA5DC30A68B1928F597C47CC881271088BDAF241DB901964A73D6BB850244A11503032225AB4F38AEEE925D5D61F5D59AF50601F18DAD180D55CDE37757C8EB25672419BEDBBA5D13B693358C0D0AA9148789E70F5655BEFE765545D5BEBCAE8559E5691AAFBDF596A3342454F0EF07D337624A29758964F5040399B3B2DC1FF112265EFABA09022CB5BF4B13E6FC0BD555B4147447D17D75D361794315C74261E069102E14302DE5F152AF7872F87CE90440F97EBF943E67B4CA37F1B20F9B411A09E55A010B390B3E7006AAA752AEA72367A7CD992594A74239E2A2EFBB91D4CD46F03751157D8D4A168375AEABB8EAE84FF61BE4996B90B529788435245DADEFE26DF4FBC3CDD71C2122FA9A121999208B2CA18E26C64B7F9952C864A8249242521A1316B26AD114A076E5EE435CB5C7F66445E2C7C75669946C8142011A71B10D915ED9EFF3DB249394DDD188CB6E88F4CA6E4F030A8B6E49C425D734F282F183E04C91782254189E2E2907DF3BC594832742E5E0E9F272E002B89C5558F6F101C4B84FE3B0EF932585106FF830C510A950410481AC287CF2892D0A4F058BC209148AEA060D60415D1AAF982E595EC8151A8EE710B2B0344E217DB286E76DE68B85CEB7A190F9DF8648A158F2363EB05C9284573049A580FA76AB3508FA368987F936555E6FE7D1FA0E75B870C50D899C9A1BD2156C580FC123D4C3F2AB8EA0E0599020D2285652A6BC407907D211725A35990C95465228E8465D96002A48D1F0B4A4C8149189DFFFC5C5284E24422B4E27299F1D5330A5B32450D92C95CCEC8D43BC8CAB7D9171904C538026A789948A6D069697F12E2F209F00D0F08B26C8940AFF12A1A191A47082865F3841267751C32368908B1A12392E6A48575292AB99481D9DDA1361662490D49B0A62F0F5BA36EBE778BB4BA30A6A2C226238EAE4D36BC8A52891BA2CDA522074DC2460ACCF5088CA1E8834948791C050C854D6C582A44C7981F2D2BABD328251324B0296CA5069E8798E605024515A0FECE18115975666018A5C6A0E14DD6651F1BD6D28F547D02200156C14805022C2E9F66BDC8C189A9D493BC81C2C0954384BA55EF2BFF7712929B9239194DC51494AFE12671B703CD22740A5F46912DE6FD3E89613E58D4910FF31553196E48E7A6902513CA938FE4571582D1F1CC9B5299CF0AD4D94B3FF23CA36296FFA6148E41432A42BC6A6CC05B5DC0095A11445A90CB15C9C619505926048E4143AA4CBE3247E397822274E522DA77F301EEEBE88548E4623814A94CF6967581A37AE576A69BD400265C49A484B205ECF650A2152A172080249510D3805FD2E950E154791A81428991D0168B8056BCD8F401706C2A52B0C82213A79F97981BEC0A576499CB2BA54490997F14D1197779FF36F3134154E2643259114D2D2B651F10D2CA74D804B68D31467D72533EBB25975B519F57A2A362E5083B9D8C77BDE642E4EC09BCFC569E4FE17BB210EF2C05832C70763140AA5E1973E81E5E104BC12711A8532B15B5DC022B1745E8918894281CD497DB0A82685574893A8C0BE39B70BB26F5278EC9B4405F6E3792BB08C319957D04821298D388DC81446A4426511040A8A61E73C40CDB0749E6A18894281EC8E6CB05C968C573C4BA922856C5409117125D01B4712DB84A182C754DE62CE40202BAA6AD693D120F32CFB0BB9867FE639E8634032B07090522A05B62D08281C4B85CBC40834E79357703382C954E6955750C3C276427057FCAFFB95738C185EF9EF29E9AD1A82FDA78319803466CB077CA92EB143A0E104A4D2DB7648C52718A55FD2971BA5A3746B1462EB0263942ED5B851BAD8486E9396D0AD49F0B88FB1489B38DB20F8CAEEF52ACF6E9262DB6CC8066CC2A5B56F16680751C344B83368A639BA1F4AE6C0690FD61CE3B619A93578CF1510E7DCE83D3C8D0AFCDD395E4C800633D7D87E18567192802F30B31FA79196BBD586CE4BE732A41AB10307560E27E18B08EC046A44156CF171A522BEF387A322FFB017EF581CAE227F6B910315871D47D7FD9E2056478646A824B92DA95711DE71C4188858121ECC03AFF94EAFCF8E1FBF36C19310D3457507557E259204766AD09A6ADD46C8E6FA0E58379C629680343DB581B3CFC6DB9A39573D614FC1D259EB305CAA8D24BA8DB19938A1EE14F10119E0A7B3EC1E398FBC00E34511F90119E1D93857A9608391FAE04C504FA72A5B80BD90F4000CB0D231007377E2920DF073EDDD4EB35B5E47CEA33E20133C57C43F7017EF92D57ED12C0EA1CF97FB4C497F22C30119E2971ED49771B9DFF2865EE23C07648E978ADEF0E56139C25F87C53805DD7FE55C4AB860033C7D322ED9C92D80511F9209A8453B153B90590EC8184F99355405733099966B10629E18E72C9952C6480D2AE07F56FD7354DCC695C6DC3A9361E933ECD4E1C26B92BDD81A0CBD6175B81CB0AD9C0C13689FA601B3A82FCED1E46E17A43C9866B8A453C530F08D9E07681675EF4A51BB70B06ECC81EF8D95C38443ED0627D08EE0C132C23DBE93A2926663BED82400957D53F48532E10B78387B86EAE22E1722B3D5D13A5359EC1020325B9EC0B6CAE3397B493DC384B66A9ABD3BA05F9BE3DD0A30A3B671AE82DAC6C80C0AEEB4B619DF3DF25670F403B12105BC7A76483B4910C023B719057835C979BE496E12E54000233FBC4880D1B6D985FBFAFB9F9962EBC1E96D8E445D1BA53F087ADD5D9B0BEFC9E050BAC1097D4DCB600EEEF52B334D31F2955862203C5043BC8377B130344217AAB58FC5879AFDE48A6AB533F486D5E17280C692A23B8F0C9845D52990C46E9B837BB3E820C5938FF06714DE0654213D5F29E8EAAC4623D195580199451E9872A86DC6A56ECD411C9D964F4FF1C8DD3420F0D0F8601CF1297013E6918DE938D4B606756ECDD18B355EA2A1367507D2BB9BC463AF12218C2CB812C4888944901191DBC04C38265198028433D89E0CF46C1AF1B48038C3613629BE5BC58BD171C7583E8BAA86D87749621D2EBDCD68C7B759E413715CFA1F23E651988CE367B0391B178461883B6895AD237853025392775B6EA3A3EC065CCFE61A6F70959D7DE4500AD781661D81646FA6EDB3F3EE9C9DAD3EF7A8204827567DEA8941176A33D7045FE3EC81E621A237A80AD91878D722B78D417AD3F154B36057375F03A5F0AC23CE664D4D8017708D35C64B7433B50993A92089436F1749EECD32DC3F7E0D94C1B38D28933515015ECC1DEC1827FEC5EAB310A4B4882020B7BA8600DE314E5BD78E49D4C123C8E3123B6ECCC4BF259D783F7BBCB49CB59A2E0B519CCCBF77BD8B98E5F7A87339C237CC337C2577C55B31F17037FB24EBF6B9E566A0AE922774E7DC0F1FB439C593B21C4AFB4359E82E7BC630A64DA18925CFE8716616E1908443696750E243FDBA1B23D98B8DC0D01B5687CB81EEE864CF474C300BF55283C477F0A91DF80FCEEB14AD65642F4E18308D78FE54446E6BFAD4BB49C47E844F6DC997B83607ED23982214FC0A9DC7927A3E7D0CA5B2A41DF1A9AD35236FE6200E185F23F2E4368B376F8A9A40661C615EB7E11C78B932633EF1ADC9260DA91C00F3B2FD10E663DF2392F97351065B2E9DFB0653E7F6E48F2AE99B867EB3480C2801B57D1CF1DE696A1849DF5E32601AF1ACAC88DCD6A4AC4793346F6B5DB365080DC3C96449411E27E27D319A13FC6698015329A3872177801E4F26397BD3FCE48400427AA7FEC68F79FA97DE142CD391F295219F9A6B54801F92F36A8277ED3B6DD2BD9614917D2CBC23DF9DEB436EF051B9E96A8F4FEFF1B51E68F8C2D24FFF35D2F29EF5F3A0A6744F244D656B34E4465DE93E479AEA50E07C1997797A2F531CA33A14C5DB2B8378BBC8002AD1E069E64D0776D5ED1EBCBC1E1EBE04D5A5A99CD433F59067AF3BEF89CE59EA4B36BE336442C1A76F7877ACB2D889038416FDB80BD5A1B755D58E85F03339690AA2B7660980C91E8E35673695A322DC3C969A4F986652383E22C865B1C905682EB52325825C3F4073EC1E5116BC0C81530815D13A51FF8E7964BACFC67BD679967AE2E91698D0D6448B7BD507BE32D57B42A1EA90F0FCE7B87DA8DEBFD72DED8E0142276D9E7E8FBCB702F7A1F17966E0376E82C468EB76AC22F67CBA58D191902F3EF38CFBD570EE4465D2C4A1EA6A08F7026F507B93AA4BAF1064C82C0EACDDA82C69C8965AB175B5941AAFB3966B4BDD0F79F6292ECA1CB114375B98D07ECBC5CA257810DF8D9A411CA173280FD11092872079A482386DE683901E4C200CD13994B6627437EA37233AD5F77FF9C4F61B045136C1854A316C12C91BC07CE243368928EAE1D2DA0A7D7C99413C15C6A5B53501E6D80CEA17AB8BC81D3512EEDDA140AA05F388E69605D4366695433207339BA8631D3AB39309CE104D29F341AE6F770EC12CE2A05E48FF637824C9BD32E20C563B72F786D1B8845148EF0839FCAB64A0641B269276670E6F620CCC24AA5D9A5A6E4F7D5A10E694756BCEEF4B0BC4340A5D9BC73BD30231924AF7E6FEDEB4908C23B93A4D259B640ADCC8DD693E4C76B6899B126A09AE6BC4836E1CA0E2AB8113130A90090243F48475495C2E63E26C235C259B274FEBBDF41F779298884369DFD7E005D313AC588211533C6BDEE8AE795E9F2117914469F21F9141B8F46ECC3216CF18064F326D1A71B7CD27B6D565BB36C5CF8D3F4AB25B3590F0C8DD6064289DB10B9662D82C728080B436F1E1CE0CCF2F4EE49E94247283045426A37CF3CD98DAA2112343636398E84C4D09BC292A9BC0B6ABEE8B8B9582BA14954D7551518CBACD3763EA5EEE337EBB1D09DCB459BBEAFE721E2569E784791A1334C29AD5DAF183B366341C13CCAAD9FD8B86CABC5B92615ABE1A04474C0BE27B686610229CA2720373572678D9DFE123423C496416F2036F46532CC5B0AADDD175413402D2BAA9797706F975B52FAB7C1B17DDC624799026C8E1C638B4008C8D58023BA662AE685234189D4F34E536F982A850CCB6BA4B76F56E3785CBF84152A152736FE3EF4B64F20FDFE79BA0BE1DF8AA8AAA7DD95CEDDC3D87C86D61027207CD6B2C9D3409FEDDB849EADBAA55ED31D01EA231C40F36808462784F7EB1C187EA8253521C4AA1F2338E49B9519F5E0B58A1B058697D422DA38B150A481221B71510FA0B4CF7EA71CB6B95675594647131A4BD7A7CB5BE8BB751F701FD59E545741BD7638BB46CBEBE7A8C82F52AD9C6ED5F6FE2E6A2C29EC52BC433439E15953932ED69CEB29BFC5391EFE2A2D10397A827E993BBCA3C8FAB681355D149512537D1BA42C9EBB82C9B20FD4B94EEE3EE869EB3ECE3BEDAED2BA472BCFD9A123B125F3D1697FFEA3123F3AB8FBBFAAFD2840A48CC04A9107FCC5EEF937433C8FD364A4BAAD2782CEAEAFD678CBEB77559A17FE3DBEF03A70F79A6C8A833DF9B781767F5FA4E7F6379F931BB8AEEE329B2217FFF3EBE8DD6F5E5D8F7C9A676FE3C26F28A20CDFEEA4D12DD16D1B6EC788CF9D19F08C39BEDDFFFE3FF07D4132B74D5100800, N'6.1.0-30225')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201801301546236_AddClientDicionaryx01', N'AuthorizationServer.Api.Migrations.Configuration', 0x1F8B0800000000000400EDBDDB72DCC6D22E783F11F30E0A5DCDEC585B07CB926587BC77502D6A995AA22492B266EE18503748E2171AE805A0696B4DCC93CDC53CD2BCC2140AA73A9F5027B43A1C613551595999595F65659DFFBFFFE7FF7DF53FFFDEE60FEED3AACECAE2F7874F1F3D79F8202DD6E5262B6E7F7FB86F6EFEFBCB87FFF37FFCAFFFCBABD3CDF6EF075F06BA672D1DC859D4BF3FBC6B9ADD6F8F1FD7EBBB749BD48FB6D9BA2AEBF2A679B42EB78F934DF9F8A7274F7E7DFCF4E9E314B07808783D78F0EA725F34D936857F803F5765B14E77CD3EC9CFCB4D9AD7FD77907205B93EF8906CD37A97ACD3DF1F9EEC9BBBB2CAFE93344092ABB402B23F3AD9658FCE8A9B2AA99B6ABF6EF655FAF0C1499E2540BAAB34BF79F820298AB281397EFBB34EAF9AAA2C6EAF76E043927FFEBE4B01DD4D92D769AFD36F13B9AA7A4F7E6AD57B3C651C58ADF775536E35193E7DD6DBEB3199DDC8EA0F477B028B9E02CB37DF5BADA1555B836E3250E54079B2B0DF5679D512022B9EBD79B42AB7DBB278046B88B0F6A381C73F1E9094FF184103B0D5FEF78F07AB7DDE66FABD48F74D95008A4FFBAF79B6FE57FAFD73F92D2D7E2FF6798E8A0C840669D807F0E95355EED2AAF97E99DEF48AAC72204373B679F8E0319EFB31997DCC4CE5ECD56D2A80FF870FCE93BFDFA7C56D730710FFD3C3076FB3BFD3CDF0A107CC9F45065A0BC8036C01FEFC00644FBEE6E998FE5858F0EBA44E5FFC7C95AEABB41114FEF2898BC2DBFF0B0A7DFAC442A9AF1E4F7813A27095549B37699E81E6FC5D0B8940A90D4021207A84F2088A44130C4EE83B2B9A166D945D11735C356595FE332DD22A69D2CDA7A469D2AA6879A4D0AEB29A7F577EFD5C25EB6F69252F55CCE94DBA4BAA668BB51E334E9F93EA366D2CF203B6CA2FF6496F90D9ACFE48731B12FD1FC06BA6736D0E219E6E5E7F17BAACA73FBD546AC08AA57D2C86B2DE00D07DCEB6FA1E07F4F33759B5F524F9589A05C9CF6AE04A76790A5ADBC0EB7559E6695268B3BA041D76F54DA03DF869A2FD87E43EBB85EE816FF5870F2ED31CD2D477D9AE8B8E30B7798D11BFADCAED659913EE19A5B9BE2AF7551B3B7C2E25845DFB56971A41B95C6A8C9823354223961A25D4977AF05F2A424FB45C99071299C8239DAEC4535F209718A5E5483C91882546E87425267B0AB9DC740E8EF424A158078A9AA589720474B2DB81D803EA01C628D5AC701C67B5E0586846E7A0E996DF6655DDF80889E9A2DF27A14A3ECF369B3C95946DD81F91A38D6CFDADF051D0D5FEE626FBDB7931EFD3FB341F6381EF8DBEF1DF9559D10624B38393CF5993BBB7EBE936C9F2ABECB648BA0916C7C57DBA2B9BD27D29557993E5E9A76CED47A9AEB8B3FA4B56675F3D545AEBFEDF27C5ED3EB94DBFA5DFDD83A468717B5E7E055A825EC853791F6F6EF2AC48BB6ED3B57B019DF1BE765ECC590DC20C1BC38DB31AC43AFF498BB97C60F317A8FDD3F317B69CCC386C982BF3A7A4AEFF2AABCD1F497DE71E18E97A5F81900E0064EB1EF8C03D16E987FDF6AB07C8236559AB9ACF7F956F937553565D0B9ECDEF7DB9FE56EE9BD362D376A37F366BBA57556460459C93F53AADEBB700CCE96655EE8B7176D76CCAA7F56C92284DB5FDC94AE64F23E449B6AD99832D62BC713D904EA32C360535BCE290E98E10DF97B759A126EA40CA17B5A3908ADA93E98ADA325393B4A7E40B0A09A4727654B346AAC33473CB0FD69068AC7A3EAE4C9DD4BB0F69F368C8FDA8E3FBB6023C8193FEF68862FB8F07CA99A701ED4FAA03DA674FBFDE3C7BF9FC45B279F6E2E7F4D9F3439CE86F4D1962300DABAF2DD479DF044BFA92E47BDB4519B506E804ECB706C836FED600C5049FEFB34D1B953C96E71888FF95525066D20F78D66D738464BE9B03A6A6EFC2FDF800A3E6D2F645F65B4BCB35FEC6C2863293B455C804F5A1BCFF206F248843E7FD35E6D4DF97E5B7FDAE7E34655FF03CBAFB50C3C124B2720DA3EB52665B47260EC74A166F1C99BB2FA35D41FBB8ABE7B2392BEE81C865F57D2EA34F00AA0D40AB153E172776D8AC6C58F9B4B89DBDBF67BE42705D0DE0E6725FD852EA32ADF7DB74B66AB38D7C9E64B905E4BCC9EA5DD2ACEF668B73B2DFCC3631F49E69D56EACCDD6B36D0CEABD9B2F9FBD9BEBE4F3D8B90093E7263B783E816E3C4BA6353BF309F53CB99DCFC5DA86A25595B6CEDCC22E27D0DD653799192BD10613E6FC16B20304924C135B780A35A345241B6C7819D670A4520D843CD9BA7489843D91AE9C20DB6DFAE469DF5FCA8425A99912E34422B1094A33D97F1A3B6935E9517A81FC13995C0384D64C8767437CA0A602422ED060A4922B3091CE91FFE24447FC965A2AFDC589AAF0807296EC2B2DD9572AB2AF94655F19CAFEF310ACA8098F900BA41FA9E4E24FA466F23F5785CC73095A9EAB00E5B931465E20F1A59AC0780E81E428A15C058CDA4C975FF000574D1D2A9340238256AE1499C14CAF97AA4DF8A5A4F5BE5469B82F8DDBECAF7D40AF26EC442D907820928B3D521AC9FEF4C9308A50121E25E74B3F5149C547480DE53F07916605C2F3F628197B4B2F5D269147A40946AAA00E4E6FA6D3536234A5A6159D4BA017492CD78CCA316B291846EEC6536EC7B936F1D8D9CBC6DCBE1CE184BDA51D52D9E62A6DF7FCCC9D0D008CC8239B668C5C9DC5A1B686C1A6D696624375D027DB60656D72E6AC06AC2CCDAED839B1775556ED98E96D366DB13DDCD915F16C06771A433C7F3167E262423B57288C06170B49620A86A66B8B36B51EBE68280D21DA94C4160D4937110DFA34A1603D052D164CE00AD5A51A88D4F96B91480305255297C013A94F9D1B7C0CC83658D71D731FA39048977531276150C348FE631DC75AC7A8B735A9E329FFB18E23AEE3BEE332AC6198FB58BFC221868D81959701E7D51D88CE5780DCE31D08823806899EA850864CA3A2198A605640838453660DA5CB7D6C28913A42F4F680F7E5AD8D7B8E009B63758B27392C5D75845A7DF6BC5352DCA6AD9BB1C0E6733977F6C6DAA13E6B8756FB49173FD704599BE059EEF5466FD27A5D65BBEE8641C7DDFFEBF2EF0B6A7E4FF91022764D9CE4DE17E01BAFF10CEC6B5F483AE1AD2F14B1EEAC8ACE754CB030F98D4C04995CFE19F7328D4D534DF8895A20FA4024177CA47478CD515B90FCA6239C4A2AB9E4BE23AD10A2BD8AEEA448F2EF75A637F545C410289F6310E1258868271D7779367BE16AE0B33A1D2A70F676E87EE165FE3D87F08AC3D3AA2AABAE51CC950CF27BFD1D7432B3CD06621D80FB5599E760A0F4A38629C33A9417B19D2C7AC9FB20D4B5F13B213615D39773484D361FB7ED564DF0895A20F74024177BA474D0799205717A4F0E9992ECA6F7054E7857931EA517483F91C9A5476875A547BC9F9AF8580681FC089D5C019478F69A5D0769E35D4330FF315EF112AFD8BB8FF92ADB9C27EBBBAC981D0FC43579727162ED200F884E4E2D32BB585964766E4FCD85444D86D1C7D8C932A30E3A95B5418224B17C0BF15802FB465C46325F4877370F8F45B0A30946325FCA19D1C3E4B7C452A2740C29A764BE9408CDDC65A45114B375A43EFBB193F5D235BA597535F50E080AD9FE8149C05A196550CD9EFB3AABEB7D52AC53DDE5B3F11CE02382CB11E39235AFC15616A6AC2C05A583443636415B7C2664E0D28A975A9A8D6B37A867851D7379599382336BE846146765756636BB405BB8BE34D88B3BDC46BCC7359E011F6EF3E898C36D2EB1FEFA525F076AF24FD402E10722B9E423A5AED85A5657B1B8B2B58D2D8DFA212DB1C9BDE5223A65F18D769D2BCCECA165F127F6D85452E16D2E8B4DA0981D171C830271471E51AF8BB1B2D1F5620C6DF4BFB6DEFDB2F40CD9018703AD5A8647DA2C74A7F2BE54B123F5D18B4ABB50B5FED3BCF3E45D0B8471272E0622D3C4A2F12E0752BFAA14EBAE0D66525006C72E25E24DB9D03BDBD85283313A56F9714F0DB4C5EBE4B8A5E6B016877EC02D35986BE3EFA9E19031BB6A1EADF55D357841BC6D356C2A05C9E76CAC215C8EA60A68461565267A0DB5904C0EE617A83239330C3C3A35451C6E1EC2CBE2EF1EE2D12928E078FF105E9860031197504107D91622A91248FFA7A309964DAA0E42ADAA139AC5CADE28B451CFDB2535713AC6A28B8A4587C8F19F6519CDBE6E6BD1EC78FCC4C664D6EAF40C78942CC9B3FFD8D93465915DABDF650A9A54317752123A1A3BAC8E11B6D3089B421470097F24C526077DDFEA743E401176ED6D999AEC666E6A432241E1F636161D77DF1393D8EA108051126B0C20205311DED5F67A7651822D714C42450D1CC5C98CC2D881B29050450749A8AC1C8CD1B1A3C10430C9E41885C53A090C2FF1E83AD8195BCB702EC7DA168506D05680C9FADB65BA2B2B0B1391DD620B7DB85C93D1C75D5A00F041D166865A79591B72123CC34BD88D3D16C69178CDC8850C8565C4F448589A63DE6E0E5ADA19ED11E1736C9182B2AEB24D3F8530FBAA1468F72F0930A49DB6DD5EE4EA66973439C6B5B987C40E2F1843CC766A5D5B3D0CDFE8E38C0F8960819745DD1E231FE96785E41C4F2BCE6370A4A56FE88A5AA11944EA4C740A7A20C4163A0BCCE4333A0B84CFB1B3F0D259C4E8529C2CB12A353BCC17089A1D9B8ED3EC38C4730F998DC2991D32EBB31F9B99B899D979E9C0E2BB015E02B12097844A6E8747DB19FB92783605EB6C1C8BCCEE95F14421D4CDF1AC7499A4FC7BE435BB6BCD3EFAA602417005A4003EE0D1E26F03F6F712FB55BAAEDA9A9ADD84ECBA88A74F9EB828F564B703950BD1D435CC5E80B6351069B53EF37593DD8F3C4DD76F0084AAB4BE83E87B9FDDF421C51C6F7C92E7E55F2052A9B2DB4C7479A3AACD65936C5D0BD2B383C9C4CFDC59D881C982FDC40227616D1E18FE512674A5474E313CF34F9CF2C944A3F1F9E74D3526A4A712E5F3D17C5AA93A7667A3876B3C3F944DDAB1FE9C6E77393C786C30F2E1B33BBA2A4159A8D9E6DF6A35F11A8C6FEFC4188B3BB34DF09170CDE6313511CDAC548BD1CDAF7F0351C7047CBE818FB099A93F66D7D2BCCF65A2F490D59AC3B0E62A8E4E22F22D041466675478CFE358D73EA6C6BCCC679D6C3660E057BB9F376B900B519C95B22AF745537DF7504ED124EBE613C0BCF597098CDCB9F9A894E0726CDAA2F8AC7F4BDCD6732B3663477B6705A63B26D629106F26B74F557A9F95FB7A7AECC2866C3DB7B9C27DDC6EB3A699AD625A6C60CB9F37AB60E9A562F832FCF0FEE83C56C493EC864C950624D248BC1D40E319D8B13749278CB62962EDF104E111D4D4A03209542168E5EA90192CEFFA26CB636FF9E6534915B075F5120E96D97DE3B163F411F312038DB9ECFE48EA69A03BCF17FA7C8ACAE75128D0D68A3A81C733CDEE2C5C6CF7233E5A84750BCC43456C0AA17F9B7577B6DECC95EA5C95D6EC94D27C94F9D600BCDF666D0E60538865B6B44180EEB5CDFA1482CDB15FF1D1AFD8BCE4B705D5A8D2EC85F7881E8D58C8095C53874E06C66CA7CEA5A29D0C9FD476CC4D96C409BAF96472E1E73D452072EAD40886E9D8B95472D16D3978A4D33807155981C1388C662C8C1E307E4797EF694EECA4AEB3DB22DDBCA95A96FEBCDA623D286E30698C86A1FA9ACCCC8EDA447984719C30A3DDD762F9C54A07021C720DCDC4BD8846B80AC77449F57DDA106CB2F247B1397A2F1F01ABC57DF1FDB6A30837AED3E0E26D60175332420421B9ED0087591823C4E1D3A96A60651C3B7286DCBA65E679AE616474740E3E9C43D816ADD412464448DB028352D41A58E4B3DAC3E9F66B0A5D035CEFDC9946FB249B634B10B7844F764E692266FFF73EADE3BB22E04B5A6CCAD9B34E004BFD72BC8F61CCD5BE3D9592565E7620BD2F9B0F7B508B95FB4B14EC3CEC0186581F6F46673173B9A47DC8A3FAE6D183930D86E9C84967764DE79A7CB9949872E7F21C96AF0EA00A641F611690C975901C60164A3FB56E45F1D10C22F9273A050510625D0D3A2FA726FC402B90BB23918BDCD3D9EAFF7B68CFEDFF219B63FFEFA5FFFF586D403F85F51F3D2389176F6FC279DD4E23CF3EC6055959DA90E67402D170368C72CECC49303E95A81993A4EEFC7EDF13C9FC3E492617DED6C515835B34188977598F1E475056C813186FF3E4D6780276C87CACDD486B177FE06DD67B5C1D8B634D475AD3EFCAAF6D6B9CF1F8419BFD58BD5EF6E90C7E73F693A0B04FB7F12295CF1DA46080040006C282C453717599DFFB5DF8F67AE37EEC2BFA1CB1AD3C143054AEAF9DB7BD9FE4DEE48F27B2EE5E272874071553BC26906E22A2851BD2B8B28D04F6AFE487FCB9F7F013A95C019DDEB80F4BE05EB34FA472459CF1F6D4E4AE8422A264B488532A5744844457C4A9DB118A8892D1224EA95C111192B96F4475CF7FE88D60F1F0A8E7708C90BC4448B6DE84EA6BCD4307E96AB124CA7E98EB1AC676C6F60B7DF2F54886F9052295E5174812DB4FDE0C7C394FDD90C922111D3E6D8314C1EE4A690289A4564E350E1A7F02D8B7F8201FC1EEE88117E5818FAFF2A98E658EAFF2C5B420E5BCDF8DFE55BE99EFDE116E5BFCF81D9798FB7C193F879367F0C8E2446FE1F168957571FD2A1EA33CC1D3787C6A1D851C3F924796287E298F4FADAC92AD37F300FF2F4995259AF77BE37152CFE1181A89031A0B071F2C6D0D019CFA3AB37787265090D744FAB2AE2109D61C901416F4D164CBFB1F10EEEC9D0F4C0291907376B98DF5A120EB48C99375FC299475F839F7491113F7813C2972F41D415676193EC1D199099DAE0846E7E617F6211C8E7872DB17413BDB58447E93EE92AAD95A38FAD3BDBA6765237B8C7B0D11707307333401AB1360501944FA5221E9DE1E4D120A66D2DF8F88940A8650B2C51B0984424E54F35FAD36DE0337E63E3ABC78B746C14A9AD9A71DEBF787EBD0E0EE798BBD5A7F19EB0FD24F8A3B49851E72D68D740306C422A2740C19A764BE90088DED4E9CD7830BBB6F877DB7B8E356E8B56D75D91F8002EDFDE6D03E66B366088BA367F733E7D55D9569C3C5DB719EA0EABD0CEC7D6EAE3DAB3F774E73FE02E29B344F2D303A6E898D71950E717FEC7E9A494039763695E5351EB410F6BA0E9B4228ED8C2D9A882393CA8BD1B20546488412A37496E7E2B1629893F16C0AB1BC960E1FC29537A39B6D91EE1E6372ECF0BD6C21B237108BE926DAB3F1B99071F78F95BEB667B9DD59E975C733DF5EBAC2B1340B9DE168553F9DF8509ADDBE77D281E96F316F748D514F2E974B44795D3EA5E14DEE8A8263D43CC1112289E028A5E5013F59106BD4CFA3914A3D67FC2FDAAE8397C3DEA4C3A391086D6BCB2FE4DA6E0E9CBBD9976274ECA317B5CD97B34DCAD6407FFEFE5A38F3745A5565D5B50C2BD3D5AFBFDB387C7B56B77776ACCA3C4FD70B1B701FB7C5AA0EB82907C71E760BC8D82E9D436B75132C5D106BFB2B9F4A41F2395B5ED9874EB4F4A072ABA8456E0955D792CCE92270200BE6050F1C3A356D1CEDEAA5CB62CFFB88E8141498310784B87F450DB01C22151042051D50EAF9A11CE4662596C3381D83B9633067F1D8D531963BC672C16339CCC10982390E1DDBB5F388ED87737849DC788E4DA622BCBF888E5DAE2CA453CAA5A3A88FA08E2A9917D5F10815157219D7E18509023B1EA18A0EAE433BBC34516CC7A554514316DD49F5407A492D65B07C728D107265B5D03C7323D7B2828196C1FEDD21F331448D74FB2EB05295D677D0C09A5B786F2A80B30A8C4A409D3D42F92CB8B267C451BAFBB5F65FFF2B5D3782829F3F71512EF90E8DB782DBAB4ED3CD9FCD7A76007CFAF72E0360B3C10AFCD9C0A1C4E70CF4C8A2DA506D854201349A6577DF9181CBEDB22EB80D1EB6C31D646C7B6F51FD9E67EBAAACCB9BE6D149BDFB90368F868C8F3A966F2BC0EEAFB2FAF608E5F88F07CAF9263CFCA48A87674FBFDE3C7BF9FC45B279F6E2E7F4D9F343F6CF128CFCF4FC859552B9F1E59F35A81D665089D6F7754F36C590742A15323248E69D924EABFBB402E39A8B7DBA17825A34AF897339FAAF08B65647BBDD39E4AE609DCB039E3C6DE72B3FEE8C27FB511EC726216E12B31F80EBB0D53AC445CD07B799CEECB0F9B83778D7CC709A1785367B82974D4175671CB2B9177F3C79F636ABEAA6653CA7F54E5C8EEDD7CB321D722F9F971512A43CAB8B24981EDC1634C1EB9AC880B7231E1DB33571892D4FBA1365B127DCB94432D16DEDC26CD9FE0CA7592180CC5DC1C8E4E8090ED2138CC70B02F881115B6237C0216336251EAD03273015C5F7012C1A89DC363DC0F38B93396D1F643FB6FA456DD3394F6E6BE02976E9ECC16F016DD0BA9C798C4EB75FCBBAB6C0E85306176DE6B279BBCF6FB23CEF4E7ACC1CD7F7EFC4CFE402BAFDEE2CA815FB7CC9D2BFE6B21AAF0F9CAFD9D9067FEDD494D7EBAC98CB626C1BB0CDCE56EEFE7E768D25C5D52E595B681B0BD9133663D00DBA22FE781B4B6476AF3885D5AD53037BD67E29328D2BDB9C9D51B238A5E7CF8950F0549180D6A2921717AB395109C87E8C4ABC4425574D5235F3CF589F169B4F6536F5278627B5F78517FF06CA693D9A45EFA6D04601A6056D144F65B6518244FB89B1D6B842E97A0A5A3098C095A94B9DED327E394FB27CE64CC6C0E3E83CDC2E49F4666E2D7B7440B138206EDB1E5A0579B11C99C66CE11881F6C6E0092772E930628E94088D585A94D0AEA71C8B60BA4B3C552CA305C789D9CC60531692FFE83323DD99D562E6E59BACDE25CDFA6E4EEF38323956B5DBEEF1325DA799AFC7A787C2ACBCACFCA16C26D3694F5918F54E232A59DD1396C8F4A63885FEBBBB434D29C88712F3C49C6824D22284B343E75F57D027A4557F59DC1C2741F23AFA0A4159C3CD3A6DB3795FDE5ADAE973C0737C24BAF8137E7C4A66C312901BDE863554AABA2E5446894604BD9A5E64A6F9CEE31CD8A9CA92FC64BFC98C9F23A3391D1D87517DAC00C8BAB522B3879D86FC47F38B261D809DFA35B9B93EDBCD8667D195AED36A22DB310D08B8C668315FC42261B91F26DD3C8FD35560527D3F2BFE021CBB07828D9EE860B13AA25E50566BA0DACB067D3B37B5C39DBF373050DE19ECFF65698F4E343AD3FE04D44BD15698F3925E57E5FEF6AE79FDDD7949E8D827D0344853AEBFB56D7EAF776A0175182387A39F90F48EC4695CC3B97DF3F74E59FB4CEA1AB895F9F7FEC0F77D801B49064CCF63F7719716A0214070CD0C25D2BF2C7081EA75879A6DD869B89DD702AF69B870B52BB3DC024778A3C4553A77D9674097AFA1377A57D47207FBB816EC6874F2B8D7143D1291F2C9E8A85440AB3BD247EB5D49FE89982FFC4023957C243478D661D897289119A1640B3C1208A59DA82CBFB04C14C27862994D2193D6CA23CBE475352BD3453616A363002228CBF64D7F9EC7E84A5730B14021BC84492903D530D472E9B593FD16692527BB1D8024D4AEFD0A62F3B3FA6D9EDCD6A315CD2FEF2179DB6B34A06A3769957F075040818557F079DA6E6B1E96B092FBE40A3EE8F5F0C19724DF834F4F284860393E00C1EF53F82E03C47D928F399FD2A6EE8C8A7E3CA9EB729D41ED695BB7A781AF5779926D6B42EAD362F3A0AB7B36F90491AE0E5A301294A075002366ED370080565CD2A77C2CBA83F30F4E603CD776A5F53AD9D08D0468B6D1946F002322DFE0385A3248454AF8DFA88281B703612B343BA80280A9242B1ADA3566C53ADB25B992C588DC8AAEB535C2580E99F22605A38756392593A808301C13A78518CB226A4866A9578F1124EA01F47D799B15EA00EDC8E305682F9F04A090CA1340718B0500286E92C501B4554A1D9F903A5E7876E249D0D9DDEFE4059C98B9026013B347F4D06C8784CCC7A178D5CFCBC002284A2BAF7D85321828933482278F1E3DB5833399501EA026B3BD8A08C49367E141873EECA50408E6235F9641C77A1E2C38E81842F9061DC3F62A22102F04C600BAF15536453CD02FB459871CF5B61B5204FA8C9CC36EDE06484935FC6394AC2B3588A20F88064168BB95B43DAFD9AD36F2408351B1D00837B4AA8310E7C780DE245274C863CAEE016FCC3A502977CC141464E843D12258305F8B9E0534D6BBD20847EC05EB18C1C690DF13DC1875A15232922D2CE4905D614280B0B686CD831C6313190A3974BB5A9490A3E5F70539BA2E9420876F730C02396485315D3765C5C51C49C8021DB29EA90E3D8A311B7BBD78D1218F27BE07E8F1AA44CDDDB539827BBA0E2D32AF442C81CFF672F862B90A80C3E38C29BB47FF86D581AA771BB7A9850499C4B16154F640B64867C694DD1FC80CDCD8902924C8862B3F5AA0085081907160365E3EA28536942F7B541A25D01862FB411AA31E1447A491804C3EEF4111BB02DC522743B82A7887E042A746C69B909AE4369DDE2B50400D9EC309308922168B4EB61E7E21CAAE2E1519FA2CF1A0F4A7F1AC893A4EA73C0E918A14B270ACD29A84402B5D694A520C99E241ECB3F1FE78652C8D591CE2752A63E170A514098156AAC6548418F2C486D58B135DA85E9C38472A28E220803AE9110EA7537529C3F4E2243A94AEB451BA728FD2D581A07415014A57FA285DC583D29FDBD8F9B4B815CE5A72B238C4E954C6C2814A291202A9548DA90EAADA3CF160F5B94E97FFDC696FFF7CF91DFDF3B07DFC73BDEE3DA69EFD057CC20B7CBEDC17EA80447339442656CCC221CAD22504565955A72207922D1EF4FE3238F6CBB4DE6F855B7F84191D62982C69E130E6A81302C99C3AD48907BA9CF1E0F9A5CE10EBA5D3D1D5CBE50FAC5E861D53BDD41B4EC53492FA7578B642192E430E87881C8B58382C493D426093AC2E1519FA2CD1A0F4E993F1FE78550C4D59DCE1142963D940A515098054BAC6548418F2448455FC4262753061F95CA2162F68E9D0656A1304BFCC0A54F2B720473C007E4A5EC7AF8C2C32A7431053452D1CC63C7D420099578D4AE32D3C6B1C877411CCF100C6A17776481729828D5C4E23090F5D891A1E002BA92B1509A65C7120B4339EEE6172329733B452052DF960394F19DFC8E5D59E8A1C64DE2850DCBEE781C14D055B64261986E1CB246630A68A62A058D45CE2C2314F1BCF30E6D59FEAE4EC902F1E046BDE5D44E4718DDF082F31E2C81502888771951154657C594A191AF40B536E20483D4D15050049A942C08FAC0125F0A1AFA645013DCDE1129EC531F80E63DCC4D6240062173D7AFA23CD372745927FAFB35AD15FB2B3F0308B52EB8296535268972916CB1302C5B5B00CA7D94E2E823A6A148047937226462195E6B428C93924C0F8E2F899C6E45879618052980562D05A87D472677B042AF8C4E192AF0FEC3450080419B4D691B8DC984FA0824F242E36CABBCA36E7C9FA2E2B5215AFC8A4E6DCC3D5136A5EC4C560BF30DF2854C203268575B434FF88E048EAC410C56DFB478435FB3A250ED8C3A351A0824FFF48D78D4AE953AE7846C1238E9487A693111C8F81C782383B3558F00F8F50A91A2186CC649D29F6E6304F5458559966E4E4F181D785469D0AAA0442ED32A3504A93F37293DD647A938D531EE7C8458A8A6ABA91962B040CE98A509162CA150F0CE13B88AFBFFF59E8F4F74826E74044CB5AD83849459710E865549F8A1848B6A0F81D1E41BFEEDF3D16DC3BCB26E76176A0D4C52BA384D03E932F9227C0F1ADAE34933E648A03682330945030FE7005B3F14734282325F20D32D2E44AE5F779E280D83BC1BDC624A13360BD5BD0EDC63CC17D43EFDD726E3846E51EB65C6AB93632930C8806FB74B84571F6D9F2301F174079DA78062BAFFE94BA64245F3C08D68A00B11CAEB11B5D28C8942A0400971F10B66A683B4E4F4E33BAE090255400D82D3E44449510BE5C26CAE4097CBCF7CD30F9A3EFB159DA0444AEEED36768BE6810ACB860C3CEE218BDCB5EAD116B1200B78B5EAB81939D9A1BC3397978A8C5C87571CB2B2B74AF2F91CB130C2535A1147106DFCC4B2BA2B433839DC5030897BB3943AC4710CC2E727BC620C0EA54C3738A3289B6B94DF4261BDE98A5C570EE4124980724AAD4C632DC274313A9FF14E4F102C565BA500545C220F7509CA8C6190A662E5FD85DE8E849499960085EE6188AA18BC28E37612E2F288E64DF9B92646120B9E8BD6FEC201B418FFE7007318DBF311652A82054E0B78AF04E5747B7A02330BA7E75C28829775CB8579984E565F283F38506132ABA84C2F33243095A15C5BDF3BC4C1EF01B4918A1225810301E5010A1BA839E9BCB031C17BE895EAA4C100C2F7C1B3D4399D3AA2A2B962A727021597DE1192D92016A4AA3A5409BA157387C33EA5519E448DE90B73F00E936FB353CA1DD2A29DC3BC326E7DCFFD0536ADEFFC0E2CF3E723F4A1B1D72C56A7840ABB89E540440B2C502CE3C93DC4C42113B0366C79D03CB4ECED84189A9E01F9258FDA80212660A1715C0E2BF24A05E2FD35D594145062C713B674126662440D26B4502A2C2D868E5B485F07055D1C547BFAF507F8AF0ED7305C6EF5553AEBFF5AAD06013234B98978F66249B3E9AC565B28EBDC85A502CD856D2CC1BC495EA56451A2A7344805776D8EC4C1E20BE74872DD625089A17EEB02FD3665F15F06810053531AE0439F9481E33E9E358541ED7510B5A4E2C9856D0CB1BB015EA54DD4923996370D2EA876EF979242EDA08D7EC829677E256AE8C5FFFBCFCF3B6842E9AFE999FD12D8A0FCA39CBD50A00EAC370CDC32B161FCA26EDA4FA9C6E7779D2B417CB4E49C3472EDA35F9B0C0CF67A1D310740561AE0532148FAE69182AEAA1A5186241453256FE98DB0ED0E026CB67359B9E45D01633C820682C83A64B6C27847A713411A2DE755B4714AD42E1EC139B5C8676537C4772D2492C9267FC2DF57413A68389C3D575B1C6A03B34371A89E3B4E12AFBAC718058BE02CE267706DCA5AE838B95F00DD385AE85A33AB4235E0C512AF02133C960AA39E5212C4A32AC8B1BB23C6D3C0397577FCB0945B37A9734EBBBF1516D8570949B85895E825A0BBEFC928286A652B17CA0505A0B0B0951493D148E1D09F23887E072CF1C29A81202B78B3D714469A2109B72B338C7ED62E354A92221407B28F12A8930E540923288DBB8952C8E15BB4A5A4B045056D42A440CCBA94FA53896C81B0DBA5522096E16C7885E701821D524007E971B44208A9C8350BC023C4FF69BACB906B4D96D916EDE542D811282450C6478C6F29A225B28402CAB092A427A86B04AC5A98884E78C10D47A8B5D9CBC01A01CC9C483BA7C4101BCD8A908D88326D5F7E9A8A0C269507136F6C08ECCA137B41396B7B453A26AEA7819E4A9D4A3EA402FF4A9518E36B2F9097E266F405EE62C855C9570105EE24CC5A40914A4FDAA076046360984C71C86206695B858180B94F10B64413D2E03CAA7DBAF29EC0F2ED37FEFD35A2508E667614198A4D681AFA0A49091AE5C2C0F2094D7C232E25A4A0F85F39F823CCE21B8DCC39F0AAA84C0ED628F7E229AACD36CD75C53385300153BA704C53093218A390532B02C6B3651215AAC965F5C8BEB544516326F3C18D7F3CE641EE7B83E08EFCC5325048A0FC73B5F9DBD813F45EB15A24CEEB18B94154978CB152C0814E9BA50C2E2942D1E307E01250A9EFCE5D03B87605F0C037DBDC0F1BB4D5C851038C5EB4A45822E47C8872EDEE6C9ADDA43573825E7418B9648F3150B826FE0972BD8D2784013D7C2CB18CD0FE2B7FF13AE4B9184968134B265E068942D3A67C693DE23EEC8FA50297AC8131C756A8F4C11A49691B7DCBD537C0D3CE26FB17BA50605D49E8822482D633092A71BF8E27804D4629F691814B84CEB32BF5702D4446A195008E31800458BE31150B491550A9F720507546732E1631F34A96540218C17F698075F038F18A4EB45A5F02957480CFE91149B1C74EFFDBF220C12A41C0C0E8CF46048F20EECD738E2F8C114C7CE2A85F759620094CAD3C824AD13482DF609649E027E51B8D4278F11F91546A134B52B2C2E7738CA57C23B22173B2885CDA2551A7D055469A6579C53F4943191C9E43D637EB931BC692C95CE0F3ED56A683133C74C75547A756146CF405D6CE7AFA44D405C2F352CE029A3102348B2FA47F6724309458DC2E2FBB0820CB599704956CF188F67E65C51BC80805DF2CCFA97A4CA92A2691B9D089C081907883D8526F650BE6C5F1AA5136588ED077F8C7A50748E31804C61CF2C93DA09E496BB4356A8845F1C2E76572CAEC3802435D88C3FDDA072F8C94625877D6CA82494F08E4AA28E1451D9E70A894AF8DA367C9745656A8AA6E6A07220D48425837FE070902F911F8CF12DBE98E9A5510549D087D23982D5C2E23E96DC9E61B7ACC86F141BFE906D84A5A91DC16EE2CF00DF246AD410A474F00C44AA8E54CA1F330507A546FFAAD6B99A6031B26E35689FBAF40EF51AD9AC25ADF789D63AA410D6CBDB51C653C1270EE9BA51297DCA151E892A719D2CA833C2DE12C3B940B1DC1203398D284E2D843302D9D283B7A091DB52C3B60F65F129ADEAB26D35F2C88D49CD022242A8834536FF90219C50220FF8125A7C19811CAA82C2922D9BDC11C822598E158BE419668B5D764595B84AABFB6C2DEE5339F48EA08696C05A8240048EAE8B95E8E119A08CBA529100C9160744E5ABB66C7257005DECC2AD580BDFE85CEAD22DDC7E333DA856163759B51576D5DC1C2C8462C43A18E59712B2CB964AE5017652FB2B058853B648A0D7FFD0801E92C321F4D052E2811E432AEFD063D85F6D6E6FCC160DF4A473CDBC0C4E81B7D4A967991E0190BAD049685C0D85EDFDBC0C0E71BADC0DFC323DBCE374B19BF5A11A7FA4F946E32CA0200F17AD28B93662396505EFD4C572F902A1B8269631E9482BF24E76CE8F9FC50308DF2DF2549F5C8F209825EB4DD175863DC9C757833C86A48F2AF2648D3F3C93250BE02D396D1533DA395A06053FA7CE75DA02C122AEA6A114FF7232F969004B8E8525BA8442F6A1C4C40AEBA0A24C1EF01BC9CAA88A6041C0B8D855525A15B80BE5F577E1857DC25C1EE08896B6C4393099324130CCA8421539906C61510C05D19D67E064E26218A3D70631AFB4E03E5522982F3C4A6A6341930DB8266AB30DEC3C5EA0B8E00907B1226190BBDC2907B61E5A730E4A2CBCA2FAE0A61DB4D40CDB040E6DE281D25269E68197CB573358F2E4834C9960F85EF0F403AE8BEAFC032F971714C7340521932C0C24973D0981EBA23C0BC1CDE605944B9F88906A1306C987351501FF3AADAAB262E9A2003024AF3F54A385F28E00A24A2D06E00CC502A29C51B7CA5047F206C3FB59CB1ED478ABE575DBF5F2478734290BCD28955350090563207EA06A0958C2D18DCC08B67C2B794029DF122A85B7B98201F12ADB3C79DA3E8CFA71A732FBCB26670112A5D471AC9C124206AF62913CE04B6C758DF9DDD64E41A1F6EC6D56D54DABCAF519883700D7EC3F52C0F132F16037D1EB028F5B5268F8C904F30442594D288981668C058C0A3352DC1C4E61B8DC5928A922FE31BBD8D9A7568F9F612C9C15B71A9E93938787D8915C17B0BC7242BB4D895C9E1028A9856539CD4919459FC9CAE01080CB7698223DBCA375D1EEF2F9C589E27806A3E4211310E96212E71BDA1532A5F10429A68535862D815D5E2BBE742F0A49681948CBDC6AC293DE23EE16B9A904115EA58BC549ED236FC11D2A5B03BFF85B6E27FAE262A58A419C94874140A58B4182F10231C8D6C01306D9F5B2300C5EEE0B4910375259465EC73374F04649E2113C985555CA85198242E697F324CBFB118C103528210F38038D2E7A30DE4BB9789827B827BCB1EA43D155C501B8FEDFF372C3DFAFC0CBE00C8068190C20A232C70D488622BE81C9A82F1511906C710055DEA3E2A4CEC0194707CB16C737B816D8D5BE7C93D5BBA459DF49FB5A8C9207A79148174F38F72575B74CC93D218F59274BE87027C12FD3759ADD4B277959191C82102924B46B1309E51D66B4F195DCDC982B28E87E5DEDEBA6DCA6557F0BB2E2FA023F1B0F80640E5D1C0A4A0C8D46B9689E3029AF151541E258A0A07419AEC0FB50764FD1698185C8EC0DA464B9CC9301B85E5176E8AA8A85023AA77E55C421B28604FDEA2EDB75B7D783DF49B511BE52C0A1E7407B20D54434B304F62DF0A3C0310258A4871FCC8AEA4A4502245B388836E5FADB559334FBFABA156655E679BA96440BFC3C4CA84EE45A50159412343C90CBE5037EF23A500A0CF0ACD1C0F0ACAEF75A181C323804E058444CE823850A003DD2F4AAB81BF24501BAD617E7592AB80C9E49ED086E137F4EC7DC891A5FB72CD2C13334A93A52ED9261A65840F925A9B2441D953DB93B580E05B07139481B3B30092DFC2393A8274568F6B98261933C97BA6A9797940F402BE5662197955107C26A052FF218B4966A1E60AE55C72AF2043A0A7D0A0FCA823C0DC89156BD304894F7E66B9B98FE0D00B38613174951940D4CFA0D4480ABBC6A7154FFFEB0A9F6749368995FA5CDC076BF015DCE3A057EB94B4203CB3E8D016F9C491B514DCF7A507CF06409AFEEA437431832CA95F0410F55AFF224DBB29852445A6CDF97B75921630B89B4D8B6689671ED8E894B984E9784B0D8A1578848184DDBDC588CD0BD8572461C0E2A59870082957F489370411E676431C25EC794B19A665098ACD0292C055630F2E331EA436E399B2B30982E99B534266AB566805E1633824489257E492F93254EA2008876073A0F10DD767FB9C9CE93F51DF0B31C9BF5A94A1AB683CA04F84B81D110122D96327E7207D313F2E08AA62B49465C0BC3948EA051AC50F492446ECDA24412BE6437CE624B475B3213C026799936FBAAE0D5374EA2C81206EB97E9AEAC98C8A68814D97E4940F428638B10A9B49CFE25514ECB199F7155928F2F948EDD8435315028F49BD3124E97F573BADDE549C3840E9F5AAB20D522B499837AB8C9D8110541A2252FC7D4D4F2A3064B193F39B37E0F852016A54934043C077607A3E0BC0D8C3931158758417438684BAAEFA2A082A6D2610CC1D97E95B01EE9A4CC4FB75F5318E6C0ED273BA64D481A1DA6FFDEA7B58C29A49132FD02C668ECC0A84B9132789B27B7BC6A19D2947B616E244B12C8BBCCB66C4E47D926A9B0F82329363937B6EF5395BB6FEAA2636E1F4E51CA4BE867A1385CC7294079DF256084CE25CA25829103C71922C96A510A0F6063A2B2442271A44C9077C6597CB047E025AC601D0BFC3191AEC24D329060D0A87095C5B32C2239DFB2025FD8DCFA24098FCBF4A64AEBBBCFE5B79439D580A62B30DB26D537369B3645CE403235A1342DD10EB2D30A80E7629FEEB9C3F08942A53923F7A8B1DA3392ACC06BBA0E87C70EBDB74881E1785F048F1F72A98702BBE717273C46F000B3028B17172B1E0B780A5081C5B0259FC7673AF62061861CFC60F1C2CEDE28C835EEA4E50986EC5D566047EE0DE371A5F7FAA9309746943495D26C52BF3B88379F34EEDE92B1EA669541507856FC05D0FECFB264B709069D0273645190C11249D51CE1AF3850622FE610CC915979649A1C9F7DBE1E66941162F63CF540492E1B4C2B44EC0CE35AD4A8EB38354E2D4148790DCB4B082FD6F438B94C845BC2C04AC304B9DC4A3DA5BA665D063B56EA7949AC342863DD4A7DA72A375247A8AE17A4B763A28E95C442BD22B30D84CE2E5FAFCAE226ABB6704316C3465C5ABE6EBC2C2C4B8996AED498326CC634FF5C3BF53F94EC84D22AAA8464B1672794A93F3B4DCB5E52338DA4CA0A0D396C1A69E4C9B011B6C637DB52ED113764318DB60F4EC0D700A363D9A21B5A0A6C80736068CE5FF433D31B5BFB636B8E92882547288DB5477930F4C79732ED98005DB3E49880779480169F718840DB048C6302A809B025D8D9264076EDF52BA5B40D281ABE022429CB0AE8CAAFC016142BB631C6D55F6B68E85760F85860EC5B65D622BE63D50407F89E54251B9A2BCE07004E20159B5FF5AA8AFBABF1E1022438AFC7D41CA5100A8E1072749F3694884D807262F702F6B517F67F349DAAFCC2DED0C01EDEFAC6F166AC26B94D91B934A17D086225A5F03C962C4530F56DAE9FCE8A7BE09CCA8A19978BC835B49B7259351AC2D6B7D99E4D53A20A569BA835B41B3359B5D9C4358CC9DA1960658B01626DD52E4E1CD80B300D64AE958EB95606E65AB930D7CABBB97E6E1DE86971CB8B8A78D41ABA8D99AC5A6CE2EADB64CF15DBE273BD66F8DC720B7C1EA0F1BD802B68E0F3E5BE50B21196414339349F55AB618C7D9BEF9701D39769BDDFF246EBE23C1ABA1259ADDA91E4EDDB942F157B80977ACEFFA565BFFF3280CBFF755CC255B0CF48ACA1D490C7AAA546A69ECDF5F4C9B4B02CB71742ADAEDB94C9A6C510AEDE4D462C6DABD80DCFA2A32696D3AE0571D6BECDF894DA7CA060482A9386BE645EABC6A4983B3627B6DC3249235D1F424815D77250556DAD0F213CD976E255C25C4B75A569ACA75119143524F3D9B31DC5D9F90A1B7172EA1A975B6C408A5E4D4B329BCC7CDD6656451352CC1916149EFFB46042F51D0224B9868EEAFB04F4EDE77FBB002C76BC9A51C56AEC7B1CC57A5197385AB3187559A3077BA9F70C04B5BA5EEAFD83B6C97C7713E80E6C39D438D462F5D8997896136D095765ED106DEF86479884B6625009032B829813A60DE768C5411AC9CB8731C4D1058B4C41057124A1690FCFDB73BA42C5AE8845A6A089D8F9689AC5A7BB998E694BF0C226146EBBA0E939DB38A663E4E27D1C0C86FE70831E6817E0062153A86A44A9F9B84198B1773CF0EC6CA39B1AA450EAA546628D9E6452D3761F3572E68C95995560C96692A88847AEA79D242E9A65B97081D179B9C96E32E5C80821D7D070CA65DF7A086FC7A138562C3CC9F1FAFB9F85626345E935B443B2D9371DCADCCBBCC370B8F8BABF7595BDC18D4329568CCEC0B31772A389C4580C9E8E213696385DAB22B1CF48A8A8CAF8C39E75C61FBE8CF38EBD3D90A25194FF1D7B8BA0A135DE39DD26485CE1738DFE2DB30945AFA611994D662BA589012E73CEEC1DB7226CD850D519E1C41A0AAABA247DD3F9764C6DA13A7833C09A339CF9F6536899BC130D427A7DD578671DACD88D770882B8D9CBBA0DE5013E875A5D4579786F6C3DDFD13D7643847CDE93472E5690938B673CE1AD15CACC1D375BBC58D9489C43ADA3996C2C3EC76ABE46E303AFE9121DB5E96326BD7C7686954D34E7C3BFDB479DBD875966A45C11EE44E45ACA899037DF7401B1A7362DCDCEA0ABA3C254F52C1B7AEB3518C58B6785C419B4F414CF0CCDB7A3BFD921B6FF4525D7E948907C266E1FB180C3CE052945D0D405F7AB59B2B4243AE4D26BEA2C8910675A346090289F03E6D2EB28299F059E63C2502D5D6122989F41474185A9E039F6F33E19CC281EBBFF58D996DCE737543466BDBE61DBAAAC8736903218D743DB5891EEAF3F96DDA9C0A1142E2133327016A5A71B9AC58BD22C8E5EEE5B400BE6DE35C0A453D6877BF380A17DFCDC43405DC87D8D5EA9CD689C227A41931164633648C665E2A2162962CF3621AF4A8C6D88DC957ECDB8E69C674A713699CAC2DC7CC3E297BF4B0D2B2E8535972FAD3E2B6656812A875E476515A8CEB0A87FA88E6F055C33AEF9E719529449A6AE202FDFA4E8A30752838A4AE002545469F300AAB468272057C28FD2921DF968811A34832CD811C5AB435390475D5B75609A5933182CF90F4760EF8F4F0F3ED066D665C1B78A26275625089FCD1054886ED1CCE111F3210D1F5534BE9D61543B43EE59D6E99978AE93A15441754C4F8F58AD09F11A0787524D57F1BA06F15889A2FDFC2C6660256A82D3108EBA00D430590420130E4939948ADA0987A58616F33734259EF8C19CB4CC5614BD9A76643699DDA4418090B9A483B16243E21922894BE3530B54E466625A4FF22E922A6B971E8E2C55BCF62022D7504DBCF230CF6C3ED71DA8C2C5FE8D4FADA19FD8CFCD325D407747C9ADE0F2C83C1A9E89D2DCB6EB230B60B93FD9AB69F3CD2A69CC7C6A754D254D798E11BDB664A46CFCDA11409EDD16E9E64DD512C8EC28CCABA6BA8885CCC6E4D3278AD61616E929BEC665501E8DF0B29928AE3C4EB162664FFD3BF9B8A16CF14C9243D49D8832B27B2BC6FB8CC20E4B5882FBC5358E00821E5F40AFADA7A0D7B762474F5D3FE34D4C652BB27228E9C9C828B124FAB0A79A2D5965B8B626F966A7D8710AA8F91AF233B12CC8786854603D016F874E912A55BCB62622D7504DBCB236D36E3ED7D5C8C767AFE987638546E46452D2969D5762D0E1195D3583728A6098555A67368CAB8C4D8A5C435B656C9A98322836AFCEDEC09F9CD85D48AFA3E394CD850511EE7EFC6257EEF08CB382DD7A520DA5BA1C0EACD53366186A7CB0DAC606F3F62568E9C9108288AF0545CBD93CDE3F4D2DDE324E70727BDC031636BDD6CD37C34823977D209D6D849111C306C8EBE3D6EC203DAD4152C955909ECB50B786E72318B04CE9B90B924AAE86F48485BA45FC6CB11E4ABB4CEB32BF97D902A1922B3011CFB605C2CA832DBA22787BCC1954720526E2D9B64058F9B849EA8FA4D8E4A055F6FF722C425209D520883916E953A54621B9B905C8508AE4E42045A6A482E4A4A0AE453C1E0D448A1477320C42555DC45D8D8171BC9FF9836FB9E81EDEE56712EA29CE2B3AFF4764523A04C82FC8C3815EB2709553BDDC3CFABAAA9CEFB56153DF277D19E52B1CF715E4325259E1E0AF25E30677076AE78005B9F4D5563B116CC3C0DEC2D92F499525452378D612A5102A821072CCD353484D827272FAACE55090786E8E4DA8A481783ECEC0243EE7E0F062FB9F72030D84AAFA8C3F6D1968F8C936108FA19981E00149E985F16C42A13E343DC74003A1D4420C8E6E7DCB5820DFB960246AD2F3DD8BBE259C3B98B124F84330B1C620545361A4B766948923EF40B0C5C936C84FADF168B51CB566A36614BF0D467EAD3B45A6A082F45A771D7B78BE9EBB2B54E244143D88CC7D285AC08FE350F31A5A2E43CD5F285AC19FA7F850169F40332B5BBB0B9D059B90AF0B939E651A84506C1D3647878E032D503C28E250AAE9221EFC1899C7CF28072DB17F348DD7A478A46AEA2039AC9908E5C98A67A764EBA6128E8938948A4A0947456676F2382E8283F5E97887F8852D3E315F316E1E96B93062A1BDF86C1DB63EBCD0FE879AB1506255AD903C368D85B2F5682C5120C8A555D74914129A5BCA5F6C88972C9E71E5D2AA2A269E5D353597CF995458B2FAD3632272897AEA8F8F51E472DBF97F7E8C2E56B46822A0D6D14CB45032D76ABE1647F8255393E43A7624339BA84ECEB83BB4325994C0E892B5035B5520F393FAAF1289B239B26D40BF291E6609E97594140FB9E69AD0CFE88B2E57722BA538838E82925B29E7DACFEBAD94B0788DFBF385F4122D356ED0A7E9E5460C70873EA35C690FAE7D8BBE20971BD379EDC5D945AB76E36AB98DB457EDC8AD983A7C57AE73C3B43883AE0164BDF95C03FBEDCF75AE991667D0D253A14B9F65478F9DBAD65DD3921C5A3AAAF4EBB38C18BA6757B9705A259BBED2922BA72D9936C0A5D3679B1416D00A76DD3703DAA80C2ABE763431CB646DAAD84A0C3EAC97AC7AAA9680C9D3EC8EE9274FDB13571F7792709243C9578A9D8173D3F44829B41387A54337D796F8EC6D56D54D5BECF519F007599267FF1159894B2F568C978D67B1895E6E342E6F7FA613C7297C6265C5C4F1C90C8BF90C4CDAA27F864E332B6ED5E0C62317EBC7C9C533DD482EB71C8FB363A84DC5CA91C6A455D54A8E332363F946D9F38B13B9C3C789C4AA60B43CD30022B951704E8E71D316269A09A068E4B28BC6FC5A46F035BC47CA93B41C824A4905496BD1B186D716F2E262A56011824AAC064ECCB308A0925B8460E5CD2297FB82EF2F2602B9F0906EB6093A2E8E7DC42FE74996F74E9AA73A4623961B25E51960A0915B01E3E66E47225654FFEF79B9E1BDDAC3A655D404C962D13E2857869D9064EBF612361A824A511B61F331B08E9786F472B82953D4927022B1F8182DCF1A2391DC1C383FB7AD692AABBF114610883169555599B258B510C2D6316C7E5DEDEBA6DCA655BFD9511EB80A7288D5E367E4D98ECC2137A1A00CDF86242E6A553627994F5361F27E5877A6254B925C5ECE3A266366EBD55DB653B9A493472AD493958363C481546A3B264F0FAFDCB5AFC65C3549B3AFE1D33DAB32CFD335BF710BC805EAF17331CD36918BAD2660EBB22513C5B6AF19A9DA6BA455D76AC862D352234F4F6612DE4ACA265453467807A98975FC5D384A942A38DDCBA154564870BED7D044DE0EF8922B51AB76F4A0B23AA79691AFB0527E96455919C5B6552BCAF232DDABC71DA35559344956A4D598F6EAF1D5FA2EDD26FD87578F01C93ADD35FB246F0767793D249C27BB5D3BC89972F65F1E5CED9235506CF5DFAF1E3EF87B9B17F5EF0FEF9A66F7DBE3C735645D3FDA66EBAAACCB9BE6D1BADC3E4E36E5E39F9E3CF9F5F1D3A78FB71D8FC76B6CE5EF1521ED58525356C96D4AA482A281A47009E14DD2245F931AD4D16AB3A5C84E76BB3C5B43F3BCF9DA7E4FFF26DAD5ABD1DE43911D30DB9BC753F8841D5DB16D86B67F1E72B4BF875CCD5D5965FFE92BA40271CFA3935DF6E8ACB8A9406556FB75B3AFD247037392F764E2B740EB76FD1B1A204530C1CF0A325FAD933CA93E55E52EAD9AEF0FD007F4CE36C04265BEDF16E45712B97C4EAF819D5FFC7C95AEAB16A828373C459D63FB7F9C53F785E6F0EA316119B25A1E53F5423415B2A29560D076A6826733662341C45F010DE2EC3CAB9358D043C134EF49F2C153D4394EDB3D488E788A3AC7CE99F2F9B2D235B8974D925FEC13580F04633C499367BBFB95C1AFFBACC90B761E0C66FD779DDA194F66D1D5832519F0FC587038B609EAFC90A37694A3C3930C7892326209EAFCCEEA55B9DDE52918BF10CD0F4D50E777093ADAEA1BCE6AF8168DFFE46DF199DF854E3D7B5B86494F2AE3E0C67DC2A885EEF790CFEABCDE272C56D357754EE7D96693A7342FF4BB46B79EADBF1574D73E7E55E774B5BFB9C9FEC6F90CDF34EC94DEA73961A4EE934EB797156F12D2A54E5F35DC73D6E4A467EE3EA9F338DD26597E95DD1649DB1A7066649A3AD74F776553E2CCFA4F1A3CBA07313F656B5A32324D9BEB59FD25ABB3AFA4F9E85475CE6DDB7F9F14B77B30CCF89612DD3995A85143450224392FBF02C180AB21AA884CD4E5FBF1E62607431CE8B8189CB1648DD6D64F1460AD8D3379C0E77256835E9CD5CD8D9F7578BDADCAFFA405C96AF8AAD962180D459BC7D8FD339821691AD84EEAFAAFB2DAFC91D47704AEB1148D7A4CD7FBAAEDE79A644B208F48D2F20D45FA61BFFD4A220E4B30E2C7B1289B42C3CFFE55BE4DD6A0D7EFDA04195953A91AFD49B9FE56EE9BD362D3FAFE3F9B35D1B7D0C906BC19329369EA5C4FD6EBB4AEDF0288A69B55B92F88F13B2359CF83D291C3F4359A6014DDE1BDCA936CEB2432A54A31884D1578B8894EDB02490EC3378DA1532B72B72287CF398D9F35797D49F23D8B59FF3D4A84BD2F6FB3C239C260293311C6E1C1F750801C7CBBCF36645F402469C57730CFBFC8080C4B7085E308D0D29D38710C96B690995861B370EB4EDA32492EC3B7682A133DB3E6A01AF9D70F2954A028B39B7E848E07228B05D0DDBB0EAA8BBF6559A1BA44999DCDE93326F3353BFDEEE01835FF3A7DD618F615F7C0306545CDE662093ADD4B770C8464877ED7E47671C264D67DD6E5B562F35AE9D7C069714B795CF4BB3A375A415DDDE09C26C0D1E5BE20591149FA3A5EA6F57E4BF50A74AA86BE5425E8DABFDFEB4BB2413E6BAC90F4DB40A92517E4BB866427FB0D2556FF4DC3F6F8E63FCAF874B29607EA669A187E684AD018FC9F7C26C6FBED079D89A74FA0CBCC1262CA08F9AC35899527B7D41416FC166EFDA8DF154BAD6E4D9F35F0D55F8A403243BFC7D4F5BBEAF3CD3A7B8FBD3C1D978D1FB5F9305AEAF05963AA32DB5CA5ED341CC90D4BD0E2C7DEF08225B85A65E54FC88EB7085372E1497A9AF61B8559BA2249E1BCF0590D32721C299AA2D14B33B75D98ECB8B82AAB36F47B9B91AB4958C2D19F4EC97C7FDA2F12B971AA6CE66AAE9597F7071DF562B7993BA82DC195EE0AF525CCFDA3D6187A1CC4458DF1CFC4A8D49828F70F5C63FD210247F5C53C40A1585B9CBC6EEA8A13D9198475EAB5CE950558B759C113D59830D3E79810D4D9C815823AEE6608E2E5FD415B3BBA031B9E6E745063441933F7893339381B705ADE2A8E2AC29AFC43D334067949719BBEADCA2D31CE9B3E6BF2FA5C32387DD6DA47D7CEEA30B7C560096176658D07AAA92A4013C20C9D96B015FC4D5AAFAB6CD7B67A72FB3B92A07130A7FCFB821C120FDFA2F294D865E08E3CA5A80C45572966B1145F395C61C59ACB19BEEB739B2E5CE6F1C529F4A776E85330788A3A47F2002529312B5D937B77892D93F194A4E5F5D183EE94E7C7130FC3634F372A534B5458CA014F9F7537CD399A3E635DABA7387BC6CEBA140768FF5C2118FF9C27EBBBAC604DB923294B0F3D2F4EB86B8D589296633BE5AF5F9E1AF2BC58F1E55C19F23CE7EB7E6EA67B0CCE37DC5446DF2C5CCD65F4ECCD2633B899DDB838FB0E6911F323ED6D3449B14E5DCE8F20651806FD420E6EF08016CB9ACD40D34276A4831CACB566324D638B8E8363F4439EEE0224F6286248D3E7DA2EFC67059BEB90A66F559E4575E728E0B0809E6EC712F4A44B37F48957F47B945EC6B98B99E95F96B4A7D7D94D17A276CA2430E4CF6AB14C024DFED66ED7B079EF47FC0EA59582BDC1884E8DC6B9A03D9C9B233A480126C77384D97FE07539FC1D2547BD82B010C5AE41C26329F32D4B9D707E9D70224598709C6E3E4E37AB715CD474B3F055506BF3CEFC523466A0454C7E4CDF3838A87F9625C77575292117DF6C7BD771AD9D169148D29B95469ED1A2E7A5B144BD9969015F22519D6FABDF650A5A584132C553347B15364B22E9E8FD6D7A7F3E728047F823293639E8D057A78C431368A221DF8B95806F9B184D6F455F81ECA0B3925D1BADD055C959FCA8E330B8E1B8F322CEE6FFF1324C0661320E8EE6FF61B1F0EEF5CB7457569C5B9A0902FD29176A731896A0CEEFE32E2D8019A13C38433C45C70265CDE688A7448667A4461C221A29C518D3421E6E507D956DC0970D5085B1490249D16D275F927DDE88DA0941A0CEBF3DEA477BD2E9AB46D0CB597A329FC816CD919B70853D15E510A6AF3A47635B7749B1423E2FD3B31CC0B60BAA3D38F4524829C65E4AC863295E6A09185ED454D55411AE360FF5ECCD360F71333B03ACD59B0D5CDC1FA03E1CE14AB59C637A0E4F791A1FF1F47EBE937A0AC6E523303C0E27D355FEF4ADA354A206DF7593DD93ECFA6F3A71D24D95D6779FCB6F69F13EBB493F67A4BE6C0A0D39F3BCFC0B38EF2ABB25373B10493A63C74FFBAFC070E4C071F81A5933843DA1DB0986A1887963B1039A5E70B37DF13869E1E06ED2E909D6AECE3FA7DB5D0E862D8EEE2AE515677477A93A3337CD089580DEB78DA799711D3412714769A2049637485902936F18453F553F18E753F79A8AD37AECCB9851855C0ECB187D59087A371B103412AFB58C1F35346BA83DDEFD279DB5F97DD154447F3D7ED45AE36F9275F329AD6AF2683C91145DAB199F3777ECFDCC02502907475D677F5B2DEFCA0E567AE88ED9FEDE9F69AFF93A054271B6C34CA9EA9C3F55E97D56EEEBF10D508C339DAA2FF3F820235B6824592322DF6EB386DA6E387DD5D03F2D3600F684DAC347ADC1AEB5DB7EDB177A1BD64B5A5882864FC4AF556671E69044E9239D3BC899DE71A901051117F1FC2192ACB1ED2CA9C76819DF758626E8C86AF7FE1BDB1BCE80972F6A106CB4CF86533A538947D780A6EBBA06220270E21D2465A87808298B6578091767835BAFF9CFB448AB8471848048D498358FF0628C1836B646D0859F03E92A101541AFE5BC3FC74A9BD9B94B782D69FEF0A4AEB3DB22DDBCA95A06245F3AF58872A5DE08F6EB49F5DDE9A5CB7431465D929CC9323A25173B11FAA52DF66E022A3146004219DBAFAE213816340F840236CB80E1422173BAFD9AC246022790766E3A64B21003A8C859388389E58D7E8826FFDEA735C597951ECF66E72F69B1A12F7598BE6A58F6EC4D3F6949DFF18E2769F0DCB7DB75580F4AE329EA1CDF970DEBD972E4B3FEAC287B32546B8A21DBA61F6F86A6804F30E0493A1B8D74DE2A0AEFAE60E370EDAE6021F3DC1587C552DCD5C76A035A0DA30960099AE7125EB7B321D4161D2249932767AD814C733F9209D4343A1FECA44174AC0D9A012FE30FBA47A27DB4D1D9B070606E504DFCAC3F6845E1F749B9BCB5C9F8793219831FB4E6DE955F5B34BBBA96043EBBAA5F59DC9C6E6AC9FE3CFDE021487EE8778DFE3AA96ED3867517119E126E4D10C4CFE51654E526A15992693A5CEB32BF678514784AB8D956FB175C847FD892BFF634589D5C769ABEC7E4D7BA2B36DC4478137B33EFC6CDBC140767F786A5DE1C2433E4B3AB7179BCCD30F08D659FAAACF0746D99A428B516A5C6E9C76C5EC70BCCC8CDCDC70BCC8E1798A9F08AE502B3709DC197A4CA124707AF27F6663E9F9BD9999B67F8E3D013CE205F6F07064724251A504D62B9BA68C21C54A2CCA16788B80058CE250EA0B9C06EC2D5D11D84BF9947E1E78ED7A5409959934D5882CEDC90ED7793BAFBAE98ABB944D2C1AE368D75E1EE4E4DC3C50C41DED01E2FB09772EAA266F8A7A373B2E99CA69764044FEF18BBA9FE789C803F9BE2601DE187B280A78A01929CB42F84BF411313E676D3CA1C8C08BAD347CC1DBE785288BD58C0B4740F307E0CB78475567FEE1A0C39FD327ED6E1F52665BE693A7E3E2E591DC0F4089C6E7679964E5880823B93E45FCA6CB8FD4E3FC6F36E67E3D501E30435C37D900466FC394F2E3308B44F5EB13C0B9164C093F4075882C1AA00C39DE249063C29078826C4E5B4DAF97F974B7BD242549D9798C7521C989BB7DA88D54E1E730659C885BEE3BB6DC785AF654476CE5FB49497A2EA268F6F5A46E2278FAF5B1EBDE48FE42581976B5C0D7D99BCD53C2227EB0FBAA081DE78EEA423430B30A830717647D3AEFBAFFF057C1179EAB5FFA87B8098F24D0627E2BBD785FE6CA84BE0C7CFEABC4EFFDE65C0A41433F4BBC622465536D06F7FCE409F4ED88C4A8C08F6EDAE5F4780871B8A4DA0CECEF8A37AA6D2D1D5C7679B1432690B30392D26CCFE835656676D102E5FECD3BD9B6AC38B30D9C02561E06C2444D79EC19A56E46B503FDE0ACF55B679F2B41DBA7CDCB9DAACC8E5AF8276617667589FBD2BA407CE9F353D75402485C1687B29C819C168F8A6C7E5E39E75DFC83EA630A905D1B3B75955372D929CC17C2AC210E822064B99E0420E72D0730654A2115FB201104951C1EE6738E706BE3943DD588221E804F97F74CC8D8BC4F4BA27921015DE9E5F9C38431AE06D883166CEA5A0CBEE94FD79720BAC9A91AF0A229F75700F0771E48305C8678DF994EDD7B2AE295EC8678DD9940C82869845193EAAF379BBCF6FB23C6F6185F3C2127467B258F3585A5C86EB51713EE3576D3B7DC9D2BF98B6EA12D4F90D077B305EE3473D0DCF36AC2BBEF014758EAFC977245FEBBD1E39360FD882394DA74FD3D0F3FE9E50AFFDA0517F4971B54BD654A341BF2F6B192860CFF5E262E5ACE702BC0D7B2E66CEA5F45C574D5235F41E40E4B346FF506C3E9519E95CA6AF1ABB09F705E3BA9BE1A3161FFA358DF16354D8FEE53CC972978380A1004394F3B3C73BC3D28B7C5E6EA8AD0344D2B1C12CAAC120B5E7A4BD20FC0D9A8B30F78FBA6C025CC8CBE1491B673E6E2CC1D0C909F2C7EBE58657FC5817C4A129FA1CC9B810FDAEB30633EFB99E8088FD9578CBCA1970C9820CF12B67E306C6C45B9F9C930F68F271CCA30A41F74F1FD1C598C2CFE96347E12A617597ED9C5D5B80F037333B3FB79BC6EEE2ED9CF8E39726E95F9D392BFE022AB677C5B98103A320135C28B1710310681BBA4691CF218E5CBB78FE02AA440F0691CFEABC4E9AA69D92270F72239F35E652AB727F7BD7BC26CC867C36092F79C16554CDB45C7F737701BB80BD529B14E476E7AB2DBF9B6678CF9A7021A1BF969E8AF088348DC60E1FF0489A84FD003A23599DF7C75D5A806A86B589B3C553347ABFF42F06B7E9ABA6DEDD666986C64382AE1D6D3F9202737EEA6EF568DBDBAECC72066F8A42B304788AE78A5ACE23D3F4B1CA1C8D10697A5CC743416CC644F2410E76C8C35C2B57937BAC824CAF0C93B271E3D6DD1E8C8B24181F125765D12459915624C9587AFF65FCBB1E3EB47596DCA6ED4C6C5E4FF9AED677E93681DAD6BB64DD3608400177D6B59DC2D7A44E3B92870F8069EEB34D5A810EEE3BB0E9F6514BF0E8EADFF9B0296020384F8AEC26AD1B787EE7F7873F3D79F2F2E183933C4BEA763F767EF3F0C1DFDBBCA87F5BC3199AA428CA2E42FFFDE15DD3EC7E7BFCB88625D68FB6D9BA2AEBF2A679B42EB78F934DF9F8A7274F9F3D7EFAF471BAD93E26B3F76C95B83CF975E052D79B1CC52AD2AC8668148CE0D3829C417AF5AFF43B59C503782ED31BEA34D063A2B6C9ECAF487735E66C45F9FD61719F54EBBBA47AF8E03CF9FB7D5ADC3677BF3F7CF6D3C3071FF6799E7CCD01C94D92D7143649BEAF418DBEF8F92A5D57EDD91C01EF974FB479776D43C0F3E9131953B499086BA5ED0BD837D9A8D58C499D4CB501D7A4A01B1CE76B3F2560785215D359116DF3E10BD7484124D27F6BF72CFDFDFBC3FF0B66FCEDC1D9FF798DE6FDC703F8B6DC6F0F9E3CF8BFB585C06FD0D11302CD3B4B88EE199B39A2D01CE609D4064AD3501B91C584517745C64C26DDD58F33B81097F090CD56A9BE110EB87DD146FFD34B5436107CA88BD686659D601BD0C69AACF52F9A6A12F7F818A88971B0A9267621D04C35CF6AE492A68ED7D74C1F14C3CB28B899FEB76DF2F7FF2ED64ED9719FB40FC9AEA1ADDB431DFE7D37BB67C26B4FC956304AB2D0E7D19CDF278E189F679B4D9EB2582B5431A3C3CFD6DF0A5BCCAEF63737D9DF5658BD4FEFD37CE0D464C57713FFF8AECCFACD1E339BE6E7ACC9ED98E8749B64F955765B24DDE6600B2C3FDD954D69875355DE64793AEE5CB6C7F2ACFE92D5D9574B466CBDCEFBA4B8DD83E1D0B7F4BB9D8A295ADAF3F22B901638388B3C3FDEDCE460C4075DA59556D64DBADA60851C1D35EF70CEDAD581FFA4C51C1EB059087DE54FCF5F18B535E4624573F13E2575FD57596DFE48EA3B3B7598AEF7ED8526A02EB776B006BC40910E1BD5EDF2B362C2CF7F956F9335186F758D6216AFF7E5FA5BB96F4E8B4DEBDDE1D5177C07AFD4DB0C0C678B76B25EA775FD16002FDDACCA7D318ED04DFAAFD665B0830859CC3BE4849FFFF1E0ACFEB3C8FEBD07099F813588B09768597386F4C3C0B92D7E9527D9F640C6F5C3D96583A147975575CCA1361E6A2DDB9DBDB1D0D021B72F49BE376167848CF7E56D56982003661CE628E9295C468E81F85F2963619741CF3EA42EC71F2199E5610AA68565DE21A16D841EFA021735F0F0EE1F6090B64598A0202E37316861204D97D547CD4EF37B07D255188ECC950D364D131F88C1FA2DE2DA93E533E783FB3B56F48B1E33CE2AFEACB807F62AABEFFA022059678930DC83A02FC19473BE00172786E5B7192D14BF322D7E650180A7C5ADC14AD19473960026969F6D7438E30A5AEFE5BED02F1DCB6CC5F89769BDDFA6E65530E49F571106189C0DBFFE5C977EC963C6798B94FDD9248325CA31E73CFD4FF61B03E561AE79D0C34FB518608F64304B9CF6560F38A168D4090F59E72DCD9E7C1E8AAED224379880FC0462C82CC9E74CDC9CD56FF3E4761E072BEB77C876B699AB16E8FD7B5AAC7482D1C38942ADADA9F5BCE8B197D95471B6B94ADB8953FD068A649DD540B1FDD5DA220C59678960BCAACD9A7BC75ECCD3D407CD3CDBA8C8F1227DB38E9997EEFFCF6AC0C9820BB7B1BBE7AAACDA91CDDB6C5AAAFC019C38EB1CC7625DB9EB1918C4051C2DA666B1C95B1D2DA66CB16E4FF661D8CB3882B111BE580BECAEEE40EF008F46B8ADFA4EEB03A97AD74D05DD46FEBEBC3D10AB45B1931C35ADD91CD9947B5EF43FBDE26A1EDA8D0FB89AB36887F816F6C258D97685DD1862B0C687E4B7BA23DA5AE4FB836CFBC61E37B7D049BD2EFFBEE08E8166FA59FEDBAD47473B77103E5CADAC3F06EF725A11007F2CD1DC51E24FC99AF3619DFD9CC96D7A0951CFD258E699F31DC4D389C74E80CB097F75D1404394814D15FDCCCBB46DF2E8680FEC6C2418E19D27EBBBAC309BF81DF31E48487D716265DD0C78D5534B8C2E5696189DDB51EDC0BCBCCE54480FF603F18151B81F1F1332C34547873321435EDFA43F1732E59E1BAA87EF47075DCC562FF1DC711CEB1F780CD74ACDE7D42E5967C5BCBE91C49B96DBE7016EEEDC071CB794A63BDD91FC36C5EAEACDE0B4AF915F3B10A71668EFB5DDBB38ECB55C8CDDFCE66BE7920F2BF78D1C3D899E276995656E8BB1749E09E9000FC495F8882A615B3ACE3FFF88F3CF1AA2A03CE6EDCBEF7B82D789CB396CD5A9678CC32CBD8ED3E0914F901CA7C119D3E053B33E7AFE03F2FC83938577FA47B0E268C9E98F3B04E647EEAB53E449E7B913DB9658B55A5DA6CDBE2AE68DB8606F6283D1B107585C0FC00228702A7F24C5260711C6EA741ED61156172B7556CAFD1219941D48AFE47C1C07B735774DFE805607A056F08583CB74575606FD29838595297AFE663025361FB167206638E8BCACF5F968C20AB1DE8100EB2ADB7CEA5E8E30DA2B30E69DB70F181AF74BB2CF9B79E8C658CCBC47C0E225A817F6268F6D70823DCBCC66DB39D845B7FD001B0E28941EBD883D2F121B9ADC4F5D4CA63B1C1C853E081EC9B1696B7D8F973365A1CE125ABBA590FDDA096522E3AA9B7D2D3B72273E5CD49BE1974ED64D763F72307B02E0A64AEB3BF87ACFFBEC26FD9C6DE74994E7E55FC05156D96D461D5211994E6DB9F5D3FE2BB09D83213A3228380E351D0E35A3D91BF7638D79D197C8BB2AFD9C6E7779BB05EA30A08E2A68B26116CD3DF3D8C0C46AB0F13C81262E1A821921E3C030E17A7E7230DDA7EEE18A03B11A2F700F15F59E6C362042B1F38845BB4FCB8E54F0C2FECACE7B22F0A1C775F329AD6AA383BD466DFD70A29CE19647F3EB07680ED6BA80A07D5114DB06A64DB2C393D3E64EE55395DE67E5BE1EDF82B4B07A8FBCE43C230CDC6EB3A699A95C5A6C4008386F078085BBD1DA27501BFCE520A38D56F8DDA3BA0C8D9CDA8178B408E6CE88D8C6DC8D8D0C6689F347528FC1E90C4CDABE4023D2AD24C0711775025F90B7F2A6DDD23C02D19D1FBD822DAF1045407156B7AE7E34ECACD9CF484EB647EA479C2FA2A27DF739E05D81D0053A9B0369B2829180AE0BAEEBECB648376FAA96A1214C48260EB0F2E3413883FD6C527D3FB07B4B23E86E2259C0EDD7407CACBE22688285C259B4239E2CE1C963459E6EBFA6107F70DA6377281D5A14BB8310DBFE7B9FD606A2D01C9C6E7AD464F7252D362637200FF9E6F9DCB337FD4C9D69948171B0D9975FEDDB9D13EC776ECD5E8E2F1B8BCF205BB9A50044261F6F069F3177DC6EFC1286899B830DE9E8E62C6E826CB3E2F8945ED1CA4054BBD7F8753B1D3273A703646465B23C8AA18232C43BAF7A20C076BD24DE3E8C75406320D7E6C2EF0F391A4DF594377C7FED30AC15C594EAD06CF5459872CEBBE629A96ED3C6EC9A0934EFCC352FBBAB43208C2BB75BD07D241659D6657E3FA3EF4419FC00D37FD11E858EE0D52FD6CACA000F07AB72E321EB4389A5A2F0DCC12FE5E8EBD4B0798DB96DB62D8B0F4046D04CB56FBF816F8E1FAFC039C8D676BC0247D6831DAFC059CA0C8C0F6F1B5DDCE7A51BF892545912E210E721DD3C1CC51C3060D457A69110635E17278726FE0702346BEB4A5E569801C2617F703807390235746845B3D92F24AB9BB7864C54B1B10E194580A077BFDA71D941DB751C88B98E7E23E82341D3DB05363C4F7F0AEA07F5641FCAE2537B0C14A0F3401A671C617477E2C47023299AD9CAECCD1C3C0364588B536D2F789DD59FBBD6326FDEE5705FBC8E765A6249F3DC707EFBC0CE764531BB1D453411CB91ACB3F190F938393DDBABF5EC2C3CF339EEC333F62418079BAE64646CC1998CA63777E42807BB2F52F58C1D3BBA76EDE0B89477804B799CE55A737928465662D5B92B7292278D4CB81DDF233A2EC52D62290EB6C8E34B74470F1ED4831FDFA43BF601C73E402C98D33EA0AC5A1F7B189EDFF5D2147A1FF5922F21DF7FFD2FE016847C9FEB5F1D4E1EA0B7C5B77B88E4CF663DBBA59FFEBDCB4005DA6005FE6CA06BFD9C816881B2A5CA8DEE1AB0835B868F6D54E9D45A2FD86519E2D25B6B6D9465267967D42ADDFE829FFFF1E0AC06A1C4BFF720E1333028D121FDF4FC85B5CD5669759F562050BCD8A7FB035AB8B7B69615DDDAD322D652AEB2CD93A76D1CFB71774063D379734C7DFDFD591B9F6AC138C41991B7174D9CD961F371AF7B5385163C9FBDCDAABA69317A38000D3F79829C6C301E94113C6C021D61EDD6F9FD0CE75CDA6B978FE0FA51C035AEC0BA85D6F38B9323A80E68BAF73CB9AD9B2A9B5EEC328A300B5809D335EF264C4EB75FCBBA9EC9E453B66EF6D52C65DEEEF39B2CCFDB5D1FB302E6EEC9B9391C86AB37E7DBE34B96FE3587CD702466A636671BFCE627133EAFA717D84CB28F7887ED779642F7F7B36A2629AE76C97A26DE0F6C925DAB2B7A71B13A7645F6BAA2AB26A99AB97BD44E8BCDA7329B3C85D13EB77D617E134C97D7EAC50B7B93F706B490FCCB7992E50715AE8738BAD21BF1BCDC182CE762998FED6879ED08A9C0036946AE573C5ACFF3727856E4406C16C8F50CCF80CDB8C16C6260F7D6A08EAF957BB40C5F28D102E4AFC47B3A07824BE2914293A308048379777BFFC0C3865F97FF268B8EBEABBB6C07671196A82823BA8AE3F50CE77D73A743527D3F2BFE0222C3ABB10EA3065B556A6B2BE4F1DD4F0FF543E3FF790F05037317D6CEB2BEAECAFDED5DF3DACE13BF53D0E2B62994EB6F07759774048FC604B882893325DC5F163E6F7743778D7FD22436DEE3FDB84B0B309284B89BC3E743FAD76C1E50B16E23E37CFBD878E60072FAD4DD5F00E071B52BB37C363FB87FFD2A9D37DD31A0694E588BB1B01AD9A2BBEA67C987715954F04D9E98581DCE544D74C7492CC7A727755DAE3328FB1097B4AF16ADE1977647D8F52A4FB22DD9419F161BB8B594221F44BB4AF39B4754DAF93E6FB2F61B900440F92109898F45B7A1F1C109F4416DEBAAD7C986360AD066C39368A8EBB648283C2613231597EABF5185018002E75AB4FB3B566551375502EA9E467356ACB35D9273EC42D02BE2BF5575E44CA6BC49417FD6AAC3555CA5D061E3205DF0C89FB0BDCC1EAF1E23A8D203DBFBF2362B960A36283C176C7DEA2182AD536D71606B15592AD6E061061ED4BAC443441A7D862346A0B5D1DC30AD8B5EE9E1026B4F1E3D7A4A55EDC4191505638B271C0A5630AD54CA23AE6C090F17E4A29B235CA2830B7191510C70192EB2E2A20521416B14FDECA5FB0A892D9E99A281157A95591054BD2BBFC29DC7ACE9D8A90E270AB40291AF5E90D45E374A94EF08371C8BB8810D758B2AA79851A8A06041EE19E5C205A5412B0CFB7E6090E1DA252C68883B65C3C1665AA9E5C306A1C160837E3F34D8F0EC121836F8AA7C10D88C4B63C0E7AC1BEA71630C373D05819AE1AB17CC8CE252D8EDBFBAC20FCB3A6ED03329A3E67A5AB9827B1D86C0E6B57610FE46BD0A3D7A9B71FD3C245816E168BC82C59F73D1004B78CFD29FD0B9A65F40D0AA277708E9052405183FBB1A367942CAA087E2B82912A82C65941D0A3C5EC7DC9A100A3FF41E800424B94D79F7E11CD1143F9AFA9A8B074B3F9D15F78075493D54714453FC681AEB2E1E3C3DE35C57738453FC701AAA2E363451D7D41CC1B410305D9C448725F29E8923969682A5553C58FAB98DE34E8B5BFE7CD1114CB18269A8BA78D044DFC376C451FC388AA96F7B01AF20059F2FF7E4A5F44728C50F25A4F6E2C1D42F83A3BC4CEBFD96BF747F8455ACB0C22B301E64BD3C06E10B44534CF1F7AFEC4BD68E308A1F467DCD4583A5A74F38D7661DC1143F9886AA8B084DA21B898E908A1F52E7A0E2E281D353F1156A4740C50F28A206E33844C4D3614E5D1EE02122DDF558CF878826F1E240D5E7A4BA4D9BE301B54338A046D66514087B5FDE5EF335995BB11E400614E08A03D39C404DBBF22D82ADD54A75B26AC8130FD6A239C91F0638810F682B6327B223FD103AC3B5BA47E0440C1CF4EEE42860B3D0C03C0CCAC285E7AA008B2442FF23CD372745927FAFB33AB8674285A14083271E926FC2345B86737AD7BF4B1714328310D4C456F7F15020326AB430682C68B41F02497E47F95A208A606C3FA26841614F0814F90D74B45014418473956DCE93F55D56A44BF24693D4E491F2F1F3017824449DA5F9249EE873EAF0807C9266CDFAF4499368F18CBAD80A98D6A1C3217DE8E199564D8718970D024685ADA5444F9120CCF3B49109C642475514CACECB4D76931D278EA29F389A2A2A1EF0C037315E7FFFB310F480B144E63160CDFFEE006D9821551A1467C3B353D7FD733A825BBCDCFAA741100A2F53C221F9A5512BA519CBA16EE2800A5BF6235222400AFA8A5C78A0BC8BF296B79018A22C12096EDE05BCEB0D1576D8A32675314695E80150ACB57C2CCDD91E353D3F610F5F3A7BD4A2724FDD1EB538A29E30B009DCA3A9EF508B29FC696113490474448DA8C8D87CCDF05B78973F46843D588625FC20FD1ADF64F1E12CE89DFF24D61636A91D1665FEA7B4753116C98C369CB48A662B24260D051B22F5907A425C35A5082AF896371A3E8B59D30D8F33DFABBAFA000BBEAC3B08B03A8DC23FD1E230518C261F8A8762E8B60C17C580D0227C542C58F3E9A50C4116A39B5A50A81E11D202ECE8D5C75AE8989D81B6A0FB5062C1CF727AC54876A3B023779E2E366BFC8788EB35411134C29F648D0B914BE943A3419EE7292F23C485EE4069A405DFC7191E3B8B99F58AB2F35CDA5ECEF078F3BF9B531F6AB16CE76460EDB4AACAEAAADC5782E56A8A10AD673AF107029FD884D141109134E4895220DD66BF6E16F67AFD243829C8F8F910DEB247F451292D9227ED51482DE169F29060F2F650B90194C2BE57DE15FF250196BF4C776505F1C454614E55BAEA1149E1F11E914E7505309D3A9FDB17525A2902AD973130D2AE9A72FDAD479A44157B15ED147E88460CA9B054375B9D8D00610585A8722A8552A24604C6C5B9BDD0B80BE1F67401178DDBBB4C9B7D55C00DF66245EC55B353F08DFA306442D21C3A3C5D2858C1DFA49ABABB43048DC1DD2DF34011263FAF1D1CD071225C2925B045719A88C0D941F8BA80B00BE7E9F4B0178DA31B6ED4FD50366927D5E774BBCB93A6BDCC6D4A1A3E0A161C18C4F8D2038BC00B2AF93A722524C91C2D4BC80CEC06B00245554A67891D337E810637592E87EE40C7C2C49876042CCFA2D163350A8C06DD538E0AC245D2E1ACF9635A2975CBC177906350390C07E61B68819D94965BEA658C036E4B59170B092EAF6B63DAB00ABF3A868ADC0E68F92ACCAD500FE02287B0549AF351816F94A98E5FE308ABFAD787C7F70F83865684303870A8C48309B148CD16126691D059D0F6EF1890E677F3B711C822D8FB4DA16C3111560410F31B6999202CC2684BA886AD0A3EDCC8CB040521A22F42CE68F0B7A45E3438DA3CF7A106388BA10B45C43E07416305789EEC3759730D68B3DB22DDBCA95A82C093A998685C2C1154073306E0AAA852385E8F11022D9609FB23C68C3116C38013F65549F57D3809B1B0932DB40244CC48271FC24917865EAA4383D0275E38905BC6F8331EB0791C831A432DF02874121C0AD27E5D22D446E1796043080E0A6E935ECB00DCE9F66B0AFDEB65FAEF7D5A870DD1486130D674E2A104649466CB88C328E82CE8144B0C48F37B86C50864111C6141E45EA7D9AEB9162B62AB8EDDE30E6AC393A94F74823B2324D8435FA79A4A99A4A0F16070999E2E18E282793A75ACC5E8E9AECEDEC09F61E66463004ED8604C033D534DC5039F2FA044C1534A7D325AABC3A71FC631B14C1411AC3AF1425E58FB364F6E435FDDDECA402E7076DF0EC5E70C0A2D63DC37C0A2FD9F70C67D24402B6FFAE8EB926CCFF8619B253C7006B982E366413B1BFCA3C7FB65EACAF8896007C380A0D0D7A61F7BA4C82E761D807199D6657E7F04461CC0986A2338303E27D56DDA2CE29A5FFF30F27BA5AF0E82A66A0B89A03F926293A7D575FF6F18D732144EC062FC7C400E8669674E693D6D0CF058CAF3544190E4F9392A1D08C5F00C1582A1058D8D4221C9EF0849134B110C92209C5B15637B80919089E908299A03EAD9980A2E66D68F09ABA5F47A91E12FC4F38C26C08BA173E4E16E413D657CE80BF064A321FE62ED5043CF424686A985F5A871CC5A7E49AA2C299AD69B89DC1859ADFE1C572F2029C0F8D9957BF2049F410F455714035416B4F72C147EFCEE37D38451043BCD70343185C7D1C4AA45F4F3A1A349A77EBDA3A9270F8926F8DA19BC743BEC24C320070990E9FB01853EA3528B99401861126DB8130840FE021E2DD0048E7846B8C01FC2AD661305F556A6DFCD668100C4B1501C301A850B0EA628FA2726340EAF675A58B774CDDB0511E71611EF48F2BE49441D449368E151147764E313309E639AC504348B8B667C8226481CB39020E643597C4AABBA0462078D63103930AED8F743896650A59611D0A03009BA4475C489A0B808969F50A05CA5D57DB616F74A280D36118C7EF7D233854316D74E71A00A112F0E582D67AD2A20A6BCAE5669432AFC72155CDE9F5EA6288B9BACDA06EAD4305930BE44CAA1746CB85A4A21D054419140A6FF71844CAC90412A281AC82C6636302CBEFCCE0B9A402BF8E4208EAC056D5C0D8B2CBF9B54F59115C1D65428F41F69BE89E29407250D0D193CF5A03A3C4CB5654C15D1F059C4698E3870E6F3048719C0829FDDE0E34BB863DBCD36F71F028C263BE183629310382EA82E2A4E8B0183BEE33513D8C517B3055DA589033B8B09DA2258B7A10104D7A65F7F5FC4F53671E02DC0AC8536D4905A0D8B3528483C234C4C1C1A3D44F241B92B5CB7050D3271082D67941901D6BC8F33F54116C740938DB1031B694604C850634D737C4635D8A4E0BAA8D1661C38F43DDE34825E14034E1C6DE1479C11E06739415C2C834E1C448B1B754680B900E34E7DB8453AF0847F9D5655595D95FB6A2D393E811252A728B0C41F0A806223C6074344D460583C6BD9834A68B5B96EBB0AFE280225C52A184FF002B9A1C85662AE3C53A213B8616A7B801AA5964A992D6130705D659B274FDB87813EEEC2CEADA182905BB191844309C530AD3466D25AF98282E5D9DBACAA9B56F2EB33D04303AED97F0242661287020D9A7448B041F4522A11ADA558A0B3A0F986D028F33BCF6000B008E6185AA97F86715E56DC46E197466928C0202987E49526B596E59426D82CCC278543987F8FA407AE481CD2F38B93E0113590818207FC7648AEA7554823840EEC705A582C6205DA3F7E7CAE35EB0027F80233829B257551DED1E3B95BD2C04F0C1DD28B8BD5D2100444A61004BF1D08825A5D1686A0CB7D112C9CF10B8740E18C2A2660450485C32FE74996F743A708AF9D4345A46033252CF9FA394C134547120764FA7FCFCB0D7F2515A541EB0FFB7EF050E25A2A124821F2C501AD903D54289004EAABB48012BEC37AF926AB7749B3BE8BB8C71A65A42084A42CBDCF9A545942A735C1E6325DA759A817DEC3A2239087D143CA543F4101F3EB6A5F37E536ADFA1BF182CF03930251E8A1090E094494762AE5C6315D4C4169B824E643C9780201DBFB8AD3E11B6089346FBD5B2C40145A31322012B28684E3EA2EDBB515D65EADD96E1010DFD88AD010D53C7DF785BC41724A92F1BBABDB35D9767286B1512195E210F1C2C1AA29D7DFAE9AA4D9D7D7AD30AB32CFD375B0DE729206870AFAFD60FA464429A52E11AF9E68207356D7FB235EE2C4CB50375180A5F57779469D7F21BA8A8E82EC28FAAF7E3AAC60A8E258280E3C8DC2C502A6A53C5E1A144F1E9F2F350054E8F74BC97346AB72932EFBB0194B23A15C2BC642CE820F9C31D5532937D091B353786609E469408EB41AFA6E2035DC08FE266992AF494D63B0CD7595363DFDC97E033C730BB22E058DB0C6A4ABF55DBA4D7E7FB8F95A0244245F732C231564E125B4D1C474E92F550A9ECC2A09A79094468585B45A240553BB7AF7216DBA637BB222D1E363AB3CC9B68C421934E26221915ED9EFCBDBAC9094DDD388CB86447A6577A70185457724E2925B1A79C1E84170AA48349155189A2E2907DD3B45958326B2CA41D3E5E5B00BE072566139C4072CC6431A87FD902C29047BC3872A064B65158411C88A42279FE8A2D054665128814251FDA08159509FC62BA64F9617720586E3250B59481AA7902159C3F3C2F962A1F3851432FF0B89148AC56FE363968B93F00AC6A91450DF6DB56682BE4BE261BE4B95D7DB79B2BE031D2EBBE2C6444ECD8DE90A366C87E009E861F9558751F02C881169142B29535EA0BC03E90939AD1A4F6695865328E8465C96C05490A0E1694990292213BDFF8B8B5194488456944E523E3DA6A04AA7495865D35432B34387789936FBAAE02099A4609A9C24522A160E2C2FD35D59B17C0283865F3446A654F897040C8D24856334FCC23132B98B1A1F4163B9A83191E3A2C6742525B99A89D4D1A93D1166260249BDA920065DAFEBB27E4EB7BB3C69588D4544CC8E3AF9F41A72294AA42E8BB614001D371933D6A72844658F441ACAB3914051C854D6C582A44C7981F2D2FABD328251324DC22C95A2D2D0F31CC0A0CA92BC1DD8B307565C5A99050872A939E02C56527D1784FC2C22B649683AF5F2614B6DBF8A2540C82432209412294EB75F533868819BA376AC1AA14958A5D354EA25FF7B9FD692927B1249C93D95A4E42F69B1610E8986045629439A84F7DB3CB9E560694A62F19F5215C359EEC09B241085B48A4370100AB6F2B183C92E851341768972F67F24C526E7CD808C899C42C674C5F098BA23971B235394A2409922968B332EF4B024181339858EE9F2508D5F0E9AC809D554CB19DEAC67F7A0582A47A3894065A0C16967481A7768A1D4D2068104CA88359196803DE04B1582A5B2CAC108244541700ABA7E229D551C41A252A064828641C32D586B8A86756721BB748571388B4E5E7E59812FEC52FB244E597DAAA484CBF4A64AEBBBCFE5B794351B8F27B34AC229A4A56D93EA1BB39C2E815D4297A638C12F99DC974DECAB4DEAB7B3C169051ACCC53EDDF3E6935102DE94324A23F7BFC825752C0F8C24737C3042A1501A7AEF14B33C948057224AA3502672B10CB348249D572242A25020BC2C8059144CE115021315D8C3A3C34CF63085C71E262AB09F8E7C31CB989279054D1492D2B003915461582AAB2C8C404131E4A8095333249DA71A42A25020BD299C592E4DC62B9EA654914236B065117125D01BCA623B9559054FA9BCF5A49140565493F483CCB3E22FE01AFE59964C1FC3246316CEA4944A81EC4C62148EA4B2CB440834A7B457EC66C4265399DA5EB11A16B21983BBE9E07A58BC4788D99B0F064A72B788600BEC6806461AB5EB847DAF2FB649017262A4923B8770C50D8C32EC2A901BA5A7F46B146CF70465943ED5BA51FAD8486E938ED0AF49D0B88FB2489738DB20E8E2F2F5AA2C6EB26A0BF784336CC2A5756F16D62626C844B83969A639FA1F4AE640690FD61CD3CE1DA935782F266047EDC86D445005FE06A120260083996B644B0EAD384EC01798DA1204A5E5EEF621F392B92CA9866D02622B8792F045646C4682A20A7619F95211DD7CC451917FDE8C77320F5591BFBBC9838AE3A6A7EB615B12AD2345235412DF1935A8C8DEF44419085B951ECDC35E7636AFCF9E1FBF36998731CC45F507557E25E2046E6AD0996AFD5E4C7883085B3794629680243DB18774C8C6DB1D3A573D614F41D339EB307CAA0D24BA4D919938A1EE04F10119E0A7B3E21E388FB262C68B22F20332C2B369AE52C10613F5C199A09D4E55B6007D27EA011860A56300EAFAC6251BE0E7D6BB9D16B7BC8E9C477D402678AE887FC675C04B56FB055C1C029F2FF78592FE58860332C42F03A82FD37ABFE50DBDC4790EC81C2F15BDE1CBC37284BF8E8B710ABAFFCAB91771C10678FA645AB2935B00A13E2413108B762A76C0B31C90319E526BA80AE6A0322DD720D83C31CA5932A58C905A5420FCACFAE7A4BA4D1B8DB9752AC3D267D889F38DD7387BB135287ACBEA7039205B392926AC7D9A16CCA2BE384792FB5D900A609AF19E5015C3B02F153D40B3A87B5782DA8783F5630E746FAC1C261C6A3F3861ED081E2D23DCE36B1495C08DF9629330A8DC9B6228940A5F98E7C367A82EEE725964AE3A5A6F2A8B1D028BCC952770ADF274D45F52CF6C4257354D5F5F30ACCDF12E269851DB2857416D23641605F75ADB94EF9E782B38FA91D89202413D3B4B3B4910C0237719050435C979B9C96E32E54000213FBC4880D216EEC27DFDFDCF42B1F5A0F42E47A2BE8D321C04BDEE6FEE65EFC9E050FAC1097953CC680EEE0D30334D31F1955862243C5043BC63EF62A168842E546B1F4B083587C915D56AA7E82DABC3E5C01A4B8AAE5DB2601655A78013FB6D0EFECDA28394403E229C51781B5085F47CA558B777418D44B7724564167960CAA1761997FA350776745A3E3DC523F7D3809887C647E3884F81DB308F6C4CC7A17635A8F36B8E41ACE9120DB5A93B26BDBF493CFA2A11CCC8822B41AC9848041911B90BCCC463128529407606D79381814D239E16106738CC26C577AB68313AEE18C9E750D518FB2E49ACC3A57719ED84368B7C228E4BFF63C43C0A9371FC0C2E67E3A2300C760DAEB27504CF5A204AF22EEC853ACA2EE10D6CAEE91259D9D9470EA5701D68D61148FA72DC213BEFDADBD9EA738F0A32E9C4AA9B9E18F4A1367553F135CA9ED13C44F41655C11B03EF66E6AE31482F5B36350B727BF435A3149E75C4D99CA9C9E0C5B8491BE125BA1CDB86C95490C4A1778B24FF6619AF40BF6694C1B38D2893331519BCA86BE0114EFCBBDD67214869114140EE740D8179CD39695D372651078F208F4FECF83113FFA276EC09EFE9DE74DA6ABA2C447132FFEAF73E62965FE5CEE5C8BEE49EE22BB9AEDE8989C7EBE18DAC3BE4969B81B8CD1ED39D73457DD4E6144FCA7228DD0F6559D7E95386B16D0A4D2C05468F37B30887241C4A37839210EAB7DD18CE5E6C048ADEB23A5C0E6447277BC1C2C02CC4631112DFC1A7F6E03F380F647496913D7A61C134E2F95311B9ABE9D3E02611FB113EB5235FE2DB1CA48FA08A50F02B641E47EA85F43184CA9276C4A776D68C8299033B607C0DC8B3DB22DDBCA95A0299718479FD8673CCCB9529F3896F4DB66948E5009897ED87301FF528926CA25E92C3DD843DFF31A8DEF7499F77B2661E416F27A077D5DF0535CBF88C95B26158399C9B867ABE8B340EFF392E7DF390AF5D895D9180DABD07E2BDF00519495FEDB2601AF17CBE88DCD5747E4093C057D9AEE9328486E16472A4208F13F6321DC989FDDA9C055329A38722F7809E4026397B037F72824721BD577F13C63CC31B810A96E949F9CAE08F144215D84F100635C1BBEE853FE92E5D82C83D16DEE12F160E8335E67384E66A4F8F36F2B51E69F8C2928F464269790F42065053BA9B96A472358EF6A3AE74872C49752870BE4CEB32BF97298E501D8AE2DD6553BCFD870C2AD1B07BE61D196ED5ED9F4ABD1E9F4C65AA4B5279A967E209D84177DEE3AEB3D4971C99A0C884829B1F95F0ACB2D88933081DFA711FAAB35EE5553B50C4CFE4A529885E29C600267B72D89ED9540E1971F3386A3E719A49E1E0912097C32617A1B9D40E230972FD00CDB17F7E5BF0A6084A215444EB2E8677D4F3E44336DE83E0B3D4134FB7B0095D4DB4F8577DE42B537D2014AACE129EFF907B08D58797DEA5DD3183D04B9B275FB21FACC07DA27E9E19F88D1B23B1DABA3DAB087F08664B18847CF1116688F0C8D76854574378107833B5B7A9BAF4F2498ACCE1C0DA8FCA9286ECA8153B574BA9F17A6BB9AED4FD50169FD2AA2E014B71B36513BA6FB948B9180FECBB55338823740EE5211A42F284288F5410A7CD7C4A34800984213A87D2558CEE477D38A2537D399A4FECBE416065635C8814CB2691BC1ECD273E649388A21E2EADABD0279419C453615C5A5713609ECDA07E25BF88DC5323E1DE3ACB4875601ED1DCB280DAC5AC724CE6A0661375AC4366F632C119A329653EC8F7BDE03198451CD40BE97F0C8F24B991489CC16947EEDF301AD7770AE93D21877F09112BD98589A4DD99C73B3C2333896A97A6963B509F16853965DD9AF79BF622318D42D716F0B6BD488CA4D2BDF9BF712F26E3482EDD53C9269902B772EB5E08939D6D5258422BC1758B78A61B6750F1D540893105F004812106C2B6242E972971B611AEB2CD93A7ED5EFA8F3B494CC4A174EF6BD082C9095624C18A299EC1D7DD5B9ED767C04564499EFD4764102EBD1FB34CC5538641936C9B46DC6DF3895D75D9BE4DF133F4475971AB06121EB91F8C8CA5537641522C9B450E1026AD4B7CF833C3F38B13B927C589FC20019449290FBF59535B3462A4685C0C13BDA929813741E512D86ED57D71B1525097A072A92E288A52177EB3A6EEE5BEE0B7DB89C04F9B75ABEE2FE74996F74E98A7314623AC59AD1D3F286B4AC329C1AE9AFDBF60A8CCBB5F9B4DCB5703E38868817D8FCD0C428413547E60EECB042F87DB9F4488C789EC427EE44D698AA45856B53FBA2E884698B47E6ADE9F417E5DEDEBA6DCA655BF31491EA40972F8310E290065239AC08DA9A8CBBD140D46E6134DB9195F2D168BD95677D94EE576281EA950A9B9EF380C2552F9C7EFF34DD0DE2B7DD524CDBE869782F70F69725B9880DC43F39A4AC74D827EB76E92F69E73557B8CB487680CE145586C4231BC8DDFFA08A1BAE094148752A8FC8C63527ED427D70256202C565A9F50CBE8638582258990DB8A11FA0B4CF7EA71C76B55164D92156935A6BD7A7CB5BE4BB749FF01FCD99455729BB6638BBC865F5F3D06C17A936DD3EEAF3729BCE27260F10AF02C52788BDBC474A0392B6ECA4F55B94B2BA8072AD1403224F795799E36C926699293AAC96E92750392D7695DC320FD4B92EFD3FE869EB3E2E3BED9ED1BA072BAFD9A633B125F3D1697FFEA3125F3AB8FBBF6AFDA860A40CC0CA8907E2C5EEFB37C33CAFD36C96BA2D2782CDAEAFD670ABE7775D9807FD3DBEF23A70F65A1C8A837DF9B749716EDFACE70D77DFDB1B84AEE5313D980BF7F9FDE26EBF65AF5FB6CD33A7F1E137945E0667FF5264B6EAB645BF73CA6FCE04F80E1CDF6EFFFF1FF03C601A83FE7290800, N'6.1.0-30225')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201801301628250_AddClientDicionaryx02', N'AuthorizationServer.Api.Migrations.Configuration', 0x1F8B0800000000000400EDBDD972DCC8D226783F66F30E325DCDB49DD6522AA95465AA6EA352D429EA17259154A9E78E066582247E21813C0092553A6DF36473D18FD4AF3081C016FB86D8904A2BB35212E1E1E1EEF18587C7FEBFFFBFFFF5EABFFFBDCD1FDCA7559D95C5EF0F9F3E7AF2F0415AACCB4D56DCFEFE70DFDCFCD7970FFFFB7FFB3FFF8F57A79BEDDF0FBE0C74CF5A3A90B3A87F7F78D734BBDF1E3FAED777E936A91F6DB37555D6E54DF3685D6E1F279BF2F14F4F9EFCFAF8E9D3C72960F110F07AF0E0D5E5BE68B26D0AFF007FAECA629DEE9A7D929F979B34AFFBEF20E50A727DF021D9A6F52E59A7BF3F3CD937776595FD3B698024576905647F74B2CB1E9D1537555237D57EDDECABF4E183933C4B807457697EF3F0415214650373FCF6679D5E355559DC5EEDC08724FFFC7D9702BA9B24AFD35EA7DF267255F59EFCD4AAF778CA38B05AEFEBA6DC6A327CFAACB7D76332BB91D51F8EF604163D05966FBEB75A43ABB606DD64A0CA81F26461BFADF2AA2504563C7BF368556EB765F108D61061ED47038F7F3C2029FF31820660ABFDEF1F0F56FBBCCDF47B91EE9B2A01149FF65FF36CFD1FE9F7CFE5B7B4F8BDD8E7392A32101AA4611FC0A74F55B94BABE6FB657AD32BB2CA810CCDD9E6E183C778EEC764F6313395B357B7A900FE1F3E384FFE7E9F16B7CD1D40FC4F0F1FBCCDFE4E37C3871E307F1619682D200FB005F8F303903DF99AA763FA6361C1AF933A7DF1F355BAAED24650F8CB272E0A6FFF2F28F4E9130BA5BE7A3CE14D88C255526DDEA479069AF3772D2402A536008580E811CA2328124D3038A1EFAC685AB4517645CC71D59455FACFB448ABA449379F92A649ABA2E59142BBCA6AFE5DF9F57395ACBFA595BC5431A737E92EA99A2DD67ACC387D4EAADBB4B1C80FD82ABFD827BD4166B3FA23CD6D48F43F80D74CE7DA1C423CDDBCFE2E74594F7F7AA9D480154BFB580C65BD01A0FB9C6DF53D0EE8E76FB26AEB49F2B1340B929FD5C095ECF214B4B681D7EBB2CCD3A4D06675093AECEA9B407BF0D344FB0FC97D760BDD03DFEA0F1F5CA639A4A9EFB25D171D616EF31A237E5B95DBCB3227DC334A737D55EEAB3676F85C4A08BBF6AD2E358272B9D41831476A84462C354AA82FF5E0BF54849E68B9320F243291473A5D89A7BE402E314ACB917822114B8CD0E94A4CF61472B9E91C1CE94942B10E14354B13E508E864B703B107D4038C51AA59E138CE6AC1B1D08CCE41D32DBFCDAABAF11112D345BF4F42957C9E6D36792A29DBB03F22471BD9FA5BE1A3A0ABFDCD4DF6B7F362DEA7F7693EC602DF1B7DE3BF2BB3A20D486607279FB326776FD7D36D92E557D96D9174132C8E8BFB745736A5FB52AAF226CBD34FD9DA8F525D7167F597ACCEBE7AA8B4D6FDBF4F8ADB7D729B7E4BBFBB0749D1E2F6BCFC0AB404BD90A7F23EDEDCE4599176DDA66BF7023AE37DEDBC98B31A841936861B67358875FE9D1673F9C0E62F50FBA7E72F6C399971D83057E64F495DFF55569B3F92FACE3D30D2F5BE02211D00C8D63DF0817B2CD20FFBED570F9047CAB256359FFF2ADF26EBA6ACBA163C9BDFFB72FDADDC37A7C5A6ED46FF6CD674AFAAC8C08A3827EB755AD76F0198D3CDAADC17E3ECAED9944FEBD924519A6AFB9395CC9F46C8936C5B33075BC478E37A209D46596C0A6A78C521D31D21BE2F6FB3424DD481942F6A472115B527D315B565A626694FC917141248E5ECA8668D548769E6961FAC21D158F57C5C993AA9771FD2E6D190FB51C7F76D05780227FDED11C5F61F0F94334F03DA9F5407B4CF9E7EBD79F6F2F98B64F3ECC5CFE9B3E78738D1DF9A32C4601A565F5BA8F3BE0996F425C9F7B68B326A0DD009D86F0D906DFCAD018A093EDF679B362A792CCF3110FF474A4199493FE059B7CD1192F96E0E989ABE0BF7E3038C9A4BDB17D96F2D2DD7F81B0B1BCA4CD2562113D487F2FE83BC91200E9DF7D798537F5F96DFF6BBFAD1947DC1F3E8EE430D0793C8CA358CAE4B996D1D99381C2B59BC7164EEBE8C7605EDE3AE9ECBE6ACB8072297D5F7B98C3E01A83600AD56F85C9CD861B3B261E5D3E276F6FE9EF90AC17535809BCB7D614BA9CBB4DE6FD3D9AACD36F27992E51690F326AB7749B3BE9B2DCEC97E33DBC4D07BA655BBB1365BCFB631A8F76EBE7CF66EAE93CF63E7024C9E9BECE0F904BAF12C99D6ECCC27D4F3E4763E176B1B8A5655DA3A730BBB9C407797DD6466AC441B4C98F35BC80E1048324D6CE129D48C16916CB0E16558C3914A3510F264EBD22512F644BA72826CB7E993A77D7F291396A4664A8C1389C42628CD64FF69ECA4D5A447E905F24F64720D105A331D9E0DF1819A0A08B94083914AAEC0443A47FE8B131DF15B6AA9F41727AAC203CA59B2AFB4645FA9C8BE52967D6528FBCF43B0A2263C422E907EA4928B3F919AC9FF5C1532CF256879AE0294E7C6187981C4976A02E3390492A3847215306A335D7EC1035C3575A84C028D085AB952640633BD5EAA36E19792D6FB52A5E1BE346EB3BFF601BD9AB013B540E281482EF6486924FBD327C328424978949C2FFD4425151F213594FF1C449A1508CFDBA364EC2DBD7499441E912618A9823A38BD994E4F89D1949A56742E815E24B15C332AC7ACA56018B91B4FB91DE7DAC463672F1B73FB728413F6967648659BABB4DDF33377360030228F6C9A3172751687DA1A069B5A5B8A0DD5419F6C8395B5C999B31AB0B234BB62E7C4DE5559B563A6B7D9B4C5F6706757C4B319DC690CF1FCC59C898B09ED5CA1301A5C2C248929189AAE2DDAD47AF8A2A134846853125B3424DD4434E8D38482F514B45830812B54976A2052E7AF45220D1494485D024FA43E756EF03120DB605D77CC7D8C42225DD6C59C84410D23F98F751C6B1DA3DED6A48EA7FCC73A8EB88EFB8ECBB08661EE63FD0A87183606565E069C5777203A5F01728F772008E218247AA24219328D8A66288259010D124E9935942EF7B1A144EA08D1DB03DE97B736EE39026C8ED52D9EE4B074D5116AF5D9F34E49719BB66EC6029BCFE5DCD91B6B87FAAC1D5AED275DFC5C13646D8267B9D71BBD49EB7595EDBA1B061D77FFAFCBBF2FA8F93DE54388D83571927B5F806FBCC633B0AF7D21E984B7BE50C4BAB32A3AD731C1C2E43732116472F967DCCB34364D35E1276A81E803915CF091D2E135476D41F29B8E702AA9E492FB8EB44288F62ABA9322C9BFD799DED4171143A07C8E41849720A29D74DCE5D9EC85AB81CFEA74A8C0D9DBA1FB8597F9F71CC22B0E4FABAAACBA46315732C8EFF577D0C9CC361B887500EE57659E8381D28F1AA60CEB505EC476B2E825EF8350D7C6EF84D8544C5FCE2135D97CDCB65B35C1276A81DC03915CEC91D241E74916C4E93D39644AB29BDE1738E15D4D7A945E20FD4426971EA1D5951EF17E6AE2631904F22374720550E2D96B761DA48D770DC1FCC778C54BBC62EF3EE6AB6C739EACEFB262763C10D7E4C9C589B5833C203A39B5C8EC626591D9B93D3517123519461F6327CB8C3AE854D6060992C4F22DC46309EC1B7119C97C21DDDD3C3C16C18E2618C97C2967440F93DF124B89D231A49C92F95222347397914651CCD691FAECC74ED64BD7E866D5D5D43B202864FB0726016B659441357BEEEBACAEF749B14E7597CFC673808F082E478C4BD6BC065B5998B2B214940E12D9D8046DF19990814B2B5E6A6936AEDDA09E1576CCE5654D0ACEACA11B519C95D599D9EC026DE1FAD2602FEE701BF11ED778067CB8CDA3630EB7B9C4FAEB4B7D1DA8C93F510B841F88E4928F94BA626B595DC5E2CAD636B634EA87B4C426F7968BE894C537DA75AE30B38796C59FD863534985B7B92C368162765C700C0AC41D7944BD2EC6CA46D78B31B4D1FFDA7AF7CBD23364071C0EB46A191E69B3D09DCAFB52C58ED4472F2AED42D5FA4FF3CE93772D10C69DB818884C138BC6BB1C48FDAA52ACBB36984941191CBB948837E542EF6C634B0DC6E858E5C73D35D016AF93E3969AC35A1CFA01B7D460AE8DBFA78643C6ECAA79B4D677D5E005F1B6D5B0A914249FB3B18670399A2AA019559499E835D4423239985FA0CAE4CC30F0E8D41471B879082F8BBF7B8847A7A080E3FD437861820D445C42051D645B88A44A20FD9F8E265836A93A08B5AA4E68162B7BA3D0463D6F97D4C4E9188B2E2A161D22C77F966534FBBAAD45B3E3F1131B9359ABD333E051B224CFFE6D67D3944576AD7E97296852C5DC4949E868ECB03A46D84E236C0A51C025FC91149B1CF47DABD3F90045D8B5B7656AB29BB9A90D890485DBDB5874DC7D4F4C62AB43004649AC3180804C457857DBEBD94509B6C431091535701427330A6307CA4242151D24A1B2723046C78E0613C02493631416EB2430BCC4A3EB60676C2DC3B91C6B5B141A405B0126EB6F97E9AEAC2C4C44768B2DF4E1724D461F776901C007459B196AE5656DC849F00C2F6137F6581847E235231732149611D32361698E79BB39686967B44784CFB1450ACABACA36FD14C2ECAB52A0DDBF24C09076DA767B91AB9B5DD2E418D7E61E123BBC600C31DBA9756DF5307CA38F333E2482055E16757B8C7CA49F1592733CAD388FC19196BEA12B6A856610A933D129E881105BE82C3093CFE82C103EC7CEC24B6711A34B71B2C4AAD4EC305F2068766C3A4EB3E310CF3D64360A6776C8ACCF7E6C66E26666E7A5038BEF067809C4825C122AB91D1E6D67EC4BE2D914ACB3712C32BB57C613855037C7B3D26592F2EF91D7ECAE35FBE89B0A04C1159002F880478BBF0DD8DF4BEC57E9BA6A6B6A7613B2EB229E3E79E2A2D493DD0E542E4453D7307B01DAD640A4D5FACCD74D763FF2345DBF0110AAD2FA0EA2EF7D76D3871473BCF1499E977F8148A5CA6E33D1E58DAA36974DB2752D48CF0E26133F73676107260BF6130B9C84B57960F84799D0951E39C5F0CC3F71CA27138DC6E79F37D598909E4A94CF47F369A5EAD89D8D1EAEF1FC503669C7FA73BADDE5F0E0B1C1C887CFEEE8AA0465A1669B7FABD5C46B30BEBD13632CEECC36C147C2359BC7D44434B3522D4637BFFE0D441D13F0F9063EC266A6FE985D4BF33E9789D243566B0EC39AAB383A89C8B71050989D51E13D8F635DFB981AF3329F75B2D980815FED7EDEAC412E447156CAAADC174DF5DD43394593AC9B4F00F3D65F263072E7E6A35282CBB1698BE2B3FE2D715BCFADD88C1DED9D1598EE9858A740BC99DC3E55E97D56EEEBE9B10B1BB2F5DCE60AF771BBCD9A66B68A69B1812D7FDEAC82A5978AE1CBF0C3FBA3F358114FB21B32551A904823F176008D6760C7DE249D30DAA688B5C7138447505383CA245085A095AB4366B0BCEB9B2C8FBDE59B4F2555C0D6D54B385866F78DC78ED147CC4B0C34E6B2FB23A9A781EE3C5FE8F3292A9F47A1405B2BEA041ECF34BBB370B1DD8FF86811D62D300F15B12984FE6DD6DDD97A3357AA73555AB3534AF351E65B03F07E9BB539804D2196D9D20601BAD736EB530836C77EC547BF62F392DF1654A34AB317DE237A34622127704D1D3A1918B39D3A978A76327C52DB3137591227E8E693C9859FF71481C8A9532318A663E752C945B7E5E0914EE31C54640506E3309AB1307AC0F81D5DBEA739B193BACE6E8B74F3A66A59FAF36A8BF5A0B8C1A4311A86EA6B32333B6A13E511C671C28C765F8BE5172B1D0870C8353413F7221AE12A1CD325D5F76943B0C9CA1FC5E6E8BD2401ABA5EDECDDF5851B47E70B8D379BD380E06D3A175332BA7521B9ADC6000385CEA6F39AC3C8E8D8207C8CE03A2E811A8428BAA501C18B704594A2E6C022B7D41CFAA9350BDD03C2E9D8207C34088B5D0D527796588568A72894852D15A1BCC672B11A2B8758D05E79394C86D56A3D3156A2AC33E610AB2AE4EC5C18BF3C812B65926AA862C1999E6EBFA6D02670BFC4CE74B680647374A262DFF7C9CE296FC4ECFFDAA7757C578C7C498B4D397BD61A60A9DFCEE3631AE46ADF9E6A4B2B2F3B18DF97CD873DA8C5CAFD252C761E06CAB6E9C79BD159CC5C6E6D1F02AABE79EC66C906C3F4E5A433BBA6734DDE5C4A4CF973790ECB578F5005B2AF401090C975905C8020947E6ADD8AE2A31944F24F740A0A20C4BA1A745E4E4DF881562077472217B9A7B3D5FFF7D09EDBFF4336C7FEDF4BFFFFB1DA807E0AEB3F7A46122FDEDEA4F5BA5D869A7D0C14B2B2B4A1D5E90284E16C3AE59C9993E87C2A51332649DDF9FDBE2792F97D924C2EBCAD8B6F06B768308BD3653D7A1C4159214F70BDCD935BE319BA21F3B17623AD5DFC81C859EFF9752C8E351D694DBF2BBFB6AD71C6E3296DF663F57AD9E737F8CDD94F0AC33EDDC68B763E77A08301120018080B124FC5D5657EEF77E38CD7173B62DF11C411DBCA432343E5FADAB9DFFB49EE4B207822EBED068242775031C56B02E926225AB8218D2BDB4860FF490FC89FFB8E0791CA15D0E98B1DB004EE331D442A57C4196FD74DEE4A28224A468B38A57245444874459CBA1DA18828192DE294CA15112199FBC65CF77C90DE08160F8F7A0EC708C94B8464EB4DB9BED63C7490AE164BA2EC87B9AE616C676CBFD0275F8F64985F2052597E8124B1FD64D6C097F35416992C12D1E1D3584811ECAE942690486AE554F4A0F127807D8B0F7A12EC8E1E78511EF8F8AAA7EA58E6F8AA674C0B52CEFBDDE85FF59CF96E26E1B6C58F677289B9CF1FF273387946932C4EF496268F565917D7AF6A32CA133CADC9A7D651C8F1239B6489E29736F9D4CA2AD97A7313F0FF925459A2F93E001E27F51C8EA19138A0B1B02DDED2D610C0A9AF337B77F00205794DA42FEB1A9260CD014961411F4DB6BCFF01E1CEDEF9C0241009396797DB581F0AB28E943C59C79F4259879F739F2432711FC8934447DF11646597E1131C3DFFA3D315C1E8DCFCC24F84C3114F6EFB2268671B8BC86FD25D52355B0BA7C6BA573BAD6C648F71AF21026EEE6086266075020C2A83485F2A24DDDBA34942C14CFAFB119152C1104AB678238150C8896AFEABF7C67BE0C6DC478717EFD628584933FBB463FDFE701D1ADC3D6FB157EB2F73FE41FA497127A9D043CEBAD172C0805844948E21E394CC1712A1B1DD89F37A7061F7EDB0EF1677DC0ABDB6AD2EFB0350A07D1F01DAC76CD60C6171F4EC7EE6BCECDD0461C77982AAF732B0F7B9B9F6ACFEDC39CDF90B886FD23CB5C0E8B82536C6553AC4FDB1FB692601E5D8D95496D778D042D8EB3A6C0AA1B433B668CA6E83418BE1DC01C321114A3CF3BE17D15C3C560C73329E4D2196D7D2E143B8F266743336D2DD634C8E1DBE972D44F6066231DD647D363E3734EEFEB1D2D7F62CB73B2BBDEE78E6DB4B57389666A1331CADEAA7131F4AB3DBF74E3A30FD2DE68DAE31EAC9E5728928AFCBA7347C094251708C9A27384224111CA5B43CE0270B628DFA793452A9E78CFF45DB75F072D89B74783412A16D6DF9855CDBCD817337FB528C8E7DF4A2B6F972B649D91AE8CFDF5F0B679E4EABAAACBA966165BAFAF5771B876FCFEAEE3EE63C4FD70B1B701FB7C5AA0EB82907C71E760BC8D82E9D436B75132C5D106BFB2B9F4A41F2395B5ED9874EB4F4A072ABA8456E0955D792CCE92270200BE6050F1C3A356D1CEDEAA5CB62CFFB88E8141498310784B87F450DB01C22151042051D50EAF9A11CE4662596C3381D83B9633067F1D8D531963BC672C16339CCC10982390E1DDBB5F388ED87737849DC788E4DA622BCBF888E5DAE2CA453CAA5A3A88FA08E2A9917D5F10815157219D7E18509023B1EA18A0EAE433BBC34516CC7A554514316DD49F5407A492D65B07C728D107265B5D03C7323D7B2828196C1FEDD21F331448D74FB2EB05295D677D0C09A5B786F2A80B30A8C4A409D3D42F92CB8B267C451BAFBB5F65FFF335D3782829F3F71512EF98491B782DBAB4ED3CD9FCD7A76007CFAF72E0360B3C10AFCD9C0A1C4E70CF4C8A2DA506D854201349A6577DF9181CBEDB22EB80D1EB6C31D646C7B6F51FD9E67EBAAACCB9BE6D149BDFB90368F868C8F3A966F2BC0EEAFB2FAF608E5F88F07CAF9263CFCA48A87674FBFDE3C7BF9FC45B279F6E2E7F4D9F343F6CF128CFCF4FC859552B9F1E59F35A81D665089D6F7754F36C590742A15323248E69D924EABFBB402E39A8B7DBA17825A34AF897339FAAF08B65647BBDD39E4AE609DCB039E3C6DE72B3FEE8C27FB511EC726216E12B31F80EBB0D53AC445CD07B799CEECB0F9B83778D7CC709A1785367B82974D4175671CB2B9177F3C79F636ABEAA6653CA7F54E5C8EEDD7CB321D722F9F971512A43CAB8B24981EDC1634C1EB9AC880B7231E1DB33571892D4FBA1365B127DCB94432D16DEDC26CD9FE0CA7592180CC5DC1C8E4E8090ED2138CC70B02F881115B6237C0216336251EAD03273015C5F7012C1A89DC363DC0F38B93396D1F643FB6FA456DD3394F6E6BE02976E9ECC16F016DD0BA9C798C4EB75FCBBAB6C0E85306176DE6B279BBCF6FB23CEF4E7ACC1CD7F72FC5CFE4D2BF6F6FC93E5FB2F4AFB9ACC6EB03E76B76B6C15F3B35E5F53A2BE6B218DB066CB3B395BBBF9F5D634971B54BD616DAC642F684CD187483AE883FDEC61299DD2B4E6175EBD4C09EB55F8A4CE3CA366767942C4EE9F97322143C5524A0B5A8E4C5C56A4E5402B21FA3122F51C9559354CDFC33D6A7C5E653994DFD89E149ED7DE1C5BF81725A8F66D1BB29B4518069411BC553996D9420D17E62AC35AE50BA9E82160C267065EA5267BB8C5FCE932C9F399331F0383A0FB74B12BD995BCB1E1D502C0E88DBB68756415E2C47A6315B3846A0BD3178C2895C3A8C9823254223961625B4EB29C72298EE124F15CB68C171623633D89485E43FFACC487766B59879F926AB7749B3BE9BD33B8E4C8E55EDB67BBC4CD769E6EBF1E9A1302B2F2B7F289BC974DA531646BDD3884A56F7842532BD294EA1FFEEEE50530AF2A1C43C31271A89B408E1ECD0F9D715F40969D55F1637C74990BC8EBE4250D670B34EDB6CDE97B79676FA1CF01C1F892EFE841F9F92D9B004E486B7610D95AAAE0B9551A21141AFA6179969BEF3380776AAB2243FD96F32E3E7C8684E47C761541F2B00B26EADC8EC61A721FFD1FCA2490760A77E4D6EAECF76B3E15974A5EBB49AC8764C0302AE315ACC17B14858EE874937CFE374159854DFCF8ABF00C7EE8160A3273A58AC8EA81794D51AA8F6B241DFCE4DED70E7EF0D0C947706FB7F59DAA3138DCEB43F01F552B415E6BCA4D755B9BFBD6B5E7F775E123AF609340DD294EB6F6D9BDFEB9D5A401DC6C8E1E82724BD23711AD7706EDFFCBD53D63E93BA066E65FEBD3FF07D1FE0469201D3F3D87DDCA5056808105C334389F42F0B5CA07ADDA1661B761A6EE7B5C06B1A2E5CEDCA2CB7C011DE287195CE5DF619D0E56BE88DDE15B5DCC13EAE053B1A9D3CEE35458F44A47C323A2A15D0EA8EF4D17A57927F22E60B3FD048251F090D9E7518F6254A644628D9028F044269272ACB2F2C1385309E586653C8A4B5F2C832795DCDCA74918DC5E8188008CAB27DD39FE731BAD2154C2C50082F6152CA40350CB55C7AED64BF455AC9C96E072009B56BBF82D8FCAC7E9B27B7F56845F3CB7B48DEF61A0DA8DA4D5AE5DF01145060E1157C9EB6DB9A8725ACE43EB9820F7A3D7CF025C9F7E0D3130A12588E0F40F0FB14BECB00719FE463CEA7B4A93BA3A21F4FEABA5C67507BDAD6ED69E0EB559E64DB9A90FAB4D83CE8EA9E4D3E41A4AB83168C0425681DC08859FB0D00A01597F4291F8BEEE0FC831318CFB55D69BD4E367423019A6D34E51BC088C837388E960C529112FE17AA60E0ED40D80ACD0EAA00602AC98A86768D59B1CE7649AE643122B7A26B6D8D309643A6BC49C1E8A1554EC9242A020CC7C46921C6B2881A9259EAD56304897A007D5FDE66853A403BF27801DACB270128A4F20450DC6201008A9B6471006D9552C727A48E179E9D78127476F73B79012766AE00D8C4EC113D34DB2121F371285EF5F332B0008AD2CA6B5FA10C06CA248DE0C9A3474FEDE04C269407A8C96CAF2202F1E45978D0A10F7B290182F9C89765D0B19E070B0E3A8650BE41C7B0BD8A08C40B8131806E7C954D110FF40B6DD62147BDED8614813E23E7B09BB70152520DFF1825EB4A0DA2E803A24110DA6E256DCF6B76AB8D3CD060542C34C20DADEA20C4F931A03789141DF298B27BC01BB30E54CA1D33050519FA50B40816CCD7A267018DF5AE34C2117BC13A46B031E4F70437465DA8948C640B0B396457981020ACAD61F320C7D84486420EDDAE1625E468F97D418EAE0B25C8E1DB1C83400E59614CD74D5971314712B24087AC67AA438F62CCC65E2F5E74C8E389EF017ABC2A5173776D8EE09EAE438BCC2B114BE0B3BD1CBE58AE02E0F03863CAEED1BF6175A0EADDC66D6A214126716C18953D902DD2993165F70732033736640A09B2E1CA8F1628025420641C988D978F68A10DE5CB1E9546093486D87E90C6A807C51169242093CF7B50C4AE00B7D4C910AE0ADE21B8D0A991F126A426B94DA7F70A145083E770024CA288C5A293AD875F88B2AB4B45863E4B3C28FD693C6BA28ED3298F43A422852C1CABB42621D04A579A921443A67810FB6CBC3F5E194B631687789DCA58385C294542A095AA311521863CB161F5E24417AA1727CE910A8A3808A04E7A84C3E9545DCA30BD38890EA52B6D94AEDCA3747520285D4580D2953E4A57F1A0F4E736763E2D6E85B3969C2C0E713A95B170A0528A84402A5563AA83AA364F3C587DAED3E53F77DADB3F5F7E47FF3C6C1FFF5CAF7B8FA9677F019FF0029F2FF7853A20D15C0E918915B37088B27409815556D5A9C881648B07BDBF0C8EFD32ADF75BE1D61F61468718264B5A388C39EA844032A70E75E2812E673C787EA933C47AE97474F572F903AB9761C7542FF58653318DA47E1D9EAD5086CB90C32122C722160E4B528F10D824AB4B45863E4B34287DFA64BC3F5E15435316773845CA5836506945022095AE311521863C116115BF90581D4C583E97A8C50B5A3A7499DA04C12FB30295FC2DC8110F809F92D7F12B238BCCE910C454510B87314F9F1040E655A3D2780BCF1AC7215D04733C8071E89D1DD2458A602397D348C24357A28607C04AEA4A458229571C08ED8CA77B989CCCE50CAD54414B3E58CE53C6377279B5A7220799370A14B7EF79607053C11699498661F83289198CA9A21828163597B870CCD3C6338C79F5A73A393BE48B07C19A771711795CE337C24B8C38728500E2615C650455195F96528606FDC2941B08524F5345014052AA10F0236B40097CE8AB6951404F73B88467710CBEC31837B1350980D8458F9EFE48F3CD4991E4DFEBAC56F497EC2C3CCCA2D4BAA0E59414DA658AC5F28440712D2CC369B6938BA08E1A05E0D1A49C895148A5392D4A720E0930BE387EA63139565E18A014668118B4D621B5DCD91E810A3E71B8E4EB033B0D14024106AD75242E37E613A8E013898B8DF2AEB2CD79B2BECB8A54C52B32A939F770F5849A177131D82FCC370A95F08049611D2DCD3F2238923A314471DBFE1161CDBE4E8903F6F06814A8E0D33FD275A352FA942B9E51F08823E5A1E96404C763E0B120CE4E0D16FCC32354AA4688213359678ABD39CC13155655A61939797CE075A151A7822A8150BBCC2894D2E4BCDC643799DE64E394C7397291A2A29A6EA4E50A0143BA2254A49872C50343F80EE2EBEF7F163AFD3D92C93910D1B216364E52D125047A19D5A72206922D287E8747D0AFFB778F05F7CEB2C979981D2875F1CA2821B4CFE48BE409707CAB2BCDA40F99E200DA080C25148C3F5CC16CFC110DCA48897C838C34B952F97D9E3820F64E70AF3149E80C58EF1674BB314F70DFD07BB79C1B8E51B9872D975AAE8DCC2403A2C13E1D6E519C7DB63CCCC705509E369EC1CAAB3FA52E19C9170F82B522402C876BEC46170A32A50A01C0E50784AD1ADA8ED393D38C2E3864091500768B0F115125842F97893279021FEF7D334CFEE87B6C96360191ABFBF4199A2F1A042B2ED8B0B33846EFB2576BC49A04C0EDA2D76AE064A7E6C6704E1E1E6A31725DDCF2CA0ADDEB4BE4F20443494D28459CC137F3D28A28EDCC6067F100C2E56ECE10EB1104B38BDC9E3108B03AD5F09CA24CA26D6E13BDC986376669319C7B1009E601892AB5B10CF7C9D044EA3F0579BC4071992E54419130C83D1427AA71868299CB1776173A7A525226188297398662E8A2B0E34D98CB0B8A23D9F7A6245918482E7AEF1B3BC846D0A33FDC414CE36F8C85142A0815F8AD22BCD3D5D12DE8088CAE5F9D3062CA1D17EE5526617999FCE07CA1C1848A2EA1F0BCCC5082564571EF3C2F9307FC461246A80816048C071444A8EEA0E7E6F200C7856FA2972A1304C30BDF46CF50E6B4AACA8AA58A1C5C48565F78468B64809AD26829D066E8150EDF8C7A5506399237E4ED0F40BACD7E0D4F68B74A0AF7CEB0C939F73FF4949AF73FB0F8B38FDC8FD246875CB11A1ED02AAE271501906CB18033CF24379350C4CE80D971E7C0B293337650622AF88724563FAA808499C24505B0F82F09A8D7CB7457565091014BDCCE599089190990F45A9180A830365A396D213C5C5574F1D1EF2BD49F227CFB5C81F17BD594EB6FBD2A34D8C4C812E6E5A319C9A68F667199AC632FB216140BB69534F30671A5BA559186CA1C11E0951D363B9307882FDD618B750982E6853BECCBB4D957053C1A44414D8C2B414E3E92C74CFA381695C775D48296130BA615F4F2066C853A5577D248E6189CB4FAA15B7E1E898B36C235BBA0E59DB8952BE3D73F2FFFBC2DA18BA67FE667748BE28372CE72B50280FA305CF3F08AC587B2493BA93EA7DB5D9E34EDC5B253D2F0918B764D3E2CF0F359E834045D41986B810CC5A36B1A868A7A6829865850918C953FE6B60334B8C9F259CDA66711B4C50C32081ACBA0E912DB09A15E1C4D84A877DDD61145AB5038FBC42697A1DD14DF919C74128BE4197F4B3DDD84E960E270755DAC31E80ECD8D46E2386DB8CA3E6B1C2096AF80B3C99D0177A9EBE062257CC374A16BE1A80EED881743940A7CC84C32986A4E79088B920CEBE2862C4F1BCFC0E5D5DF7242D1ACDE25CDFA6E7C545B211CE56661A297A0D6822FBFA4A0A1A9542C1F2894D6C2424254520F856347823CCE21B8DC33470AAA84C0ED624F1C519A28C4A6DC2CCE71BBD83855AA4808D01E4ABC4A224C3990A40CE2366E258B63C5AE92D612019415B50A11C372EA53298E25F246836E9548829BC531A2171C4648350980DFE506118822E72014AF00CF93FD266BAE016D765BA49B37554BA084601103199EB1BCA6C8160A10CB6A828A909E21AC52712A22E1392304B5DE6217276F00284732F1A02E5F50002F762A02F6A049F57D3A2AA8701A549C8D3DB02373E80DED84E52DED94A89A3A5E06792AF5A83AD00B7D6A14D1068E39DBAF4A3314A26C12308F390CE1CC2A7169B3152ACAF805B3A01E17326B31EA729556F7D9F0C6C1F45B01CD9C9C6240A34518219A572A0BD4FCB26282B54423AFC896D4A912B8A76CB1C15B2BF2E0E4F409EF830841241A8583F7210422A442AA9108339F67682F3B18116A1314D40B0C474EB75F53D8AC2ED37FEDD35A6552839F850563925A07C1829242CE5CC8C5F28042792D2C639E82D243E13CBF208F73082EF730BF822A2170BBD8A3FC8826EB34DB35D714CE1440C5CE294131CC6488624E810C2CCB9A4D548816ABE517D7E23A559185CC1B0FC6F5BC3399C739AE0FC23BF3540981E2C3F1CE57676FE04FD1FAB328937BEC22654512DE72050B0245BA2E94B038658B078C5F40898227DC39F4CE21D817C3405F2F70FC6E135721044EF1BA5291A0CB11F2E1A2B77972ABF670214EC979A0A825D27C9588E01BF82522B6341ED0C4B5F03246F383F8EDFF84B3FD24A165208D6C19381A658BCE99F1A4F7883BB23E548A1EF204479DDAA38104A965E42D772F2C5F038FF85BECDED74101B527FF0852CB188CE4291EBE381E01B5D8677706052ED3BACCEF950035915A0614C2380640D1E27804146D6495C2A75CC101D5994CF878134D6A195008E3853DCEC4D7C02306E97A51297CCA1512837F24C52607DD7BFFAF08830429078303233D1892BC03FB358E387E30C5B1B34AE17D961800A5F2D43D49EB04528B7DD29EA7805F142EF5097B447E8551284DED0A8BCB1D8EF295F08EC8C50E4A61B36895465F75569AE915E7143D4D4F6432799F9E5F6E0C6FD44BA5F3834FB51A5ACCCC31531D955E5D98D1335017DBF92B691310D74B0D0B78CA28C40892ACFE91BDDC504251A3B0F83EAC20436D265C92D533C6E3993957142F2060973CB3FE25A9B2A468DA4627022742C601624FA1893D942FDB9746E9441962FBC11FA31E149D630C2053D833CBA47602B9E5EE90152AE117878BDD158BEB3020490D36E34F37A81C7EB251C9611F1B2A0925BCA392A8234554F6B942A2F27F247577F999D2D4144DCD41E540A8094B06FFC0E1205F223F18E35B7C31D34BA30A92A00FA57304AB85C57D2CB93DC36E5991DF2836FC21DB084B533B82DDC49F01BE49D4A82148E9E01988541DA9943F660A0E4A8DFE55AD7335C16264DD6AD03E75E91DEA35B2594B5AEF13AD754821AC97B7A38CA7824F1CD275A352FA942B3C1255E23A59506784BD2586738162B92506721A519C5A086704B2A5076F4123B7A5866D1FCAE2535AD565DB6AE4911B939A05448450078B6CFE214338A1441EF025B4F8320239540585255B36B9239045B21C2B16C933CC16BBEC8A2AA172DF2D87DE11D4967CA3AD440FCF005DF0EDB5981AF2555B36B92B802E76E156AC856F742E75E9166EBF991EC82C8B9BACDA0ABB6A6E0E164231621D8CF24B09D9654BA5F2003BA9FD9502C4295B24D0EB7F68400FC9E1107A6829F1408F219577E831ECAF36B737668B067AD2B9665E06A7C05BEAD4B34C8F00485DE82434AE86C2F67E5E0687385DEE067E991EDE71BAD8CDFA508D3FD27CA371165090878B56945C1BB19CB28277EA62B97C81505C13CB9874A41579273BE7C7CFE20184EF1679AA4FAE4710CC92F5A6E83AC39EE4E3AB411E43D2471579B2C61F9EC99205F0969CB68A19ED1C2D83829F53E73A6D81601157D3508A7F3999FC348025C7C2125D4221FB50626285755051260FF88D64655445B020605CEC2A29AD0ADC85F2FABBF0C23E612E0F70444B5BE21C984C9920186654A18A1C48B6B0288682E8CE33703271318CD16B8398575A709F2A11CC171E25B5B1A0C9065C13B5D906761E2F505CF08483589130C85DEE94035B0FAD390725165E517D70D30E5A6A866D028736F14069A934F3C0CBE5AB192C79F241A64C307C2F78FA01D74575FE8197CB0B8A639A829049160692CB9E84C075519E85E066F302CAA54F4448B50983E4C39A8A807F9D565559B17451001892D71FAAD14279470051A516037086620151CEA85B65A8237983E1FDAC650F6ABCD5F2BAED7AF9A3439A94856694CA29A8848231103F50B5042CE1E84666045BBE953CA0946F0995C2DB5CC18078956D9E3C6D1F46FDB85399FD6593B3008952EA38564E09218357B1481EF025B6BAC6FC6E6BA7A0507BF636ABEAA655E5FA0CC41B806BF66F29E0789978B09BE87581C72D2934FC64827902A1AC2694C44033C602468519296E0EA7305CEE2C945411FF985DECEC53ABC7CF3016CE8A5B0DCFC9C9C343EC48AE0B585E39A1DDA6442E4F0894D4C2B29CE6A48CA2CF64657008C0653B4C911EDED1BA6877F9FCE244713C8351F2900988743189F30DED0A99D2788214D3C21AC396C02EAF155FBA178524B40CA4656E35E149EF11778BDC548208AFD2C5E2A4F691B7E00E95AD815FFC2DB7137D71B152C5204ECAC320A0D2C520C1788118646BE00983EC7A5918062FF78524881BA92C23AFE3193A78A324F1081ECCAA2AE5C20C4121F3CB7992E5FD0846881A9490079C8146173D18EFA55C3CCC13DC13DE58F5A1E8AAE2005CFFEF79B9E1EF57E065700640B40C06105199E306244311DFC064D4978A0848B638802AEF51715267E08CA383658BE31B5C0BEC6A5FBEC9EA5DD2ACEFA47D2D46C983D348A48B279CFB92BA5BA6E49E90C7AC932574B893E097E93ACDEEA593BCAC0C0E41881412DAB58984F20E33DAF84A6E6ECC151474BFAEF675536ED3AABF0559717D819F8D074032872E0E05258646A35C344F9894D78A8A20712C5050BA0C57E07D28BBA7E8B4C04264F60652B25CE6C9005CAF283B7455C542019D53BF2AE2105943827E7597EDBADBEBC1EFA4DA085F29E0D073A03D906A229A5902FB16F851E018012CD2C30F664575A52201922D1C449B72FDEDAA499A7D7DDD0AB32AF33C5D4BA2057E1E265427722DA80A4A091A1EC8E5F2013F791D28050678D668607856D77B2D0C0E191C02702C2226F4914205801E697A55DC0DF9A2005DEB8BF32C155C06CFA47604B7893FA763EE448DAF5B16E9E0199A541DA976C930532CA0FC925459A28ECA9EDC1D2C8702D8B81CA48D1D988416FE9149D4932234FB5CC1B0499E4B5DB5CB4BCA07A09572B390CBCAA80361B58217790C5A4B350F30D7AA631579021D853E850765419E06E448AB5E1824CA7BF3B54D4CFF068059C3898BA428CA0626FD0622C0555EB538AA7F7FD8547BBA49B4CCAFD26660BBDF802E679D02BFDC25A181659FC68037CEA48DA8A6673D283E78B2845777D29B210C19E54AF8A087AA5779926D594C29222DB6EFCBDBAC90B185445A6C5B34CBB876C7C4254CA74B4258ECD02B44248CA66D6E2C46E8DE4239230E0795AC4300C1CA3FA449B8208F33B21861AF63CA584D33284C56E81496022B18F9F118F521B79CCD15184C97CC5A1A13B55A33402F8B1941A2C412BFA497C91227510044BB039D07886EBBBFDC64E7C9FA0EF8598ECDFA54250DDB416502FCA5C0680889164B193FB983E909797045D3952423AE85614A47D02856287A4922B7665122095FB21B67B1A5A32D99096093BC4C9B7D55F0EA1B2751640983F5CB7457564C6453448A6CBF24207A94B14588545A4EFF9228A7E58CCFB82AC9C7174AC76EC29A182814FACD6909A7CBFA39DDEEF2A46142874FAD55906A11DACC413DDC64EC888220D19297636A6AF95183A58C9F9C59BF8742108BD2241A029E03BB835170DE06C69C988A43AC203A1CB425D57751504153E93086E06CBF4A588F741ACC2581159350CAFE74FB35855114DCDDB2639A9CA4D161FAAF7D5ACB98421A29D32F6008C88EBBBA142983B77972CB33DE90A6DCC97303659240DE23B76573FAE1364985C51F49B1C9B943873E55393AA0EE51E6860814A5BC847E928BC3759C6194778D0246E854A55C221898707C2D92AC1604F10036262A4B241247CA0479C69CC5077B635EC20AD6B1C0DD13E92ADC24E314068D0A5759B8CC2292F32D2BF085CDAD4F92F0B84C6FAAB4BEFB5C7E4B99331968BA02B36D527D63B36953E40C24331F4AB31E6D079356003C17FB74CF1DE54F142ACD19B9A68DD59E9164055ED36D3B3C76E8B5480A0CC7EB2878FC903B4314D83DBF38E13182E7A31558BCB858F158C043860A2C861DFF3C3ED3A90A0933E45C098B1776B44741AE71A32E4F30646BB4023B72EB198F2BBD955085B93460A5A99426ABFACD47BCE9AA7173988C5537690DA2C2B3E22F80F67F9625BB4D30E81498236B8E0C9648AAE604C28A0325F65A11C11C99F44766E1F1C9EDEB61C21A21664F830F94E4AAC4B400C5CE302E758DBA8E33EFD40A8794D7B07A85F062CDBE93AB50B8250CAC34CCBFCBADD453AA6BD665B063A59E97C44A8332D6ADD477AA72237584EA7A417A3B26EA58492CD42B32DB40E8E4F5F5AA2C6EB26A0BF77B316CC4A5E5EBC6CBC2B29468654C8D29C3664CF3CFB553FF43C94E28ADA24A48167B764299FAB3D3B4AA2635D348AAACD090C3A691469E0C1B614B88B32DD59EA043D6EA68FBE0047C0D303A962DBAA1A5C006380786E6FC354533BDB1792FB6E62889587284D2587B9407437F7C42CF8E09D025518E0978271568F1196714B44DC03885809A005BE19D6D02645360BF104BDB80A2E12B4092B2AC802E2C0B6C41B1621B635C5CB686867E81878F05C6B658662DE21B624D70806F7955B2A1B9E27C00E00452B1F955AFAAB8BF1A1FEE5782F37A4CCD510AA1E0082147F769BF8AD8042827762F605F7B61FF47D3A9CA2FEC0D0DECE1AD6F1C2FDE6A92DB14994B13DA872056520ACF63C9520453DFE6FAE9ACB807CEA9AC9871B9885C43BB299755A3216C7D9BEDD93425AA60B5895A43BB3193559B4D5CC398AC9D0156B61820D656EDE2C481BD00D340E65AE9986B6560AE950B73ADBC9BEBE7D6819E16B7BCA88847ADA1DB98C9AAC526AEBE4DF65CB12D3ED76B86CF2DB7C0E7011ADF0BB882063E5FEE0B251B6119349443F359B51AC6D8B7F97E19307D99D6FB2D6FB42ECEA3A12B91D5AA1D49DEBE4DF952B10778A9E7FC5F5AF6FB2F03B8FC5FC7255C05FB8CC41A4A0D79AC5A6A64EAD95C4F9F4C0BCB727B21D4EABA4D996C5A0CE1EADD64C4D2B68ADDF02C3A6A6239ED5A1067EDDB8C4FA9CD070A86A43269E84BE6B56A4C8AB9637362CB2D9334D2F5218454712D0755D5D6FA10C2936D275E25CCB554579AC67A1A95415143329F3DDB519C9DAFB01107B3AE71B9C506A4E8D5B424B3C9CCD76D66553421C59C6141E1F1520B2654DF2140926BE8A8BE4F40DF7EFEB70BC062C79B1F55ACC6BE2652AC177547A4358B5177417AB0977ACF4050ABEBA5DE3F689BCC773781EEC096438D432D568F9D896739D1967055D60ED1F66E78E349682B069530B022883961DA704C571CA491BC7C18431C5DB0C814541047129AF6F0BC3DA72B54EC8A58640A9A889D8FA6597CBA9BE914B8042F6C42E1B60B9A9EB38D633AA52EDEC7C160E80F37E87979016E103285AA46949A8F1B84197BC703CFCE36BAA9410AA55E6A24D6E84926356DF7512367CE58995905966C26898A78E47ADA49E2A259960B17189D979BEC26538E8C10720D0DA75CF6AD87F0761C8A63C5C2931CAFBFFF59283656945E433B249B7DD3A1CCBDCC3B0C878BAFFB4B5DD91BDC389462C5E80C3C7B2117A6488CC5E0E918626389D3AD2D12FB8C848AAA8C3FEC5967FCE1CB38EFD8DB03291A45F9DFB1B7081A5AE39DD36D82C40D41D7E8DF329B50F46A1A91D964B6529A18E032E7CCDE712BC2860D559D114EACA1A0AA4BD2379D6FC7D416AA833703AC39C3996F3F8596C93BD120A4D7578D77D6C18ADD788720888BC3ACDB501EE073A8D5559487F7C6D6F31DDD633744C8E73D79E4620539B978C613DE5AA1CCDC71B3C58B958DC439D43A9AC9C6E273ACE66B343EF09A2ED1519B3E66D2CB676758D944733EFCBB7DD4D97B986546CA15E14E44AEA59C0879F34D17107B6AD3D2EC0CBA3A2A4C55CFB2A1B75E8351BC7856489C414B4FF1CCD07C3BFA9B1D62FB5F54729D8E04C967E2F6110B38EC5C9052044D5D70BF9A254B4BA2432EBDA6CE920871A645030689F239602EBD8E92F259E039260CD5D2152682F919741454980A9E633FEF93C18CE2B1EB95956DC97DDD434563D6E31EB6ADCA7AC703298371FBB48D15E9FE7665D99D0A1C4AE11232230367517ABA005ABC28CDE2E8E5BE05B460EE5D034C3A657DB8370F18DAC7CF3D04D47DDFD7E88DDD8CC629A21734194136668364DC552E6A9122F66C13F2AAC4D886C855ECD78C5BD479A6146793A92CCCCD372C7EB7BCD4B0E2525873F9D2EAB3626615A872E875545681EA0C8BFA87EAF814C135E315019E21459964EA0AF2F24D8ABEA92035A8A8042E404595360FA04A8B76027225FC282DD9916F22A84133C8821D51BC3A340579D4B55507A6993583C192FF2E05F6BCF9F49E046D665D167CAB6872625582F0550E4185E816CD1C1E31DFE9F05145E3D31C46B533E49E659D9E89E73A194A1554C7F4B289D59A10AF717028D57415AF6B106FA128DACFCF620656A226380DE1A80B400D93450032E1909443A9A89D70586A68317F4353E20521CC49CB6C45D1AB69476693D94D1A0408994B3A182B36245E3992B8343EB540456E26A6F524CF2EA9B276E9E1C852C56B0F22720DD5C42B0FF3CCE673DD812A5CECDFF8D41AFA89FDDC2CD305747794DC0A2E8FCCA3E19928CD6DBB3EB20096FB933DCA36DFAC92C6CCA756D754D294E718D16B4B46CAC6AF1D01E4D96D916EDE542D81CC8EC2BC6AAA8B58C86C4C3E7DA2686D61919EE26B5C06E5D1082F9B89E2CAE3142B66F6D4BF936F27CA16CF243944DD892823BBB7623CFF28ECB08425B85F5C633D1729EBF38539947465649458137DF352CD9EAC329C0701ACE731654F06C833A9E8CBC92B36ABE87100CD72DC3F3DC09141B5EDF332692BADEA01E61A37901F2065507004EC2C260A2BB8020B66F5E30CC8C767C51180809AAF223F13CB868C177305E613F076D8BB53A58A178945E41AAA89978867DACDE70231F98AF235FD02B2D0889C4C4ADAB2F34A0C3ABC07AD66504E110CB34AEBCC867195B149916B68AB8C4D135306C5E6D5D91BF893330815D2EBE8386573614184BB1FBFD8953BBC47AE60B79E5443A92E87036BF58C19861A5F5EB77152A27DD25C7AC48920E26B41D1724E41F46FAC8BCF3E109CDC9E5B82854DCFCEF3CD30D2C8651F48671B6164C4B0C19066D30ED2634724955C05E90123756B783E4B04CB941E2022A9E46A488F0AA95BC4CF5981A1B4CBB42EF37B992D102AB90213F16C5B20AC3CD8A22B8277588241255760229E6D0B84958F2BD1FE488A4D0E5A65FF2FC7222495500D829863913E556A14929B5B800CA5488EC052644A2A488EBCEA5AC4E31957A4487127C32054D545DCD51818C7FBE155F82891EE29747E26A19EE2BCA283AC4426A5D3ACFC823C9C4C270B57399ECECDA3AFABCA41751B36F57D649D51BEC2B975412E2395154EB05B326E7077A076A05D904B5F6DB5A3ED360CEC2D9CFD925459523482F759510AA1220821C73C3D85D4242827A7EFB30E0589E7E6D8844A1A88E7E30C4CE2730E0E2FB6FF2937D040A8AACFF8D39681869F6C03F1189A19089EF495BE7CC02614EA43D3730C34104A2DC4E0E8D6B78C05F29D0B46A2263DDFBDE85BC2B983194B823F04136B0C423515467A6B469938F24EB65B9C6C83FCD41A8F56CB516B366A46F1DB60E4EF1350640A2A48DF27D0B187E77BE6BB42254E44D183C8DC87A205FC380E35AFA1E532D4FC85A215FC798A0F65F10934B3B2B5BBD059B009F9BA30E959A64108C5D6617374E838D002C583220EA59A2EE2C18F9179FC8C72D01225BBEB78A46AEA4876D21999C8EFAE39AC64E1988843A9A89470546466278FE32238589FCE29899F8AE313F315E3E661990B2316DA8BCFD661EBC30BED7FA8190B2556D50AC963D358285B8FC61205825C5A759D4421A1B9A5FCC58678C9E219572EADAA62E2D9555373F99C498525ABBFA1272297A8A7FE8A1E452EB79DFF77F4E862458B26026A1DCD440B2573ADE66B71845F323549AE634732B389EAE48CBB432B9345098C2E593BB05505323FA9FFBC96289B23DB06F49BE26196905E4749F1906BAE09FD8CBEE87225D7AB8A33E82828B95E75AEFDBC5EAF0A8BD7780842482FD152E329089A5E6EC4008F4130CA95F6E0DACF410872B9319DD75E9C5DB46A37AE96DB487BD58EDC8AA9C377E53A57A58B33E81A40D69BCF35B0DFFE5CE7BE7471062D3D15BAF45976F4D8A96B5D9A2EC9A1A5A34ABF3ECB88A17B76959BD355B2E92B2DB93BDD926903DC9E7EB6496101AD60D77D33A08DCAA0E26B4713B34CD6A68AADC4E0C37A92ADA76A09983CCD2E4B7FF2B43D71F57127092739947CA5D8193857A68F94423B71583A74736D89CFDE6655DDB4C55E9F017F902579F66F9195B8F462C578D978169BE8E546E3F2F6673A719CC22756564C1C9FCCB098CFC0A42DFA67E834B3E2560D6E3C72B17E9C5C3CD38DE472CBF1383B86DA54AC1C694C5A55ADE4383332966F943DBF38913B7C9C48AC0A46CB330D20921B05E7E418376D61A299008A462EBB68CCAF65045FC37BA43C49CB21A8945490B4161D6B786D212F2E560A1621A8C46AE0C43C8B002AB9450856DE2C72B92FF8FE6222900B0FE9669BA0E3E2D847FC729E6479EFA479AA633462B951529E01061AB915306EEE76246245F5FF9E971BDEF3536C5A454D902C16ED837265D80949B66E2F61A321A814B511361F03EB7869482F872B5F452D0927128B8FD1F2AC3112C9CD81F373DB9AA6B2FA1B6104811893565595298B550B216C1DC3E6D7D5BE6ECA6D5AF59B1DE581AB2087583D7E469EEDC81C72130ACAF06D48E2C661657392F93415262F3A76675AB224C92DFCAC633266B65EDD653B951B2779A4423D593938461C48A5B663F2F4F05C63FBFCD1559334FB1ABE41B52AF33C5DF31BB7805CA01E3F17D36C13B9D86A02B62E5B32516CFB2C97AABD465A75AD862C362D35F2F46426E1CDA46C42356584B7909A58C7DF85A344A982D3BD1C4A658504E77B0D4DE4ED802FB912B56A470F2AAB736A19F90A2BE567599495516C5BB5A22C2FD3BD7ADC315A95459364455A8D69AF1E5FADEFD26DD27F78F51890ACD35DB34FF2767096D743C279B2DBB5839C2967FFE5C1D52E5903C556FFF5EAE183BFB77951FFFEF0AE6976BF3D7E5C43D6F5A36DB6AECABABC691EADCBEDE364533EFEE9C9935F1F3F7DFA78DBF178BCC656FE5E11D28E25356595DCA6442A281A480A9710DE244DF235A9411DAD365B8AEC64B7CBB33534CF9BAFEDF7F46FA25DBD1AED3D14D901B3BD423F856F31D215DB6668FBE72147FB7BC8D5DC9555F6EFBE422A10F73C3AD9658FCE8A9B0A5466B55F37FB2A7D343027794F267E0BB46ED7BFA101520413FCAC20F3D53AC993EA5355EED2AAF9FE007D09F26C032C54E6FB6D417E2591CBE7F41AD8F9C5CF57E9BA6A818A72C353D439B6FFC739755F680EAF1E139621ABE531552F4453212B5A09066D672A78FF65361244FC15D020CECEB33A89053D144CF39E241F3C459DE3B4DD83E488A7A873EC9C299F2F2B5D837BD924F9C53E81F54030C6933479B6BB5F19FCBACF9ABC60E7C160D67FD7A99DF164165D3D589201CF8F0587639BA0CE0F396A47393A3CC98027292396A0CEEFAC5E95DB5D9E82F10BD1FCD004757E97A0A3ADBEE1AC866FD1F84FDE169FF95DE8D4B3B76598F4A4320E6EDC278C5AE87E0FF9ACCEEB7DC262357D55E7749E6D36794AF342BF6B74EBD9FA5B4177EDE357754E57FB9B9BEC6F9CCFF04DC34EE97D9A1346EA3EE9747B59F126215DEAF455C33D674D4E7AE6EE933A8FD36D92E557D96D91B4AD016746A6A973FD74573625CEACFFA4C1A37BD9F553B6A62523D3B4B99ED55FB23AFB4A9A8F4E55E7DCB6FDF74971BB07C38C6F29D19D53891A3554244092F3F22B100CB81AA28AC8445DBE1F6F6E7230C4818E8BC1194BD6686DFD4401D6DA3893077C2E6735E8C559DDDCF85987D7DBAAFC775A90AC86AF9A2D86D150B4798CDD3F831992A681EDA4AEFF2AABCD1F497D47E01A4BD1A8C774BDAFDA7EAE49B604F288242DDF50A41FF6DBAF24E2B004237E1C8BB22934FCEC5FE5DB640D7AFDAE4D90913595AAD19F94EB6FE5BE392D36ADEFFFB359137D0B9D6CC09B213399A6CEF564BD4EEBFA2D8068BA5995FB8218BF3392F53C281D394C5FA30946D11DDEAB3CC9B64E2253AA1483D85481879BE8B42D90E4307CD3183AB522772B72F89CD3F85993D79724DFB398F5DFA344D8FBF2362B9C230C963213611C1E7C0F05C8C1B7FB6C43F6054492567C07F3FC0719816109AE701C015ABA13278EC1D21632132B6C166EDD495B26C965F8164D65A267D61C5423FFFA21850A146576D38FD0F14064B100BA7BD74175F1B72C2B549728B3B3397DC664BE66A7DF1D1CA3E65FA7CF1AC3BEE21E18A6ACA8D95C2C41A77BE98E8190ECD0EF9ADC2E4E98CCBACFBABC566C5E2BFD1A382D6E298F8B7E57E7462BA8AB1B9CD30438BADC17242B22495FC7CBB4DE6FA95E814ED5D097AA045DFBF77B7D4936C8678D15927E1B28B5E4827CD790EC64BFA1C4EABF69D81EDFFC47199F4ED6F240DD4C13C30F4D091A83FF93CFC478BFFDA033F1F409749959424C19219FB526B1F2E4969AC282DFC2AD1FF5BB62A9D5ADE9B306BEFA4B114866E8F798BA7E577DBE5967EFB197A7E3B2F1A3361F464B1D3E6B4C55669BABB49D8623B961095AFCD81B5EB00457ABACFC09D9F116614A2E3C494FD37EA3304B5724299C173EAB41468E234553347A69E6B60B931D175765D5867E6F337235094B38FAD32999EF4FFB4522374E95CD5CCDB5F2F2FEA0A35EEC367307B525B8D25DA1BE84B97FD41A438F83B8A831FE9918951A13E5FE816BAC3F44E0A8BE980728146B8B93D74D5D71223B83B04EBDD6B9B200EB362B78A21A1366FA1C13823A1BB94250C7DD0C41BCBC3F686B477760C3D38D0E6A8C2863E63E71260767034ECB5BC5514558937F689AC6202F296ED3B755B925C679D3674D5E9F4B06A7CF5AFBE8DA591DE6B6182C21CCAEACF140355505684298A1D312B682BF49EB7595EDDA564F6E7F4712340EE6947F5F9043E2E15B549E12BB0CDC91A71495A1E82AC52C96E22B872BAC587339C3777D6ED385CB3CBE3885FED40E7D0A064F51E7481EA0242566A56B72EF2EB165329E92B4BC3E7AD09DF2FC78E26178ECE946656A890A4B39E0E9B3EEA63947D367AC6BF51467CFD85997E200ED9F2B04E39FF3647D9715AC29772465E9A1E7C50977AD114BD2726CA7FCF5CB53439E172BBE9C2B439EE77CDDCFCD748FC1F9869BCAE89B85ABB98C9EBDD9640637B31B1767DF212D627EA4BD8D2629D6A9CBF911A40CC3A05FC8C10D1ED06259B319685AC88E749083B5D64CA6696CD171708C7EC8D35D80C41E450C69FA5CDB85FFAC60731DD2F4ADCAB3A8EE1C051C16D0D3ED58829E74E9863EF18A7E8FD2CB38773133FDCB92F6F43ABBE942D44E990486FC592D9649A0C9DFDAED1A36EFFD88DFA1B452B03718D1A9D13817B4877373440729C0E4788E30FB0FBC2E87BFA3E4A8571016A2D83548782C65BE65A913CEAF134EA408138ED3CDC7E966358E8B9A6E16BE0A6A6DDE995F8AC60CB488C98FE91B0707F5CFB2E4B8AE2E25E4E29B6DEF3AAEB5D32212497AB3D2C8335AF4BC3496A837332DE04B24AAF36DF5BB4C410B2B48A6788A66AFC26649241DBDBF4DEFCF470EF0087F24C526071DFAEA947168024D34E47BB112F06D13A3E9ADE82B901D7456B26BA315BA2A398B1F751C06371C775EC4D9FC3F5E86C9204CC6C1D1FC3F2C16DEBD7E99EECA8A734B3341A03FE5426D0EC312D4F97DDCA505302394076788A7E858A0ACD91CF194C8F08CD488434423A518635AC8C30DAAAFB20DF8B201AA3036492029BAEDE44BB2CF1B513B2108D4F9B747FD684F3A7DD5087A394B4FE613D9A2397213AEB0A7A21CC2F455E7686CEB2E2956C8E7657A9603D87641B507875E0A29C5D84B09792CC54B2D01C38B9AAA9A2AC2D5E6A19EBDD9E6216E666780B57AB3818BFB03D487235CA996734CCFE1294FE3239EDECF77524FC1B87C0486C7E164BACA9FBE75944AD4E0BB6EB27B925DFF4D274EBAA9D2FAEE73F92D2DDE6737E9E78CD4974DA121679E977F01E75D65B7E46607224967ECF869FF15188E1C380E5F236B86B027743BC13014316F2C7640D30B6EB62F1E272D1CDC4D3A3DC1DAD5F9E774BBCBC1B0C5D15DA5BCE28CEE2E5567E6A619A112D0FBB6F13433AE834622EE284D94C0F206294B60F20DA3E8A7EA07E37CEA5E53715A8F7D1933AA90CB6119A32F0B41EF66038246E2B596F1A386660DB5C7BBFFA4B336BF2F9A8AE8AFC78F5A6BFC4DB26E3EA5554D1E8D2792A26B35E3F3E68EBD9F59002AE5E0A8EBEC6FABE55DD9C14A0FDD31DBDFFB33ED355FA74028CE769829559DF3A72ABDCFCA7D3DBE018A71A653F5651E1F64640B8D246B44E4DB6DD650DB0DA7AF1AFAA7C506C09E507BF8A835D8B576DB6FFB426FC37A490B4BD0F089F8B5CA2CCE1C92287DA4730739D33B2E35A020E2229E3F449235B69D25F5182DE3BBCED0041D59EDDE7F637BC319F0F2450D828DF6D9704A672AF1E81AD0745DD74044004EBC83A40C150F2165B10C2FE1E26C70EB35FF99166995308E1010891AB3E6115E8C11C3C6D608BAF073205D05A222E8B59CF7E75869333B7709AF25CD1F9ED475765BA49B3755CB80E44BA71E51AED41BC17E3DA9BE3BBD74992EC6A84B923371D729D9DE39D01D35DB30B6E1E129314205F6C3ED57D760190B9A0717019B6544315D1E0E5C88B40801E3FA167E6649B32013E066FE256C7772F2AC4B97910D6E2A311A749F6EBFA6D08A701A73E7262C240B31C0B49C8533385BDE6E8A68F2AF7D5A537C59E9F16CB9FF92161BFA6A91E9AB8665CFDEF453E7F44B03789206CF7DBB698CF5AC399EA2CEF17DD9744FD9E3EC90CFFA73F3EC2979AD89AE6C9B7EBC199A023ECD8527E96C77D379312BBCBB828DC3B5BB8285CC73571C164B71571FAB0D68358C268025689E8E79DDCEC9511BC588244D9E9C152F32CDFD783A50D3E87CB09306D1B1366806BC8C6EC04F7BFDC882ADF6E95067A38781B94135F1B3FEA01585DF6AE6F2EE30E347F2640C7ED09A7B577E6DD1ECEA721CF8F8AF7E657173BAA925FBAB45838720F9A1DF35FAEBA4BA4D1BD68D58784AB89569103F975B50959B846649A6E970ADCBFC9E1552E029E1E6FCED5FB312FE7955FE0AE8607572F173FA1E935FEB2E7A7113E14DECCDBC1B37F3521C9CDD7BBE7A7390CC90CFAEC6E5F136C3C0F7E67DAAB2C2D3E57992A2D45A941AA71FB3791DAFD123B7D81FAFD13B5EA3A7C22B966BF4C275065F922A4B1C1DFF9FD89BF97C6E66676E9EE18F434F38837CBD1D181C919468403589E5EABA1373508932879E21E2026039578980E602BB095707C810FE661E859F3B5E970265664D3661093A7343B65FEFEA6E5D63AEE6124907BBDA34D685BB9B5D0D17330479437BBCC05ECAA98B9AE19F8ECEC9A6739ADE33123C0065ECA6FA439A02FE6C8A8375841FCA029E6D074872D2BE10FE064D4C98DB4D2B73302270B05DD3DE5E2C605ABA07183F865BC23AAB3F770D869C7E193FEBF07A93325FD61D3F1F97AC0E607A044E37BB3CD1292C40C19D49F22F6536DC7EA71FE3A9CBB3F1028B71829AE13E480233FE9C87BF1904DAE7FF589E854832E049FA032CC1605580E14EF124039E94034413E2725AEDFCBFCBA53D6921AACE4BCC63290ECCCD8B81C46A278F39832CE442DFF1F5C0E3C2D732223BE7EFAACA4B517593C7975523F193C737568F5EF247F292C0CB35AE86BE4CDE6A1E9193F5075DD040EFDD77D291A10518549838BBA369D7FDD7FF04BE883CF5DA7FD43D404CF9268393FBDD1B577F36D45304E367755EA77FEF3260528A19FA5D6311A32A1BE8B73F67A04F276C46254604FB76D7AF23C0C30DC526506767FC513D53E9E802EEB34D0A99B405989C161366FF412BABB33608972FF6E9DE4DB5E145986CE09230703612A26BCF604D2BF235A81F6F85E72ADB3C79DA0E5D3EEE5C6D56E4F25741BB30BB33ACCFDE15D203E7CF9A9E3A2092C260B4BD14E48C60347CD3E3F271CFBA6F641F5398D482E8D9DBACAA9B1649CE603E156108741183A54C70210739E839032AD1882FD90088A4A860F7339C7303DF9CA16E2CC1107482FC3F3AE6C645627ADD1349880A6FCF2F4E9C210DF036C41833E752D06577CAFE3CB90556CDC8B72D91CF3AB8878338F2D90CE4B3C67CCAF66B59D7142FE4B3C66C4A064143CCA20C1FD5F9BCDDE737599EB7B0C2796109BA3359AC792C2D2EC325BD389FF1ABB69DBE64E95F4C5B7509EAFC86833D18AFF1A39E86671BD6155F788A3AC7D7E46BA6AFF5DE301D9B076CC19CA6D3A769E8797F4FA8D77ED0A8BFA4B8DA256BAAD1A0DF97B50C14B0E77A71B172D67301DE863D1733E7527AAEAB26A91A7A0F20F259A37F28369FCA8C742ED3578DDD84FB8271DDCDF0518B0FFDA6CBF8312A6CFF729E64B9CB41C0508021CAF9D9E39D61E9453E2F37D4D60122E9D86016D56090DA73D25E10FE06CD4598FB475D36012EE4E5F0B092331F379660E8E404F9E3F572C35B92AC0BE2D0147D8E645C887ED7598399F7685440C4FE4ABCA8E60CB8644186F895B3710363E2C559CEC90734F938E65185A0FB07B8E8624CE1E7F4C9AD7095B0BACB76CEAE2D40F89B999D9FDB4D6377F1B84AFCF14B93F4CFE39C157F0115DBBBE2DCC0815190092E94D8B80108B40D5DA3C8E71047AE5D3C7F0155A20783C867755E274DD34EC99307B991CF1A73A955B9BFBD6B5E1366433E9B8497BCE032AA665AAEBFB9BB805DC05EA94D0A72BBF3D5961FD632BC674DB890D05F4B4F4578449A4663870F78244D32A09468F074B23AEF8FBBB400D50C6B13678BA768F47EE95F0C6ED3574DBDBBCDD20C8D87045D3BDA7E2405E6FCD4DDEAD1B6B75D99E50CDE14856609F014CF15B59C47A6E96395391A21D2F4B88E8782D88C89E4831CEC9087B956AE26F75805995E192665E3C6ADBB3D181749303E24AECAA249B222AD4892B1F4FECBF8773D7C68EB2CB94DDB99D8BC9EF25DADEFD26D02B5AD77C9BA6D108002EEAC6B3B85AF499D76240F1F00D3DC679BB4021DDC7760D3EDA396E0D1D5BFF26153C040709E14D94D5A37F0FCCEEF0F7F7AF2E4E5C307277996D4ED7EECFCE6E183BFB77951FFB68633344951945D84FEFBC3BBA6D9FDF6F8710D4BAC1F6DB37555D6E54DF3685D6E1F279BF2F14F4F9E3E7BFCF4E9E374B37D4C66EFD92A7179F2EBC0A5AE37398A55A4590DD12818C1A7053983F4EA3FD2EF64150FE0B94C6FA8D3408F89DA26B3BF22DDD598B315E5F787C57D52ADEF92EAE183F3E4EFF76971DBDCFDFEF0D94F0F1F7CD8E779F235072437495E53D824F9BE0635FAE2E7AB745DB5677304BC5F3ED1E6DDB50D01CFA74F644CD16622AC95B62F60DF64A35633267532D5065C93826E709CAFFD9480E149554C6745B4CD872F5C23059148FFADDDB3F4F7EF0FFF27CCF8DB83B3FFE71ACDFB8F07F06DB9DF1E3C79F0FF6A0B81DFA0A327049A779610DD33367344A139CC13A80D94A6A136228B09A3EE8A8C994CBAAB1F6770212EE1219BAD527D231C70FBA28DFEA797A86C20F85017AD0DCB3AC136A08D3559EB5F34D524EEF1315013E360534DEC42A0996A9ED5C8254D1DAFAF993E288697517033FD5FDBE4EFFF5BAC9DB2E33E691F925D435BB7873AFCFB6E76CF84D79E92AD609464A1CFA339BF4F1C313ECF369B3C65B156A86246879FADBF15B6985DED6F6EB2BFADB07A9FDEA7F9C0A9C98AEF26FEF15D99F59B3D6636CDCF5993DB31D1E936C9F2ABECB648BACDC116587EBA2B9BD20EA7AABCC9F274DCB96C8FE559FD25ABB3AF968CD87A9DF74971BB07C3A16FE9773B1553B4B4E7E557202D707016797EBCB9C9C1880FBA4A2BADAC9B74B5C10A393A6ADEE19CB5AB03FF4E8B393C60B310FACA9F9EBF306A6BC8C58AE6E27D4AEAFAAFB2DAFC91D47776EA305DEFDB0B4D405D6EED600D7881221D36AADBE567C5849FFF2ADF266B30DEEA1AC52C5EEFCBF5B772DF9C169BD6BBC3AB2FF80E5EA9B71918CE16ED64BD4EEBFA2D005EBA5995FB621CA19BF45FADCB600711B29877C8093FFFE3C159FD6791FD6B0F123E036B10612FD1B2E60CE98781735BFC2A4FB2ED818CEB87B3CB06438F2EABEA98436D3CD45AB63B7B63A1A1436E5F927C6FC2CE0819EFCBDBAC304106CC38CC51D253B88C1C03F17FA48C855D063DFB90BA1C7F8464968729981696798784B6117AE80B5CD4C0C3BB7F8041DA16618282B8DCC4A08581345D561F353BCDEF1D48576138325736D8344D7C2006EBB7886B4F96CF9C0FEEEF58D12F7ACC38ABF8B3E21ED8ABACBEEB0B80649D25C2700F82BE0453CEF9025C9C1896DF66B450FCCAB4F89505009E16B7062B4553CE590298587EB6D1E18C2B68BD97FB42BF742CB315E35FA6F57E9B9A57C1907F5E4518607036FCFA735DFA258F19E72D52F667930C9628C79CF3F43FD96F0C9487B9E6410F3FD562803D92C12C71DA5B3DE084A251273C649DB7347BF27928BA4A93DC6002F2138821B3249F33717356BFCD93DB791CACACDF21DBD966AE5AA0F7EF69B1D209460F270AB5B6A6D6F3A2C75E6653C5D9E62A6D274EF51B2892755603C5F6576B8B30649D2582F1AA366BEE1D7B314F531F34F36CA322C78BF4CD3A665EBAFF3FAB01270B2EDCC6EE9EABB26A47366FB369A9F20770E2AC731C8B75E5AE6760101770B4989AC5266F75B498B2C5BA3DD987612FE308C646F8622DB0BBBA03BD033C1AE1B6EA3BAD0FA4EA5D3715741BF9FBF2F640AC16C54E72D4B466736453EE79D1FFF48AAB7968373EE06ACEA21DE25BD80B6365DB15766388C11A1F92DFEA8E686B91EF0FB2ED1B7BDCDC4227F5BAFCFB823B069AE967F96FB71E1DEDDC41F870B5B2FE18BCCB694500FCB1447347893F256BCE8775F67326B7E925443D4B639967CE77104F271E3B012E27FCD545030D51063655F4332FD3B6C9A3A33DB0B3916084779EACEFB2C26CE277CC7B2021F5C589957533E0554F2D31BA585962746E47B503F3F23A53213DD80FC40746E17E7C4CC80C171D1DCE840C797D93FE5CC8947B6EA81EBE1F1D74315BBDC473C771AC7FE0315C2B359F53BB649D15F3FA46126F5A6E9F07B8B9731F70DC529AEE7447F2DB14ABAB3783D3BE467EED409C5AA0BDD776EFE2B0D7723176F39BAF9D4B3EACDC3772F4247A9EA45596B92DC6D27926A4033C1057E223AA846DE938FFFC23CE3F6B8882F298B72FBFEF095E272EE7B055A79E310EB3F43A4E83473E41729C06674C834FCDFAE8F90FC8F30F4E16DEE91FC18AA325A73FEE10981FB9AF4E91279DE74E6C5B62D56A759936FBAA9837E282BD890D46C71E60713D000BA0C0A9FC91149B1C4418ABD3795847585DACD45929F74B64507620BD92F3711CDCD6DC35F9035A1D805AC1170E2ED35D5919F4A70C1656A6E8F99BC194D87CC49E8198E1A0F3B2D6E7A3092BC47A0702ACAB6CF3A97B39C268AFC09877DE3E6068DC2FC93E6FE6A11B6331F31E018B97A05ED89B3CB6C109F62C339B6DE76017DDF6036C38A0507AF422F6BC486C68723F753199EE707014FA207824C7A6ADF53D5ECE94853A4B68ED9642F66B2794898CAB6EF6B5ECC89DF870516F865F3A5937D9FDC8C1EC09809B2AADEFE0EB3DEFB39BF473B69D27519E977F01475965B719754845643AB5E5D64FFBAFC0760E86E8C8A0E038D47438D48C666FDC8F35E6455F22EFAAF473BADDE5ED16A8C3803AAAA0C9865934F7CC630313ABC1C6F3049AB8680866848C03C384EBF9C9C1749FBA872B0EC46ABCC03D54D47BB2D98008C5CE2316ED3E2D3B52C10BFB2B3BEF89C0871ED7CDA7B4AA8D0EF61AB5F5C38972865B1ECDAF1FA03958EB0282F645516C1B9836C90E4F4E9B3B954F557A9F95FB7A7C0BD2C2EA3DF292F38C3070BBCD9A66A67269B10121E0BC1D0016EE466B9F406DF097838C365AE1778FEA3234726A07E2D122983B23621B733736329825CE1F493D06A7333069FB028D48B79200C75DD4097C41DECA9B764BF30844777EF40AB6BC421401C559DDBAFAD1B0B3663F2339D91EA91F71BE888AF6DDE78077054217E86C0EA4C90A4602BA2EB8AEB3DB22DDBCA95A868630219938C0CA8F07E10CF6B349F5FDC0EE2D8D64F5B43BF8B131DDC163528FB0A784E51D4E4D060E1C3A267EEBF1F02E5F8EA02223F10AB15CCCDF71F281EBD3EDD7145A0FCEA3ED0E25428A62BB1962DB7FEDD3DA40149A83D35DB49AECBEA4C5C6E44AED21DFBC3672F6A69FFA350D5B310E3683C3AB7DBB1587FD70B2D17CD0FBB2B1F8AEB6956B2F40A8FBF166F0197327828C9F56317173B0211DDD9CC55DB56D561C9FD23B7F19886A37AFBF6EE7D7666E9D818CACACBE4431F6548678E7550F04D8AEC39EF6A5B5038AE05D9B0BBF90E66834D56B03E0837E8761AD28E6E88766AB2FC29473DEBD6149759B3666F796A079672EA2DA5D6E04615CB9DD82EE23B1C8B22EF3FB197D27CAE007984F8EF66C7D04CFC8B196EA06783858E61D4FED1F4A2C1585E70E7ECB4B5FA786CD6BCC6DB36D597C51348266AA7D9D127CC4FE78A7D241B6B6E39D4AB21EEC78A7D25266607C78DBE8E23E2FDDC097A4CA9210A7820FE92AEB28E68001A3BE328D8418F3BA388A36F13F10A0595B57F272F21F201CF6078773322850438756349BFD42B2BA79BCCA44151BEB905104087A17F61D971DB45DC78198EBE83782BE3A353D8661C3F3F4C7EA7E504FF6A12C3EB5E78A013A0FA471C61146C7B1FFD0069E0132ACC5A9B617BCCEEACF5D6B9937EF72B84FA8473B2DB1A4796E38BF7D608705A398DD8E229A88E58CDFD9786BC138393DDBABF5EC2CBC1B3BEEC333F62418079BAE64646CC1998CA63777E42807BB4F9CF58C1D3BBA76EDE0B89477804B799CE55A737928465662D5B92B729237B24CB81D1FB83A2EC52D62290EB6C8E3D386470F1ED4831F1F393CF601C73E402C98D33EA0AC5A1F7B189EDFF5D2147AC1F9926FB5DF7FFD4FE016847C9FEBDF454F5E27608B6FF7B2CD9FCD7A764B3FFD7B97810AB4C10AFCD940D7FA3903D102654B952702346007B70C1FDBA8D2A9B55EB0CB32C42DCAD6DA28CB4CF2CEA855BAFD053FFFE3C1590D42897FED41C2676050A243FAE9F90B6B9BADD2EA3EAD40A078B14FF707B4706F6D2D2BBAB5A745ACA55C659B274FDB38F6E3EE80C6A6F3E698FAFAFBB3363ED582718833226F2F9A38B3C3E6E35EF7A60A2D783E7B9B5575D362F470001A7EF20439D9603C282378D8043AC2DAADF3FB19CEB9B4F7781FC1F5A3806B5C81750BADE7172747501DD074EF79725B3755363D0167146116B012A677034C989C6EBF96753D93C9A76CDDECAB59CABCDDE737599EB7BB3E6605CCDD1B8673380C77B9CEB7C7972CFD6B0E9BE148CC4C6DCE36F8CD4F267C5E4F4FFA99641FF10EDBEF2C85EEEF67D54C525CED92F54CBC1FD824BB5657F4E26275EC8AEC7545574D523573F7A89D169B4F6536790AA37D6EFBC2FC26982EAFD58B17F6260F586821F997F324CB0F2A5C0F7174A537E279B93158CEC5321FDBD1F2DA11528107D28C5CAF78B49EE7E5F04ECD81D82C90EB19DE959B7183D9C4C0EEAD411D5F2BF768193E79A305C85F89079A0E0497C4AB972647110806F3EEF6FE81870DBF2EFF911F1D7D5777D90ECE222C5151467415C7DB0FCEFBE64E87A4FA7E56FC05448657631D460DB6AAD4D656C8E3BB9F1EEA87C6FFF35E9E06E62EAC9D657D5D95FBDBBBE6B59D37A3A7A0C56D5328D7DF0EEA2EE9389ED0F17D0513674AB8BF2C7CDEEE86EE1AFFA4496C3CF0FC719716602409713787CF87F4AFD93CA062DD46C6F9F6B1F1CC01E4F4A9BBBF00C0E36A5766F96C7E70FFFA553A6FBA6340D39CB016636135B24577D5CF920FE3B2A8E09B3C31B13A9CA99AE88E93588E4F4FEABA5C6750F6212E695F2D5AC32FED8EB0EB559E645BB2833E2D36706B29453E887695E6378FA8B4F37DDE64ED37200980F24312121F8B6E43E38313E883DAD655AF930D6D14A0CD8627D150D76D9150784C26462A2ED57FA10A030005CEB568F777ACCAA26EAA04D43D8DE6AC5867BB24E7D885A057C47FABEAC8994C799382FEAC5587ABB84AA1C3C641BAE0913F617B993D5E3D4650A507B6F7E56D562C156C50782ED8FAD443045BA7DAE2C0D62AB254ACC1C30C3CA87589878834FA0C478C406BA3B9615A17BDD2C305D69E3C7AF494AADA89332A0AC6164F3814AC605AA994475CD9121E2EC8453747B8440717E222A318E0325C64C5450B4282D628FAD94BF715125B3C3345032BF42AB320A87A577E853B8F59D3B1531D4E146805225FBD20A9BD6E9428DF116E381671031BEA16554E31A35041C182DC33CA850B4A835618F6FDC020C3B54B58D01077CA8683CDB452CB870D4283C106FD7E68B0E1D925306CF055F920B01997C680CF5937D4E3C6186E7A0A0235C3572F9819C5A5B0DB7F75851F9675DCA0675246CDF5B47205F73A0C81CD6BED20FC8D7A157AF436E3FA7948B02CC2D178058B3FE7A20196F09EA53FA1734DBF80A0554FEE10D20B480A307E76356CF28494410FC57153245059CA283B1478BC8EB93521147EE83D000948729BF2EEC339A2297E34F535170F967E3A2BEE01EB927AA8E288A6F8D134D65D3C787AC6B9AEE608A7F8E134545D6C68A2AEA93982692160BA38890E4BE43D13472C2D054BAB78B0F4731BC79D16B7FCF9A223986205D35075F1A089BE87ED88A3F8711453DFF6025E410A3E5FEEC94BE98F508A1F4A48EDC583A95F06477999D6FB2D7FE9FE08AB58618557603CC87A790CC21788A698E2EF5FD997AC1D61143F8CFA9A8B064B4F9F70AECD3A82297E300D5517119A4437121D21153FA4CE41C5C503A7A7E22BD48E808A1F50440DC6718888A7C39CBA3CC04344BAEBB19E0F114DE2C581AACF49759B36C7036A8770408DACCB2810F6BEBCBDE66B32B7623D800C28C01507A639819A76E55B045BAB95EA64D590271EAC4573923F0C70021FD056C64E6447FA2174866B758FC0891838E8DDC951C066A181791894850BCF5501164984FE479A6F4E8A24FF5E677570CF840A4381064F3C24DF8469B60CE7F4AE7F972E28640621A889ADEEE3A14064D46861D058D0683F0492FC8EF2B54014C1D87E44D182C29E1028F21BE868A1288208E72ADB9C27EBBBAC4897E48D26A9C923E5E3E703F048883A4BF3493CD1E7D4E101F924CD9AF5E99326D1E21975B11530AD438743FAD0C333AD9A0E312E1B048C0A5B4B899E224198E76923138C858EAA28949D979BEC263B4E1C453F713455543CE0816F62BCFEFE6721E8016389CC63C09AFFDD01DA3043AA3428CE8667A7AEFBE77404B778B9F54F8320145EA68443F24BA3564A339643DDC40115B6EC47A4448014F415B9F0407917E52D6F213144592412DCBC0B78D71B2AECB0474DEA628C2AD103A0586BF9589AB33D6A7A7EC21EBE74F6A845E59EBA3D6A71443D616013B84753DFA11653F8D3C2269208E8881A5191B1F99AE1B7F02E7F8C087BB00C4BF841FA35BEC9E2C359D03BFF49AC2D6C523B2CCAFC4F69EB622C92196D386915CD56484C1A0A3644EA21F584B86A4A1154F02D6F347C16B3A61B1E67BE5775F501167C59771060751A857FA2C561A2184D3E140FC5D06D192E8A01A145F8A858B0E6D34B19822C4637B5A0503D22A405D8D1AB8FB5D0313B036D41F7A1C4829FE5F48A91EC466147EE3C5D6CD6F80F11D76B822268843FC91A172297D28746833CCF535E46880BDD81D2480BBE8F333C761633EB1565E7B9B4BD9CE1F1E67F37A73ED462D9CEC9C0DA695595D555B9AF04CBD514215ACF74E20F043EB109A383202269C813A540BACD7EDD2CECF5FA49705290F1F321BC658FE8A3525A244FDAA3905AC2D3E421C1E4EDA1720328857DAFBC2BFE4B022C7F99EECA0AE289A9C29CAA74D52392C2E33D229DEA0A603A753EB72FA4B452045A2F6360A45D35E5FA5B8F34892AF62ADA29FC108D185261A96EB63A1B01C20A0A51E5540AA5448D088C8B737BA17117C2EDE9022E1AB7779936FBAA801BECC58AD8AB66A7E01BF561C884A4397478BA50B082BF4935757787081A83BB5BE681224C7E5E3B38A0E344B8524A608BE2341181B383F075016117CED3E9612F1A4737DCA8FBA16CD24EAACFE97697274D7B99DB94347C142C383088F1A50716811754F275E44A4892395A969019D80D60058AAA94CE123B66FC020D6EB25C0EDD818E858931ED08589E45A3C76A14180DBAA71C15848BA4C359F3C7B452EA9683EF20C7A072180ECC37D0023B292DB7D4CB1807DC96B22E16125C5ED7C6B461157E750C15B91DD0F255985BA11EC0450E61A934E7A302DF28531DBFC61156F5AF0F8FEF1F060DAD086170E05089071362919A2D24CC22A1B3A0EDDF3120CDEFE66F239045B0F79B42D96222AC0820E637D232415884D196500D5B157CB89197090A42445F849CD1E06F49BD6870B479EE430D701643178A887D0E82C60AF03CD96FB2E61AD066B745BA7953B50481275331D1B85822A80E660CC05551A570BC1E23045A2C13F6478C19632C860127ECAB92EAFB70126261275B68058898914E3E84932E0CBD548706A14FBC20A2C3514AFB754123505A781EE0108243188932F45AC8687414FD2AADEEB3EE3ED36BE4371F73080D863AF4BB67DCF164E250B8411ECF76AEB1A75B30421F1BFC16DACB4601BF507DAD36FCA2EA6E49F82DABBF8D0578017A5C13D885ED724FB75F5308FDCBF45FFBB40E3B582585C158D389873234A5345BC6889482CE82CEF3C58034BFA7F98C4016C1613E44EE759AED9A6BB122B6EAD83DEEA0363C99FA4427B83342823DF475AAA994490A1A0F0697E9E982212E98A753C75A8C9EEEEAEC0DFC1966752A06E0840DC634D033D5543CF0F9024A143C2AD727A3B53A7CFA611C13CB4411C1AA132FE4D5DD6FF3E436F42316AD0CE4568FEEDBA1F89C41A1658CFB0658B4FF13CE8A8E0468E54D1F7D3D17E0193F6CB38407CE205770DC2C688F977FF4787F5642193F11ECE51A1014FA0189638F14D915D703302ED3BACCEF8FC0880318536D0407C6E7A4BA4D9B455C78EE1F467E2F37D741D0546D2111F447526CF2B4BAEEFF0DE35A86C209588C9F0FC8C130EDCC29ADA78D011E4B79A82F08923C3FCCA703A1181EE44330B4A0B1512824F91D216962298241128473AB626C4FD11232311D214573403D1B53C1C5CCFA3161B5945E2F32FC8578A8D6047831748E3CDC2DA8A78C0F7D7EFBD039F88BB5430D3D0B1919A616D6A3C6316BF925A9B2A4685A6F26726364B5FA735CBD80A400E36757EEC9137C063D145D510C5059D0DEB350F8F1BBDF4C134611EC34C3D1C4141E4713AB16D1CF878E269DFAF58EA69E3C249AE0BB8FF0F981B0930C831C2440A6EF0714FA8C4A2D6602618449B4E14E2000F90B78B4401338E219E1027F08B79A4D14D4ABC17E379B050210C74271C068142E3898A2E89F98D038BC9E6961DDD2356F17449C5B44BC23C9FB261175104DA2854751DC918D4FC0788E691613D02C2E9AF1099A2071CC4282980F65F129ADEA12881D348E41E4C0B862DF0F259A41955A464083C224E812D5112782E222587E4281B2AC3BD6C221CBF37D6ABAA88AE116350C56CB59AB0A8829AFAB55DA900ABF5C0597F7A7377ACAE226ABB6813A354C168C2F9172281D1BAE9652083455502490E97F1C21132B64900A8A06328B990D0C8B2FBFF38226D00A3E3988236B411B57C322CBEF26557D6445B035150AFD479A6FA238E541494343064F3DA80E0F536D195345347C16719A230E9CF93CC16106B0E06737F8F812EED876B3CDFD8700A3C94EF8A0D824048E0BAA8B8AD362C0A0EF78CD0476F1C56C415769E2C0CE6282B608D66D6800C1B5E9D7DF1771BD4D1C780B306BA10D35A456C3620D0A12CF08131387460F917C50EE0AD76D41834C1C42CB1965468035EFE34C7D90C531D06463ECC0469A110132D458D31C9F510D3629B82E6AB419070E7D8F378DA017C58013475BF8116704F8594E1017CBA01307D1E2469D11602EC0B8531F6E910E3CE15FA755555657E5BE5A4B8E4FA084D4290A2CF18702A0D888F1C11011351816CF5AF6A0125A6DAEDBAE823F8A4049B10AC613BC406E28B295982BCF94E8046E98DA1EA046A9A552664B180C5C57D9E6C9D3F661A08FBBB0736BA820E4566C24E15042314C2B8D99B456BEA06079F636ABEAA695FCFA0CF4D0806BF6EF809099C4A14083261D126C10BD944A446B2916E82C68BE2134CAFCCE3318002C82398656EA9F619C9715B751F8A5511A0A3048CA2179A549AD6539A509360BF349E110E6DF23E9812B1287F4FCE22478440D64A0E001BF1D92EB6915D208A1033B9C16168B5881F68F1F9F6BCD3AC009BEC08CE066495D9477F478EE9634F0134387F4E262B5340401912904C16F0782A056978521E8725F040B67FCC2215038A38A09581141E1F0CB7992E5FDD029C26BE7501129D84C094BBE7E0ED344D191C40199FEDFF372C35F494569D0FAC3BE1F3C94B8968A0452887C71402B640F150A2481FA2A2DA084EFB05EBEC9EA5DD2ACEF22EEB14619290821294BEFB3265596D0694DB0B94CD76916EA85F7B0E808E461F49032D54F50C0FCBADAD74DB94DABFE46BCE0F3C0A440147A6882430211A59D4AB9714C1753501A2E89F950329E40C0F6BEE274F8065822CD5BEF160B1085568C0C8884AC21E1B8BACB766D85B5576BB61B04C437B6223444354FDF7D216F909C9264FCEEEA764DB69D9C616C5448A53844BC70B06ACAF5B7AB2669F6F5752BCCAACCF3741DACB79CA4C1A1827E3F98BE11514AA94BC4AB271AC89CD5F5FE889738F132D44D146069FD5D9E51E75F88AEA2A3203B8AFEAB9F0E2B18AA38168A034FA370B18069298F9706C593C7E74B0D0015FAFD52F29CD1AADCA4CB3E6CC6D24828D78AB190B3E003674CF554CA0D74E4EC149E5902791A9023AD86BE1B480D3782BF499AE46B52D3186C735DA54D4F7FB2DF00CFDC82AC4B4123AC31E96A7D976E93DF1F6EBE960011C9D71CCB48055978096D34315DFA4B958227B34AC22924A5516121AD1649C1D4AEDE7D489BEED89EAC48F4F8D82A4FB22DA350068DB85848A457F6FBF2362B2465F734E2B221915ED9DD694061D11D89B8E496465E307A109C2A124D641586A64BCA41F74E51E5A089AC72D0747939EC02B89C55580EF1018BF190C6613F244B0AC1DEF0A18AC15259056104B2A2D0C927BA28349559144AA050543F686016D4A7F18AE993E5855C81E178C9421692C6296448D6F0BC70BE58E87C2185CCFF42228562F1DBF898E5E224BC82712A05D4775BAD99A0EF927898EF52E5F5769EACEF4087CBAEB83191537363BA820DDB2178027A587ED561143C0B62441AC54ACA941728EF407A424EABC69359A5E1140ABA11972530152468785A12648AC844EFFFE262142512A115A593944F8F29A8D2691256D93495CCECD0215EA6CDBE2A3848262998262789948A8503CBCB7457562C9FC0A0E1178D912915FE2501432349E1180DBF708C4CEEA2C647D0582E6A4CE4B8A8315D4949AE662275746A4F84998940526F2A8841D7EBBAAC9FD3ED2E4F1A56631111B3A34E3EBD865C8A12A9CBA22D0540C74DC68CF5290A51D9239186F26C245014329575B12029535EA0BCB47EAF8C60944C93304BA5A834F43C0730A8B2246F07F6EC811597566601825C6A0E388B9554DF05213F8B886D129A4EBD7CD852DBAF62091032890C08A5B214E26116874E2C87CED0EB74FB3585A327B84B6BC782064DC22A9EA6522FF95FFBB49694DC93484AEEA924257F498B0D736C3624B04A19D224BCDFE6C92DA72EA72416FF295531AEE6CE009004A2D85A712E00C4A4AD7CECA8B64BE184B25DA29CFD1F49B1C97953316322A790315D314EA72EEBE506EB14A52862A788E5E28C2B4E2C09C6444EA163BA3C66E4978326726246D57280487000C1EECAB1548E461381CA8887D3CE9034EE1847A9A50D020994116B222D017B49982A044B65958311488A82E014C420443AAB388244A540C94C1183865BB0D65C11EBF24476E90A13022C3A79F96505BEB04BED933865F5A992122ED39B2AADEF3E97DF52D6B2009ECC2A09A79096B64DAA6FCC72BA0476095D9AE24A83649541B6C2A0B6BAD0C64669051ACCC53EDDF326B65102DEDC364A23F7BFC86D792C0F8C24737C3042A1501A7A0116B33C948057224AA3502672C30DB348249D572242A25020BCB58059144CE115021315D8C333CC4CF63085C71E262AB09FCE9E31CB989279054D1492D2B093995461582AAB2C8C404131E4CC0B5333249DA71A42A25020BD3B9D592E4DC62B9EA654914236C266117125D01B53635BA659054FA9BC85AD9140565493F4A3CCB3E22FE01AFE59964C1FC3246316CEA4944A816C9162148EA4B2CB440834E7D657EC66C4265399635FB11A16B22B84BBFBE17AD8458010B377410C94E4B615C15EDCD10C8C346AFB0BFB82616CB704E4C44825B730E18A1B1865D8DE20374A4FE9D728D8360ECA287DAA75A3F4B191DC261DA15F93A0711F65912E71B641D055EEEB5559DC64D5166E4E67D8844BEBDE2CACDD5490897097D44C73F43F94CC81D21EAC39A62D44526BF09E6EC0CEFC91FB99A00AFC9D4A414C000633D7C8DE205A719C802F30B537094ACBDD7644E6257359520D9B12672B8792F045644CD743510573EEBE544477417154E41F7CE31D114455E46FB3F2A0E2B8FBEA7AD81F45EB48D10895C4B7680D2AB2775F5106C296C747F3B0D7BFCDEBB3E7C7AF4DE6A9107351FD41955F8938819B1A74A65ABF29145E65C2D60DA5982520494F6C661DB2F1B6A9CE554FD853D074CE3A0C9F6A03896E5364264EA83B417C4006F8E9ACB807CEA3AC98F1A288FC808CF06C9AAB54B0C1447D702668A753952D405FCE7A000658E91880BA4772C906F8B9F56EA7C52DAF23E7511F90099E2BE29F712FF192D57E011787C0E7CB7DA1A43F96E1800CF1CB00EACBB4DE6F79432F719E0332C74B456FF8F2B01CE1AFE3629C82EEBF722E685CB0019E3E9996ECE41640A80FC904C4A29D8A1DF02C07648CA7D41AAA8239A84CCB3508364F8C72964C2923A41615083FABFE39A96ED346636E9DCAB0F41976E2A0E535CE5E6C0D8ADEB23A5C0EC8564E8A096B9FA605B3A82FCE91E47E17A4029866BCB054C530ECDB4D0FD02CEADE95A0F6E160FD9803DD1B2B870987DA0F4E583B8247CB08F7F81A45257063BED8240C2AF7A6180AA5C217E641F519AA8BBB5C1699AB8ED69BCA6287C02273E5095CAB3CDD3920A96736A1AB9AA6EF5118D6E6783724CCA86D94ABA0B611328B827BAD6DCA774FBC151CFD486C4981A09E9DA59D2408E091BB8C02829AE4BCDC643799722080901F5E2440690B77E1BEFEFE67A1D87A507A972351DF46190E825EF75708B3F7647028FDE084BCB2663407F72A9A99A698F84A2C31121EA821DEB177B150344217AAB58F25849AC3E48A6AB553F496D5E172608D2545F73F59308BAA53C089FD3607FF66D1414A201F11CE28BC0DA8427ABE52AC6BC4A046A2EBC122328B3C30E550BB8C4BFD9A033B3A2D9F9EE291FB6940CC43E3A371C4A7C06D984736A6E350BB1AD4F935C720D6748986DAD41D93DEDF241E7D95086664C19520564C24828C88DC0566E23189C214203B83EBC9C0C0A6114F0B88331C6693E2BB55B4181D778CE473A86A8C7D9724D6E1D2BB8C76429B453E11C7A5FF31621E85C9387E0697B371511806BB8F57D93A82F7351025793707431D65B7010736D7749BADECEC238752B80E34EB08247D4BEF909D77FFEE6CF5B94705997462D54D4F0CFA509BBA32F91A65CF681E227A8BAAE08D81774574D718A4B73E9B9A05B9C6FA9A510ACF3AE26CCED464F0625CE98DF012DDD26DC3642A48E2D0BB45927FB38C77B15F33CAE0D94694C9998A0C5ED47DF40827FE25F3B310A4B488202077BA86C0BC6F9DB4AE1B93A8834790C72776FC98897F633CF696F874813B6D355D16A238997F077D1F31CBEF94E77264DFB64FF195DC9BEFC4C4E33DF546D61D72CBCD405CAB8FE9CEB92B3F6A738A27653994EE87B2AC7BFD29C3D83685269602A3C79B598443120EA59B414908F5DB6E0C672F3602456F591D2E07B2A3933DA5616016E2D50A89EFE0537BF01F9C973A3ACBC85EDFB0601AF1FCA988DCD5F469709388FD089FDA912FF16D0ED247504528F815328F23F542FA184265493BE2533B6B46C1CC811D30BE06E4D96D916EDE542D81CC38C2BC7EC339E6E5CA94F9C4B726DB34A47200CCCBF643988F7A9D4936512FC9E16EC29EFF2A55EFFBA4EF4CCD32CFF87094ACBF13E670D5E7F11FCC228DC37F006B8E7990BB35651779CA33098C34F36A4FE19B5E84A5444F745933956A5BE365F2D1DCE2319542AB636771DDEC7C9B887C4F4DDCD909A8DDF771BC37E42023E9BB70164C235E311291BB5A300A6812F8EEDF355D86D0309C4C8E14E471C2DE3E2439B1DF33B4602A65F450E41ED013C824676FE04FCEF04448EFD5DF8431CFF00AA582657A52BE32F833985005F62397414DF0AE7B4352BA0F9C20728F8577F89B98C37400F3C14B73B5A76741F95A8F347C61C96749A1B4BC274703A829DDAF4D52B99AA9F1A3AE740F3649752870BE4CEB32BF97298E501D8AE2DD7566BC1DAE0C2AD1C4CECC5B58DCAADB3FC67B3D3ECACB5497A4F252CFC423C383EEBCE78367A92F399443910905373F8CE35965B11367103AF4E33E5467BDFBAC76648D9FC94B5310BD838D014CF6A8B53DB3A91C63E3E671D47CE23493C2D136412E874D2E4273A91D7713E4FA019A63FFC0BBE0D51A9442A888D66D1FEF9037ECF16CBC27E767A9279E6E6113BA9A68F1AFFAC857A6FA4028549D253CFA39BCEAF0B891F4DA5436A197363F944B5A61FA6ED50CFCC68D91586DDD9E55843F04B3250C42BEF808334478E46B34AAAB213C08BC99DADB545D7ABD2945E67060ED4765494376D48A9DABA5D478BDB55C57EA7E288B4F69559780A5B8D9B209DDB75CA45C8C07F6DDAA19C4113A87F2100D21D9DBC22315C4693377B40430813044E750BA8AD1FDA80F4774AA6F93F389DD3708AC6C8C0B9162D92492F7C9F9C4876C1251D4C3A57515FA843283782A8C4BEB6A02CCB319D41F7D10917B6A24DC7B8D19A90ECC239A5B1650BB98558EC91CD46CA28E75C8CC5E26386334A5CC07F9BE793E06B388837A21FD8FE19124775E893338EDC8FD1B46E3825821BD27E4F0AFB96225BB3091B43BF3784B6C642651EDD2D47207EAD3A230A7AC5BF37E976324A651E8DA02DEE718899154BA37FF773AC6641CC9B58E2AD92453E056EE750C61B2B34D0A4B6825B86E11CF74E30C2ABE1A2831A6009E2030C440D896C4E53225CE36C255B679F2B4DD4BFF712789893894EE7D0D5A3039C18A245831C5B3B75955372DCFEB33E022B224CFFE2D320897DE8F59A6E229C3A049B64D23EEB6F9C4AEBA6CDFA6F819FAA3ACB85503098FDC0F46C6D229BB202996CD22070893D6253EFC99E1F9C589DC93E2447E9000CAA49487DFACA92D1A3152342E8689DED494C09BA072096CB7EABEB85829A84B50B954171445A90BBF5953F7725FF0DBED44E0A7CDBA55F797F324CB7B27CCD318A311D6ACD68E1F9435A5E1946057CDFE5F3054E6DDE0CEA6E5AB817144B4C0BEC7660621C2092A3F30F7658297C3FD6222C4E34476213FF2A63445522CABDA1F5D1744234C5A3F35EFCF20BFAEF675536ED3AADF98240FD20439FC18871480B2114DE0C654D4F5718A0623F389A6DC8C2FAF8BC56CABBB6CA77227128F54A8D4DC97428612A9FCE3F7F926686F2EBF6A92665FC36BE7FBA75AB92D4C40EEA1794DA5E32641BF5B37497B93BEAA3D46DA433486F02E2C36A118DEC6AFC984505D704A8A4329547EC631293FEA936B012B10162BAD4FA865F4B142C19244C86DC508FD05A67BF5B8E3B52A8B26C98AB41AD35E3DBE5ADFA5DBA4FF00FE6CCA2AB94DDBB1455EC3AFAF1E8360BDC9B669F7D79B145EA23AB07805781629BCC66D623AD09C1537E5A7AADCA515D4039568201992FBCA3C4F9B649334C949D56437C9BA01C9EBB4AE6190FE25C9F7697F43CF59F171DFECF60D5039DD7ECDB11D89AF1E8BCB7FF59892F9D5C75DFB576D430520660654483F16AFF759BE19E57E9BE43551693C166DF5FE3305DFBBBA6CC0BFE9EDF791D387B25064D49BEF4DBA4B8B767D67784DA1FE585C25F7A9896CC0DFBF4F6F93757B71FF7DB6699D3F8F89BC2270B3BF7A9325B755B2AD7B1E537EF027C0F066FBF77FFBFF01C7A349A8EB430800, N'6.1.0-30225')
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201802150959510_ClientUsers', N'AuthorizationServer.Api.Migrations.Configuration', 0x1F8B0800000000000400EDBDD992DCC6D226783F66F30E345ECDB49DE622893CD431A9DB8AC9E251E96771A9A2D873570666A2AAF03313C8032029F1B4CD93CD453F52BFC204025B2C1E1B101B926932A3B2101E1EEE1E5F7878ECFFFBFFFB5FBFFCF7BF76DB075FD3B2CA8AFCD7874F1F3D79F820CDD7C526CBEF7E7D78A86FFFEB8B87FFFDBFFD9FFFC72FE79BDD5F0F3EF5743F367428675EFDFAF0BEAEF7FF78FCB85ADFA7BBA47AB4CBD6655115B7F5A375B17B9C6C8AC73F3C79F2F3E3A74F1FA788C543C4EBC1835FAE0E799DED52FC07FA7355E4EB745F1F92ED65B149B755F71DA55C63AE0FDE26BBB4DA27EBF4D7876787FABE28B37F273592E43A2D91EC8FCEF6D9A38BFCB64CAABA3CACEB43993E7C70B6CD1224DD75BABD7DF820C9F3A2C639FEF147955ED76591DF5DEFD18764FBF1DB3E4574B7C9B64A3B9DFE3192EBAAF7E48746BDC763C69ED5FA50D5C5CE90E1D31F3B7B3D66B34FB2FAC3C19EC8A2E7C8F2F5B7466B6CD5C6A09B0C5539529E2DEC1FAB6DD910222B5EBC7AB42A76BB227F846B88B1F6A39EC7DF1EB0947F1B4083B0D5FCF7B707ABC3B6C9F46B9E1EEA324114EF0F9FB7D9FA3FD26F1F8B2F69FE6B7ED86E499191D0288DFA803EBD2F8B7D5AD6DFAED2DB4E91D516C9505F6C1E3E784CE77ECC661F3273393B75EB12E1FFE183CBE4AF37697E57DF23C4FFF0F0C1EBECAF74D37FE800F3479EA1D682F2205BA03FDF22D993CFDB74487F2C2DF86552A5CF7FBA4ED7655A4B0A7FF1C445E1CDBF92429F3EB150EA2F8F47BC4951B84ACACDAB749BA1E6FCCD088948A90D4221227A44F2088AC429181CD17791D70DDA38BB12E6B8AE8B32FD679AA76552A79BF7495DA765DEF048B15D5535FF7BF1F96399ACBFA4A5BA5439A757E93E29EB1DD57AA671FA989477696D911FB2D5F6C321E90C329BD56FE9D68644FF0379CD74AECD31C4D3CDCB6F5297F5F487175A0D58B3B477795FD62B04BA8FD9CEDCE3A07EFE362B779E241F4AB320F945855CC97E9BA2D6D6F37A5914DB34C98D595DA10EBBFC22D11EFD9CA2FDDBE46B7687DD83D8EA0F1F5CA55B4C53DD67FB363AA2DCE60D45FCBA2C7657C59671CF24CDCD7571289BD8E163A1206CDBB7BED404CAD55253C402A9091AB9D424A1B9D4BDFFD2117AA415CADC93A8441EE84C251EFB02B5C424AD40E291442E3141672A31DB53A8E5E67308A46709E53A70D49026DA11D0D97E8F620FAC071AA394B3C2719AD58263A1199D83A15B7E9D9555ED2324E68B7E93842AF932DB6CB6A9A2EC89FD113BDAC8D65F721F055D1F6E6FB3BF9C17F326FD9A6E8758E05B6D6EFCDF8B2C6F0292D9C1C9C7ACDEBAB7EBF92EC9B6D7D95D9EB4132C8E8B7B7F5FD485FB52CAE236DBA6EFB3B51FA5DAE22EAA4F59957DF650698DFB7F93E47787E42EFD927E730F92BCC1ED65F11969897A214FE5BDBBBDDD6679DA769BAEDD0BEA8C0F95F3622E2A1466D8186E5C5428D6F9779ACFE5839BBF44ED1F9E3DB7E5648661C35C99DF2755F567516E7E4BAA7BF7C048D78712857408203BF7C047EE314FDF1E769F3D409E28CB5AD57CFCB3789DACEBA26C5BF06C7E6F8AF597E2509FE79BA61BFDA35EF3BDAA26032BE29CADD76955BD46604E37ABE2900FB3BBD3A67C1ACFA688D274DB9FAA64F134C236C9761538D862C61B373DE938CA8229B8E19580CC7484F8A6B8CB723D517B52B1A82D8552D48ECC54D486999EA41DA558504CA094B3A59A3552EDA7991B7EB8866463D5CB6165EAACDABF4DEB477DEE472DDFD725E2899CF497471CDBBF3DD0CE3C0E687FD01DD0FEF8F4F3ED8F2F9E3D4F363F3EFF29FDF1D9314EF437A60C3198C6D5D714EABC6FC2257D4AB607DB454D6A0DD809D86F0D986DFCAD018B893E7FCD364D54F2589DA327FE8F94833248DFE3D9B4CD3192F96E0E949ABE0BF7E303263597A62FB2DF5A1AAEF1371618CA2069A3D014D487F2FEBDBC91208E9CF73798537F53145F0EFBEAD1987DC1F3E8EE430D0793C8DA354CAE4B4DDB3A32723855B27CE3C8DC7D19CD0ADABB7D3597CD45FE15895C94DFE6327A8FA05A23B45AE1F3E1CC0E9B950D2B9FE777B3F7F7CC5708AFAB21DC5C1D725B4A5DA5D56197CE566DB6912F936C6B0139AFB26A9FD4EBFBD9E29C1D36B34D8CBD675A361B6BB3F56C1BA37A6FE7CB67EFE63AFB38742EC8E4DB293B78DEA36E3C4BC635BBE913EADBE46E3E176B1B8A5665DA38730BBB9C507797DD66D358C9369880F35BC40E104C324E6CD129DC8C16933C61C34BBF86A394AA2714C9D6A62B24EC884CE544D9EED2274FBBFE52252C4B0D4A4C13C9C46628A7C9FEC3D049EB494FD24BE41FC9D41A10B4D374F8B18F0FF45420C8251A0C546A0546D239F27F383311BFA1564AFFE14C577844394BF69591EC2B1DD957DAB2AF26CAFE531FACE8094F904BA41FA8D4E28FA4D3E47FA60B99670AB43CD301CAB3C918794EC4977A02D339249293846A1528EA69BAFC9D0E70F5D4E13249346268D54AB119A6E9F542B709BF50B4DE173A0DF7C5E436FB7317D0EB093B524B24EE89D4620F9493647FFAA41F4568094F928BA51FA994E213A413E5BF44916689C2F3E62819BCA5972F93C923D38422D55087A69FA6D3536634A5A7159F4BA2174BACD68CCB316B291847EE93A7DC4E736DF2B1B3978DB95D39D2097B4B3BA4B2CD75DAECF9993B1B8018B14736A73172751687DB1A869B5A538A0DD5519F6C8395B5C9998B0AB1B234BB62E7C4DE75513663A6D7D9B8C5F6786757E4B319C2690CF9FCC59C898B11ED42A1281A5A2C2209148C4C37166D6C3D62D1481A46B43109168D489F221AF66952C13A0A5E2C9C2014AA4D9D2052EBAF6522F5149C486D8248A42E756EF0D1237BC2BAEE90FB148544BAAC4B398909354CE43FD571AC754C7ADB29753CE63FD571C475DC755C136B18E73ED5AF7488616360E565C0797D8FA2F31522F7780782248E21A2272E9461D3B86886239815D010E1D4B486D2E63E3594481D21797BC09BE2CEC63D4788CDA9BAE5931C96AE3A22AD3E7BDE29C9EFD2C6CD5860F3B1983B7B63ED509FB543ABDDA48B9F6B82AC4DF02CF77AA35769B52EB37D7BC3A0E3EEFF65F1D7076E7E4FFB1022754D9CE2DE17E41B6FE80CF0B52F2C9DF4D6178ED87456C5E43A265C98FA4626864C2DFF8C7B9986A6A927FC482D11BD27520B3E503ABCE6A829487DD3114DA5945C71DF915108D15C45779627DB6F556636F5C5C410249F5310E1258868261DF7DB6CF6C255CF6775DE57E0ECEDD0DDC2CBFC7B0EF11587E76559946DA3982B19E6F7F21BEA64669B0DC53A08F7AB62BB4503A5EF354CE9D7A1BC88ED64D14BDD0791AE4DDC09C154A02F17904ED97CDCB45B3DC1476A89DC3D915AEC81D241E7C91624E83D05645AB24FBD2F70C4BB9EF424BD44FA914C2D3D416B2A3DE1FDF4C4A73248E427E8D40A90C4B3D7EC5A484FDE3584F39FE2152FF18ABDFB98AFB3CD65B2BECFF2D9F1405C93271FCEAC1DE441D1C9B945661F5616995DDA53732151D3C4E863E864C1A8834F853648B024966F211E4A806FC40592C542BABB797828028E268064B19433A287D16FC9A524E90029C764B19404CDDC65A4419469EB485DF65327EBA56B74B3EA3AD53B102884FD034800AD8C0254B3E7BE2EAAEA90E4EBD474F96C3807F888E172C2B862CDABB79585292B4B41692F918D4DD0169F09E9B934E2A59666E39A0DEA596EC75C5ED6A4F0CC1AB911C55959AD99A75DA02D5D5FEAED251C6E13DEE386CE400FB74574E0705B486CBEBED4D5819EFC23B544F89E482DF940692AB691D5752CAE6DEDC99626FD9091D8ECDE72199DB6F893769D6BCCEC91658927F6602AA5F03697C54650CC8E0B4E4181BC238FA8D7A558D9E87A298636FA5F5BEF7E597A86EC88C38146AD8947DA2C74A7EABE54B323F5D18B2ABB50BDFE737AE729BA1688E2CE5C0CC4A6C945135D0EA47F5529D55D4F984921199CBA948837E562EF6C634B0DC5E854E5A73D35D8162F93D3969AE35A1CFA0EB7D450AE4DBCA746400676D5225AEBBB6AE88244DB6A602A0DC9E76CAC615C8EA10A64461D65467A03B5884C0EE617B83205330C223A3D451C6E1EA2CB12EF1E12D16928E078FF105D9864039190504307D51622A51244FF67A209954DA90E41ADAB1399C5CADE28B251CFDB2535723AC5A28B8A45FBC8F19F4511CDBE6E6BD1EC70FCC4C664D6EAFC0279942CD966FFB6B369CA22BB46BFAB1435A97CEEA424763476589D226CA711368728E4127E4BF2CD16F57DABF3F90025D835B7651AB29BB9A98D8804A5DBDB203AE1BE2790D8EA100028091A0348C8748477B5BD1E2E4AB2250E24D4D4C0519C0C140607CA52421D1D14A1B27630C6C78E1326805926A7282CD649607C8947DBC1CED85A467339D5B62C34C0B6424CD65FAED27D515A98886C175BF8C3E5868CDEEDD31C810F8B3633D4DA16D5444E92677819BBC163611A8937402E6228AC22E647C2CA1CF37673F0D2CE688F049F538B9494759D6DBA2984D957A560BB7F4A9021EDB4EDE6225737BBA4D931AECD3D247678E11862B6536BDBEA71F8461F677C58044BBC2CE9F6807CAC9F95920B3CAD3CCF84232D5D43D7D48ACC205367A4D3D08320B6D05950269FD159107C4E9D8597CE224697E2648955ABD951BE40D2EC603A41B31310CF3D64360837ED905997FDD4CCE4CDCCCE4B0716DF0DF0128805B92454713B3CD9CEE04BE2610AE86C1C4466F7CA78A610EEE678285D25A9F81E79C3EEDAB08FBE2D51105C2229900F78B4F8DB80FDBDC47E9DAECBA6A6663721BB2EE2E993272E4A3DDBEF51E56234B50DB313A0690D4C5A65CE7C5D675F079E53D76F1084CAB4BAC7E87B93DD7621C51C6F7CB6DD167FA248A5CCEE32D9E58DBA36574DB2B52DC8CC0E53267EE6CEC2F64C16EC271638096BF3C0F0F732A1AB3C724AE1597CE2544C261B8DCF3F6F6A30213D96A89E8F16D32AD571311BFD47959A5DCB0E462D0D979347F231E0692CBDC81D2EB6E71C2443841193F010014A17343E86C8D489B4AD4B2E624B034AD7962E160CFF33CB09F477F9BE2DEAB465FC31DDEDB7F8F68109D31F627627EF20298B34DBFCABED465EBDF1ED1D1B85B883001723E106E6313600C3AC5C0331CD6F7E0D59CB047DBEC52F314E537FC86EA479976B8AD27D566B0EC39AAB383989C8F71171989D51E11D8F535DFB0817BD4C6A9F6D36655A55EE27CF6BE2562467A5AC8A435E97DF3C9493D7C9BA7E8F306FFD799249EE7CFAD414C3E5D4B465F15956ED937A7D6FEBCD259BB1A3BD0343E34533EB14893793DBFB32FD9A15876A7CF1C6866C1DB7B9C2BDDBEDB2BA9EAD629A6F70CB9F37B568E9B9F2B3C326ABFB4788E7B15A61879296DDABB513996A0D48949178338B466780636F964E1A6D73C4C6E309C623E8A9C16592A8C2D0AAD56133583EFAC196079FFB10532915B075FF1A0D96D97DE3A963F411F332038DB9EC7E4BAA71A03BCF17FA7C8FCEE77948D4D6F22AC167B4A75D5CBAD8EE477EBE90EA16C093853085D4BFCDBA40DF6CE64A77AECA68764A6B3E6AFAE43FDD6F43D3FF30855C664BBB84F85E7B5A9FC2B039F52B3EFA159B377D37A01A549ABDFB26A2976316720C7FAA43670363D8A90BA978272326B51D73B32509826E31995AF879EF91C89C3A3782011DBB904A2DBA2D074F741A97A8224B3418C7D18C85D103C5EFE4F23DCD899D55557697A79B5765C3D29F575BAC07A50DA68CD12854DFB099E1A84D96471AC74933DA7D325A5CAC7220202037D04CDE8B1884AB784C9794DFC653015356FE383627EFA508582D9D6969EF30DD383A643CF9C4090F08D1C9133925D0AD4BC96D35061C28B4369DD71C0646A706E16304D77209D42064D12D0F0851842BA394350788DC5273E8A6D62C740F04A75383F0D1202C763544DD596215A29D925096B65482F286CA05355601B1A4BD8A724C1956EBF5C45489AACE5840ACAB90B3C3A1E2F224AE14243550C582333DDF7D4EB14DF07E89FDD4D90296CDC989CA7DDF7B3B573D1066FFD721ADE2BB67E8539A6F8AD9B3D6084BDD761E1FD320D787E6686B5A7AD9C1F8A6A8DF1E502D96EE6F62B2F33A58B64BDFDD0ECE62E6726BF31A58F9C56337CB3618D097B3CEEC86CF357A732531E7CFD5392CDF3FC41508DF83222153EBA0B805452AFDD8BA35C52733C8E41FE9341420884D3568BD9C9EF03DAD44EE96442D724767ABFFEFA03DB7FFC76C4EFDBF97FEFF5DB941FD14D57F748C145EBCB94EEF65B30C35FB2C3866656943ABD3058889B3E99C730627D1C554B266CC92BAF3FB5D4FA4F2FB2C995A785BB75FF56E71C22C4E9BF5E4712465853CC1F57A9BDC4D9EA1EB339F6A37D2DAA55F899DF5A867CBE254D391D6F4EFC5E7A635CE7841A9C97EAA5E2FFBFC7ABF39FB5D71DCA7DB78D6D2E70E7434404200436141E2A9B8AAD87EF5BB71C6EBB33DB1EF0812886DE5B5A1BE727DEDDCEFFCA4F039203A117AC085A1301D548CF19A44BA918817AE4F13CA3610D87FD707F3173EE6C3A40A0574FA6C0F2E41F8560F932A1471C60396A3BB928A4892F1228EA9421109125311C76E472A2249C68B38A60A452448E63E34D9BE21663682A5C3A38EC32942F21221D97A58B2AB350F1DA4ABC59228FB61A16B18DA19EC17BAE49B818CF20B4C2AE4175812DBEFE6F57C05EFE5B1C932111DBE8F47140177A53C8142522BA7A27B8DDF23EC5B7CD5976177F2C08BF2C0A7A77D75C732A7A77D635A9072DEEF46FFB4EFCCC77319B72D7F4157482C7C03559CC3C95BBA6C71B2077545B4DABAB87E5A17284FF2BEAE98DA4421C72FEDB225CA9FDB15536BAB64EBE15DC4FF53526689E12321749CD471388546F280C6C2B6784B5B4310A7AECEECDDC18B14143591AEAC1B4C4235072205823E996C79FF03C11DDEF90012C8849CB3CB6DA80F0D59074A91ACC34FA9ACFDCFB9EF924D711FC4BB6427DF11646517F0098EDE0033E98A70743EFDC24F82C3094F6EFB226C671B8BC8AFD27D52D63B0BA7C6DAA77BAD6C648F71AF21016EE1608627803A01806A42A4AF1492EFEDC924A96053FAFB01914AC1084A58BC81402AE44835AB0B25A499D0830EB94F0E2FDEAD51B89266F669A7FAFDEE3A34BC7BDE62AFD65DE6FC9DF493F24E52A3879C75A3658F01B988241D20E3982C1692A0B1DD898B7A7069F7EDB0EF9677DC1ABDB6AD2EFB2D52A0791F01DB67DAAC19C1E2E4D9FDCC79D9BB09C28EF34455EF6560EF7373ED45F5B1759AF317105FA5DBD402A3D396D81857E908F707F7D32001E7D8612ACB6B3C6421F0BA0E4C219576C6164DD56D306431823B600424528967DEF7229B8BA78A0127E3610AB9BC960E1FE295B749376313DD3DC5E4D4E17BD942646F2016D34DD617C37343C3EE1F2B7D6DC772B7B7D2EB0E67BEBD74854369163AC3C1AA7E3AF1BE34BB7DEFA803E86F296F7443518F2E5748C4795D31E5C497203405A7A8458213440AC1494ACB037EB62068D42FA2514A3D67FC2FDBAE4397036FD211D12884B6B5E517736D3607CEDDECCB313AF5D18BDAE62BD826656BA03F7F7F2D9E793A2FCBA26C5B8695E9EA97DF6C1CBEBDA8DAFB98B7DB74BDB001F7695BACEE809B7370F0B05B4206BB7401ADD54DB07C41D0F657319586E473B6BCC2874E8CF4E072EBA8C56E09D5D792CDE92270600B16050F023A3D6D1CEDEAE5CB82E77D64741A0ACC980322DCBFA606540E990A04A1860E24F5FC500E73B312CB519C4EC1DC2998B378ECEA14CB9D62B9E0B11CE5E024C19C800E76ED2262FBE11C5D92309E83C97484F717D1C1E5AA423AAD5C268AFA08EAB89245519D8850532197711D5D9824B01311EAE8E03AB4A34B93C576424A1D3554D19D520FA297345286CAA7D68820D7568BCC3337722D4A1C684DD8BFDB673E85A8916EDF45562AD3EA1E1BD8700BEF6D897056A25109AAB347249F0557F68C38CA74BFD6E1F37FA6EB5A52F0B3272ECA659F30F2567073D569BAF9A35ECF0E80CFFFDA67086C3658A13F6B3C94F898A11E59561BBAAD502A8041B36CEF3B9AE072DBAC0B6E83C7ED707B199BDE5B56BF97D9BA2CAAE2B67E7456EDDFA6F5A33EE3A396E5EB12B1FBB328BF3C2239FEED8176BE110F3FE8E2E1C7A79F6F7F7CF1EC79B2F9F1F94FE98FCF8ED93F2B30F2C3B3E7564A15C6977F54A876C0A092ACEF9B8E6C8C21F9542E640448E69D924ECBAF6989C6351F0EE9410A6AD9BC26CDE5E4BF22D85A1DED76E790BB824D2E0F78F2B499AF7CB79F3CD94FF2383509799398FD005C8BADC6212E6A3EB8C9746187CDBBC38477CD264EF392D0862778610AAE3B1390CDBDF8E3C98FAFB3B2AA1BC6735AEFC8E5D47EBD2CD311F7F279592121CAB3BA4842E9216C4123BC6E980C743B12D181AD49486C79D29D290B9E701712A944B7B50BB361FB139E66C5009AEE0A0626274F70949E60385E10C00F0CD892BB010119D89444B40E9CC05894D80740340AB96D7A80671FCEE6B47D94FDD4EA17B54DE732B9AB90A7D8A7B307BF39B641E372E6313ADF7D2EAACA02A3F7195EB499CBE6F5617B9B6DB7ED498F99E3FAEEA5F8995CBAF7ED2DD9E75396FE3997D5707DE07CCD2E36F46BA75379BDCCF2B92C86B681DBEC6CE5BE7E9D5D63497EBD4FD616DAC642F684CD1874A3AE483CDEA612C1EE95A6B0BA75AA670FED9762D384B2CDD919A58A533AFE8208854E9509682D2A79FE6135272A41D94F518997A8E4BA4ECA7AFE19EBF37CF3BEC8C6FE64E249ED43EEC5BFA1721A8F66D1BB69B4518469491BA553C136CA90183F31D618572A5D47C10B86138432B5A9B35DC6DF2F936C3B7326A3E771721E6E97243A3337963D39A0581C90B06DF7AD82BD588E4D035B384560BC3178C4895A3A8A5820254123979624B4EB298722407749A7CA65B4E038299B4DD89445E43FF9CC487766359879F12AABF649BDBE9FD33B0E4C4E55EDB67BBC4AD769E6EBF1E9BE302B2F2BBF2DEAD174C65316937AA7019550F7442582DE94A6307F77B7AF290DF948629198238D425A827076E8FCF30AFB84B4EC2E8B9BE324585E275F2129ABBF59A769366F8A3B4B3B7D8E788E8F459778C24F4C09362C09F9C4DBB0FA4AD5D785CBA8D088A1D7D38BCD34DF795C223B9559B23D3B6CB2C9CF91F19C4E8E63527DAC10C8DAB5A2690F3BF5F94FE6974D3A203B756B72737DB69B0DCFB22B5DC7D544D831F508B8A168295F049140EE07A49BE771DA0A4CCA6F17F99F8863FB40F0A4273A205627D44BCA6A0C5479D9A06FE7A676BCF3F71607CAFB09FB7F21EDC9894667DA9FA17AC99B0A735ED2CBB238DCDDD72FBF392F891CFB049A06A98BF597A6CD1FCC4E2D900E63E070F2138ADE91398D3B716E7FFA7BA7D03E93AA426E65FEBD3FF87D1FE446921ED3F3D8BDDBA7396A08185C334389F44F0B5CB07AEDA1661B76EA6FE7B5C06B1C2E5CEF8B6C6B8123BE51E23A9DBBECD3A3CBD7D09BBC2B6AB9837D5A0B381A1D3DEE0D474F44A462323E2A95D09A8EF4C97AD7927F24160BDFD328251F08273CEBD0EF4B54C84C50C2020F045269472ACB2F2C3385004F2CC3142A69AD3CB2CC5E57B39ABAC806313A052092B26CDFF4E7798CAE750513040AE9254C5A19B886A197CBAC9D1C76442B39DBEF1124B176CD57149B5F54AFB7C95D355871FAE53D2C6F7B8D0655ED262DB7DF10144860D1157C9936DB9AFB25ACE46B728D1FF47AF8E053B23DA04F4F38485039DE22C1BFA6F85D068CFB643BE47CCA9BBA352AF9F1ACAA8A7586B5E76DDD9C06BE596D936C5731529FE79B076DDDC3E42344DA3A68C0C850A2D6818C9835DF10001A71599FF22E6F0FCE3F38C3F15CD39556EB64C33712A4D9C650BE1E8C847CBDE368C830152BE17FE10A46DE0E85ADD8ECA80A10A6922CAF79D798E5EB6C9F6CB52CC6E4D674AD8D118672D89457291A3D34CA6999444780FE98382FC4501653432A4BFDF29840A21940DF147759AE0FD0963C5E8076F229008AA93C0194B6580080D226591C401BA5F4F189A9E385672B9E029DEDFD4E5EC049992B0036297B440FCD6648083E0E25AA7E510608A024ADBAF635CA0050A668044F1E3D7A6A07672AA13C404D657B1D119827CFC2838E7CD84B0B10E0235F9641073D0F161C748050BE4107D85E4704E685C0184037BCCAA68907FE8536EB90E3DE76238A209F9173D8CDDB0029AB867F8CB275A50751F201D120086DB69236E735DBD5461168282A088D7843AB3E08697E00F44691A2431E28BB07BC8175A053EE902928C8C887A265B0005F8B9E0534E85D698223F582758C6003E4F70437A02E744A26B285851CB12B4C0A10686BD83CC8019BC848C891DBD5A2841C2FBF2FC8F175A105397A9B6310C8112B8CE9BA2E4A21E658420874C47AA63EF438C630F63AF1A2439E487C0FD01355899EBB6B7204F7742D5A545E8959029FEDE5E8C5721D0087C71928BB47FF46D581AE771BB6A9850499C2B15154F640B6486706CAEE0F6413DC589F2924C8FA2B3F1AA0485041900960365C3E628436922F3C2A8D126880D87E9006D483E688341290A9E73D386257805BEA64885005EF105CE8D4C87013529DDCA5E37B051AA8A17338012653C462D109EBE117A27075E9C8D0658907A53F0C674DF4713AE6718854A290856395D724045AF94AD392A2CF140F627F1CEE8FD7C6D290C5215EC732160E574E911068E56A4C47883E4F6C58FD70660AD50F67CE918A8A380AA08E7A84C3E9585DDA30FD70161D4A57C6285DB947E9EA4850BA8A00A52B7394AEE241E94F4DEC7C9EDF49672D05591CE2742C63E140E514098154AEC67407554D9E78B0FACCA4CB7FE6B4B77FB6FC8EFE59D83EFE9959F71E53CFFE1C3FE1853E5F1D727D4092B91C22932A66E1108574098155A8EA74E420B2C583DEBFF78EFD2AAD0E3BE9D61F69468718664B5A388C05EA8440B2A00E4DE28136673C787E6132C47AE17474F562F903AB1761C7542FCC8653318DA47EEE9FADD0864B9FC321228722160E4B568F10D864AB4B47862E4B34287DFA64B83F5E17436316773825CA5836507945022095AF311D21FA3C116195BE90581F4C543E97A8A50B5A3A74416D82E017AC402D7F8B72C403E0A7EC75FCDAC862733A043157D4C2612CD227049045D5A835DEA2B3C6714897C09C0860027A678774892260E40A1A4978E82AD4F00058455DE94830E68A03A1ADF14C0F93B3B99CA1952B68C907CB45CAF846AEA8F674E460F34681E2E63D0F0A6E3AD86233A9308C5F26990663AE2800C5B2E612178E45DA7886B1A8FE742767FB7CF120D8F0EE22268F6BFC4678899140AE10403C8EAB8CB02AC3CB52DAD0E05F98720341EE69AA2800C84A15027E6C0D68818F7C352D0AE8190E97E82C8EC1771CE326589300885DF4E8E9B774BB39CB93EDB72AAB34FD259C45845992DA14B4829242BB4CB9589E1028AF856538CD667211D551AD013C9E5430318AA90CA74559CE21012616C7CF34A6C0CA0B0394C62C10406B1D52CB9DED91A8E013874BBE3EB0D54023100468AD2371B9319F44059F485C6C94779D6D2E93F57D96A73A5E11A416DCC3D5111A5EC405B05F986F942AE10193D23A5A9A7F2470A4746284E2B6FD23C11ABE4E4900F6F06894A8E0D33FF275A353FA982B9E51F08023EDA1E96804C763E0A120C14E0D08FEE111AA5423C49099AD33CDDE1CE7890AAB3AD38C823C3EF0BAD0A853439540A85D6614CA6972596CB2DBCC6CB271CCE31CB94451514D37F2728580215F113A528CB9E281217E07F1E5B73F7293FE9EC8E41C8864590B1B27E9E81202BD40F5E98841640B8ADFFE11F49BEEDD63C9BDB330B908B33DA5295E811242FB4CB1489E0027B6BAD64C7A9F290EA00DC0D042C1F0C315CC861FD1A08C95C837C858936B95DFE5890362BF4BEE3566099D01EBF705DD6E2C12DC37F47E5FCE0DC7A4DCFD964B23D7C666520171C23E1D6151827DB622CCC7055091369EC12AAA3FAD2E99C8170F828D22402A876BEC46170A82528500E0F203C2460D63C7E9C96946171C42420580DDE243445209E9CB65B24C9EC0277ADF8C923FFA1E1BD22620724D9F3E23F3458360CD051B388B63F42E7BB546AE4900DC2E7AAD064F761A6E0C17E411A1962237C5ADA8ACD0BDBE422E4F3054D48456C4197C332FAF88D6CE0C388B07102E7773865C8F20985DE4F68C5E80D5B981E79465926D731BE9A76C78034B8BE1DC834C300F48D4A98D65B84F4013A5FF94E4F102C565BA500D45C220F7589CA8C1190A30972FEC2E74F4A4A54C30042F730C05E8A2B1E34D9ACB0B8A23D9F7A6255918482E7AEF1B1C6413E8311FEE10A6F137C6220A95840AE25611DEE99AE8167404C6D7AF491831E68E0BF73A93B0A24C7E70BED06042479750785E6628C1ABA2B9775E94C9037E23092374040B02C6230A227477D00B737980E3C237D12B950982E1856FA30794392FCBA2845451838BC8EA0BCF649100A8398D96026D40AF70F806EA551BE444DE90B73F20E93687353EA1DD2829DD3B03930BEE7FE8280DEF7F80F8C347EE0769A343AE5C0D0F6895D7938E0044B658C0B9CD14379370C4CE80D97217C0B295337650522AF88724553FBA80C499C24505B8F84F09AAD7AB745F9458911E4BC2CE5992098C04587AA3484056188C56415B080F571D5D7CF4FB1AF5A709DF2E5760FC5ED7C5FA4BA70A0F3639B2A479C56826B299A3595E2674EC45D58262C1B69666DE20AE55B73AD270992302BCB6C386337980F8D21DB65C9720685EB8C3BE4AEB4399E3A3411CD4E4B892E4142379C8648E63597942472D6939B1605A432F6FC0D6A8537D274D648EC149EB1FBA15E751B8E849B8860B5ADE895BB5327EFDF3F2CFDB32BA18FA677146B7283E2AE7AC562B00A88FC935374BB01AF36F10B118C6D0BAAE1AC20CF765CDBFC954F00651B87E9634FF8635C0F0D1C04AABAE0310E27F826E5D8065F10B24D2BC3A2537F4C1E0D3BFC9F3B6A8D356878FE96EBF4DEAE69AEC31A9FF288497211F087E62162670341504DCD900281E9DE79CA8A887B630110B3A9241F9636E3B4883DB6C3BABD9742C82B6985E064963E9355D623B61D48BA38930F56EDA3AA268151A2739617215DAA7E23B92739B72913CE36FA96735291DA6385C53173B1974C7E64623719C365C6597350E10ABE713607267C05DEAAC825C09DF305DE8CC02A943337F47214A073E6C26154C0D2770A545298675714356A48D67E08AEA6F39A16856ED937A7DDF0BA3138E0AB380E865A88DE02B2E296868AA14CB070A95B5B0901095D543E310A5248F73082EF704A5862A2170BBD8F3939C261AB1A9308B73DC2E364E552A1202B4C712AFB208D30E243983B88D5BD9E2A0D855D15A2280B2A656216258417D6AC5B14CDE68D0AD134908B33846F482C308A52601F0BBDC208250E41285E225E27976D864F50DA2CDEEF274F3AA6C08B4102C63A0C23395772AB2A502C4B29AA023A46708EB549C8E4874CE08416DB6D825C81B00CA914C3CE8CB1714C08B9D8AC03D68527E1B0F3E6B9C6D97678307766C0EB3A19DB4BCA59D79D753C7CB204FA71E75077AA1CFC013DAE03167F3556B8642964D01E621C7443843252E6DB6424719BF6096D4E342662D065DAED3F26BD6BFD832FED640B320A71CD0641193102D2A1502B5B8AC9860ADD0C82BB21575AA05EE315B6CF0368A3C04397DC2FB2842108546E1E07D0C8108AB906E2402E6F30CED650723526D82827A81E1C8F9EE738A9BD555FAAF435AE94C6A88B3403066A94D102C2929E4CC855A2C0F2854D7C232E629383D346E2791E4710EC1E55E4DA2A14A08DC2EF662124293759AEDEB1B0E671AA082732A508C334D44B1A04000CBAA661315A2E56AF9C5B5BC4E756461F3C6837133EFCCE6718EEBA3F0CE225542A0F878BCF3F5C52BFC53B6FE2CCBE41EBB44599184B742C1824091AF0B2D2C8ED9E201E32754626180C396DE3904BB6200F47502C7EF36691542E094AE2B1D09DA1C219F617BBD4DEEF49E61A52905CFAD3544866FAC317C03BFAB064BE3014D420B2F6334DF8BDFFC239DED67092D0369600BE068902D3A672692DE23EED8FAD029BACF131C757A4FA032A49691B7DCBDB0620D3CE26FB17B5F7B05F41E3065482D63309287C5C4E27804D4621F11EB15B84AAB62FB550B5023A96540118C6300142F8E4740F146D6297CCC151C50ADC9A44FD1F1A4960145305ED85373620D3C6290AF179DC2C75C2131F85B926FB6A87BEFFE2FC320432AC060CFC80C862CEFC07E4D208E1F4C09ECAC537897250640F5AF29EB20AAA77502A981B9E4D5ED281D9B4801BF2864EB46730080F34482438D51284FED0A8BCB1D8E8A95F08EC8C50E4A71B3689426DFA8D79AE995E714A015CA64085D45B9813B6A3DE9FCE053AF861633730CAAA3D3AB4B337A06EA623B7F2D6D02E27AA9618148198D184191D53FB2971B4A686A1416DFC71564E8CD842BB27AC6783C33E79AE20504EC9267D63F256596E475D3E864E024C80440EC280CB147F2857D69944E1410DB0FFE807AD0748E31804C63CF2C48ED0472CBDD212B55C22F0E17BB2B96D6A147921E6C869F6E50D9FF845129601F1B2A1925BCA392A9234D5476B942A2F27F24557BF999D6D4144F2D40654F68084B807FE070502C911F8C892DBE98E9A5410545D047D23982D5C2E23E486ECFB05B56E437888D7FA836C2F2D48E6037F207C0378A1A3504391D3C0391AB239DF2874CC14169D0BFEA75AE53B01859B71AB44F5D7A877A436CD652D6FB486B1D5204EBE5ED2813A9E013877CDDE8943EE60A8F449DB84E15D44DC2DE12C3B940B1DC12033983284E2F849B04B2A5076F4123B7A5866D6F8BFC7D5A5645D36AD4911B480D01912034C122CC3F64082795C803BEA4165F462047AAA0B1640B933B025924CBB172913CC36CB1CBAEA4123AF7DD0AE81D416DC937DA2AF4F00CD005DF5E4BA9A15EB585C95D0174B10BB7722D7CA373A94BB778FBCDF8406691DF66E54EDA550B734008A5884D302A2E256497AD94CA03EC94F6D70A10C76C9140AFFB61003D228743E891A5C4033D402AEFD003ECAF37B737648B067ACAB9665106A7C05BEAD4B34A8F00485DE82434AD86C6F67E510687385DEE067E951EDE71BAD8CDFA588DDFD2EDC6E02CA0248F10AD24B93162056505EFD4E572F902A1BC269631E9C82BF2BBEA9C9F388B0710FEBEC8537D6A3D826096AD374DD719F6249F580DF6189239AAD89335FEF0CC962C81B7E2B455CC6817681914FC823A37690B0C8BB89A8656FC2BC8E4A7012C391656E8120AD9C712136BAC83CA3279C06F242BA33A820501E36257497955F02E9497DFA417F6497379802359DA12E7C054CA04C13050853A7210D9C2A2180B623ACF20C824C430456F0C625169C17DAA42305F7854D4C682261B684DF4661BE03C5EA0B8E00907B9226190BBDC2907580FA339072D165E517D74D30E466A866D02C736F1C069A935F320CAE5AB192C79F241A54C307C2F78FA81D64577FE4194CB0B8A639A825049160692CB9E84A075D19E851066F302CAA54F4428B50983E4E39A8AC07F9D97655142BA68008CC8EB0FD564A1A22380A4528B0138A05840940375AB0D75226F30BC5F34EC518D375ADE345DAF7874C893426826A99C824A2A1880F89EAA218084E31BD924D88AADE401A5624BE814DEE40A06C4EB6CF3E469F330EABBBDCEEC2F4C0E0192A43471AC82124206AF72913CE04B6E7583F9DDC64E41A1F6E3EBACACEA46959B0B146F20AED9BF9580136512C16EA437059EB0A4D0F05309E60984AA9AD01283CC180B183566A484399CC270B9B3504A45FC6376B1B34F8D1E3FE15838CBEF0C3CA7208F08B103B9296045E584769B0AB93C2150510BCB729AA3329A3E13CAE01080CB7698323DBCA375D1EEF2D98733CDF10C452942262232C524CD37B42B04A5F10429D0C206C396C02EAF115FB9178525B40CA4656E351149EF11778BDC544208AFD3C5D2A4F691B7E00E15D6C02FFE96DB893EFFB0D2C5204D2AC220A232C520C37881188435F08441B85E1686C1AB43AE08E2062ACBC86B79860EDE38493C8287B2AA4EB9384350C8FCFD32C9B6DD08468A1A9250049C9EC6143D14EFA55C3C2C12DC13DEA0FAD074557100AEFBFF65B111EF571065700640B20C0088A4CC71031250C4373081FAD21181C8160750D53D2A4DEA0C9C7174B0B038BEC1B5C0AEF6C5ABACDA27F5FA5ED9D7529422380D44A678A2B92FA9BB0525F7843CB04E96D0E18E825FA5EB34FBAA9CE48532380421514868D72613CA3BCC78E36BB9B9215750D0FDBC3A5475B14BCBEE1664CDF50571361100D91CA6389494181A8D6AD13C61525D2B3A82C4B140C1E9D25F81F7B6689FA233020B93D91B48D972C19301B45E5176E8BA8A8502BAA07E75C461B28604FDEA3EDBB7B7D7A3DF49B991BE5220A01740BB2735443458027C0BFC20708C0096E9E107B3B2BAD29180C8160EA275B1FE725D27F5A1BA69845915DB6DBA56440BE23C2054477223A84A4A091A1EA8E5F2013F751D68050674D6686078515507230CF6191C0270282226F4B14205801E6B7A5DDCF5F9A2005DE38BB7592AB90C1EA47604B791BFA0636E458DAF5B96E9E0199A5C1DE976C938532CA0FC949459A28FCA8EDC1D2CFB02605CF6D2C60E4C460BFFC864EA49139A5DAE60D864CFA5AE9AE525ED03D05AB921E442194D20AC57F0228F411BA9E601E64675AC234FA0A3D0E7F8A02CCA53A31C69D909434479AF3E3789E95F08306B3C7191E47951E3A47FA00870B52D1B1C55BF3EACCB03DF241AE6D769DDB33D6C5097B34E915F6E93C8C0B24B03E04D336922AAF1590F8E0F9DACE0D59EF4068461A35C051FF250F56A9B643B88294764C4F64D7197E52AB698C8886D836615D7F698B882E9784908C48EBC4244C168DCE6063122F716AA190938E864ED0308287F9FA6E0423CCE0831A25EC754B11A67504056E41496062B1CF989187521B79ACD351A4C17602D0D8946AD19A11762C69068B1A42FE90559D2241A806876A08B00D16EF7579BEC3259DF233F2BB05997AAA56133A84C90BF94188D203162A9E2A776301DA108AE64BA9664CCB530A0740C8D66859297240A6B962452F065BB71882D1F6DA94C809BE4555A1FCA5C54DF3489264B1CAC5FA5FBA20491CD1169B2FD94A0E851C59620D26939DD4BA28296333CE3AA259F582813BB496BA2A7D064280A44C6548D0E785C0B6AB37D4C77FB6D52831814531B15A45B84317354A1B7191C9A302446F20AEA8C5BC73460A9E2A766D66DC69004B53C89818097C8EE6838BD6D226C41702620D6101D8FFE92F29B2C3AE1A94C186370365F15AC073A03E68A080D2454B23FDF7D4E713886B7C9EC4193B334264CFF75482B15534CA364FA098D25E100AE4D513278BD4DEE44C6EBD3B4A30561C4CD12A8BBF6A66C4187DE24E9B0F82DC9375BE118A44BD50E33B80B9985B10647A92EA19B2D13701DA62AD57DAC841139E7A996084738025F4B24EB455322800D89DA12C9C4513221DE4387F8508FD52B58E13A96B87B265D879B62C003D0E87055C5DD10919A6F51A22F30B72E49C1E32ABD2DD3EAFE63F12505A744C8740D66BBA4FC02B36952D40C1453285AD3274D079396083C1F0EE941385D3052E83467E2BE37A83D13C91ABCC66B7B44ECC8FB9534180EF75A88F811978F68B07BF6E14CC4081FB4D660F1FCC34AC4029F56D460D11F1D10F1198F672898110754205ED419210DB9861DBF22C1883DD61AECD83D6C22AEFC9E441DE6CA8095A7D29AF5EA763189E6BD865D662A56EDEC378A0A2FF23F11DAFF5914709B00E83498138B97004B22D5702662258012BCE8C43027560F88E97C7A96FCA69FF92688E1F9F49E925DDE1857B2E00CC39AD9A0EB3085CF2D952879F5CB60042F681A9F5DCEA22D31C14AFD44BEDA4A1DA5BE666D063B56EA7829ACD42B63DD4A5DA7AA36524BA8AF17A6B763A29695C2429D22B30D44CE82DFAC8AFC362B7778E318602321AD58375116C852B225363DA680CD40F3CFB553F743CB4E24ADA64A44167B762299FAB3D3B83CA734D340AAAD509FC3A691069E808DA8B5C8D9966A8EE2118B7EBC7D6802B106141D648B766829B101CD01D05CBC38394D6F6ADE0BD69C24914B4E504ED69EE401E84F4FE8D93101B9B62A3081E8C8032F3E70D8C1D804C07106D204D452F16C1310BB0BBB155DDE061C8D58019614B202B9422DB105C70A36C6B04A6D0D0DDD4A91180BC0FE5AB016E99DB5537040EF9DD5B2E174C5C500A00994628BAB5E57717F35DE5FD484E7F540CD490AA9E004A140F771E38BDC042427B817B0AFBDB4FFE3E974E597F68613ECE1AD6F1C6EF0AA93BB94984B93DA8721D6528ACE63C9520C53DFE6FAE122FF8A9C53518271B98CDC40BB319755A3116C7D9BEDC7714A54C36A23B581764326AB361BB98631593303AC6D31446CACDA873307F6424C03996B6562AED50473AD5C986BE5DD5C3F350EF43CBF134545226A03DD864C562D3672F56DB2679A6DF19959337C66B9053E0BD0F89EE31534F4F9EA906BD988CA60A01C99CFAAD528C6BECDF7F71ED3576975D88946EBF23C06BA3259ADDA91E5EDDB942F347B801766CEFF8565BFFF2280CBFF7958C2D5B0CF406CA0549FC7AAA506A69ECDF5F4C9B8B0ACB61741ADAFDB98C9A6C508AEDE4DC62C6DEBD88DCE62A22695D3AE0569D6BECDF894DB7CA061482E9381BE6C5EABC6E4983B3627B5DC324AA35C1F224835D77248556DAD0F113C613B892A61AEA5DAD20CD6D3B80C9A1AB2F9ECD98EE3EC7C858D39E17543CB2D372047AFA7259B4D65BE7633ABA60939E68005A5E7542D98507F87004B6EA0A3FE3E0173FBF9DF2E808B1DAE90D4B11A7CDFA45C2FEEB2496B16E32E95F4602FFD9E81A1D6D74BBF7F303699EF6E82DC81AD869A805AAE1E9C496439D996705DD60ED1F67BFF5894D456009534B0628805615A7FDE571EA4B1BC7C18431E5D40641A2AC82309437B78DE9ED3162A77451099862672E76368169FEE663C4EAEC00B4C28DD76C1D30BB6718CC7DDE5FB380086FE70431EBC97E08620D3A86A42A9F9B82198C13B1E4476B6D14DF55268F55203B1414F32AA69BB8F1A380BC6CA601558B299222A12919B69A7888B66592E5C6074596CB2DB4C3B3222C80D341C73D9B71EC1DB71284E158B4F72BCFCF647AED958497A03ED886CF64D4732F732EFD01F2EBEE96E878537B80928E58AF11944F6226E5E51180BE0E918624389E3F52F0AFB0C849AAA0C3FEC5967F8E1CB38BFC3DB03391A4DF97F87B7084EB4C6EF4EB70932570DDD907FAB6CC2D1EB69C46653D94A6B6240C85C307B27AC081B36D4754634B18182BA2EC9DC74BE1D5353A809DE2660CD19CE7CFB29B24CD1890629BDB96AA2B30E56EC263A04C1DC4066DD86EA005F40ADAFA23ABC9F6C3DDFD13D7543847ADE53442E5750904B643CE9AD15DACC1D375BBA58D5485C406DA2996A2C3EC76ABE46E33DAFF1121DBDE963905E3D3B036593CDF988EFF6D167EF6196992857863B19B9917232E4CD375D40ECE94D4BC3194C75D498AA9E65436FBD0650BC7C56489EC1484FF9CCD07C3BFA9B1D82FD2F29B9494742E49BE2F6090B38EC5C8852244D5D72BF9A254B2BA24321BDA1CE8A0871A645030689EA396021BD8992EA59E039260CD5D2352682C5194C14D4980A9E633FEF93C140F1D43DCDDAB6143E13A2A331F44A886DAB420F82106500D758DB5891EEAE6956DDA920A0942E210319048BD2E34DD2F2456988A397FB16C88285770D8074DAFA086F1E98681F3FF710701787DF90577F038D53462F6932926C6083042E3D97B548197BD884A22A996C43E24EF71BE03A769129E5D9542A4B738B0D4B5F52AF34ACBC14682E5F597D56CCAC035501BD89CA3A509D6151FF501DDE34B8019E231019529649A5AE24AFD8A4E4E30C4A83CA4A1002545669F300AAB5682721D7C28FD6921DFBB8821E34832CD831C5EB435392475F5B7D604EB3666058E2EB15A5E10F48A7D28F2617DB4C7D1524C8CF4FF8830B6D5F04919A05936869D0AA61C518F81F87635DF1B3253764D2F8DC086F22531662BD0D394126963EDA2231B969D1E0E8197CC6C547150D2FB74CAA9D3EF72CEB744C3CD7495FAAA43AC6876FACD6847C094C40A9A7AB7CD98B792A47D37E7ED6BAA8120DC139118EA60034305904209376D9024A4DEDA4DDF6448BF9EBBA9907A62827ADB21547AFA71D9B4D6537658C2865AEE860ACD89079044BE1D2C4D41215859940EB295EE5D265EDD2C3B1A5CA97A664E406AAC917A6E699CDE7B21457B8DCBF89A90DF493FBB959A60BE8EE38B9355C1E9BC7C033719ADB767D6C0190FB53BDD937DFAC8AC62CA6D6D754D194E718D16B4B26CAA66FA541E4D95D9E6E5E950D81CA8ED2BC7AAACB58A86CCCBE8CA3696D69919EE26B5A06EDD18828DB14C5B5C72956CCECA97F679FD654ADAD2A72C8BA135946B8B7025E07957658D212DCAFBD42AF89AAFA7C690E2D5D818C0A6B924FA2EAD9132AC3791000BD9EAA7A51429D49475F415EB959656F471896E3FE650A810CBA6D5F94C958695D0F30D7B881FC002B83862380B34C5158C3155830AB1F67C0BE4D2C8F0024D46215C599201B020F2A4BCC27E1EDB077E74A95EF2190911BA826DF4130D36E3EF70FB08F6CDFF00F644B8D28C8A4A52D9C5761D0FEB9703D830A8A00CCAAAC331BC6D5C626476EA0AD3636A798322836AF2F5EE19F8241A894DE44C7319B0B0B12DCFDF8C5B6DCFEB97A0DBB75A4064AB5391C58AB630C18AA4DB17490A679F15E79028E21126BC1D10A0EC93444CAA3310C27B7C7DA7061CD3F92A7DC681AB5EC3DE96C230C8C001BF46936EDA03C95C652A955509E3FD3B786E7A366B84CE5F932964AAD86F22499BE45FC1C25E94BBB4AAB62FB55650B824AADC0483CDB16042B0FB6688B109DA501A8D40A8CC4B36D41B0F27163DE6F49BED9A256D9FD5F6011964AAA06432CB04897AA340ACBCD2D40FA521427A439322D151427A24D2DE2F1083451A4BC9301087575917735138CE3FD6C337EB3CAF492027126A99EF2BCB273CE4C26ADC3CEE2823C5C5CC016AE737B81308FB9AE3AF718D8B0A9EF1B0D80F235AE3590E49AA4B2C60507968C1BDC1DE8DD7720C965AEB6DECD07360CEC2D9CFD94945992D792E77B490AA92204A1C03C1D85D2242427A7CFF7F605C9E7E660422D0DE4F371134CE2730E8E2EB6FBA936504FA8ABCFF0D39681FA9FB081440CA719081F04573E8C01134AF5E1E90506EA0995160238BAF52D438162E74291E8492F762FE69670EE608692F00FC9C41A40A8A7C2406FCD282347D1C5071627DB303FBDC663D472F49A8D9E51FC3618F5F3151C99860ACAE72B4CECE1F91982B6508513D1F4202AF7A169013F8E43CF6B18B90C3D7FA169057F9EE26D91BF47CDAC68EC2E751630A15817901E320D4128B70ECCD1A1E3200B940F8A04947ABAC8073F93CCE367944396A8D85D2722D55347B1936E9289FCEE9AA34A968E8904949A4A494745D3ECE4715C8407EBE33925F94B826262B162C23C90B92862A9BDC46C1DB63EBAD0EE879EB148625DAD883C368D45B2F5682C592028A4D5D74916124EB794BFD8902E593EE32AA4D5554C3EBB3AD55C3E675271C9FA4F2CCAC815EAE93FB2C891AB6DE7FF9945BE58D9A28984DA4433D942C95CABF95A1C1197CC4D929BD891CD3C457576C6DDA195D9A2244657AC1DD8AA02959F347F7D4D96CD916D03FA4DF9304B4A6FA2A47CC835D7847E465F7CB98ADB77E5194C1454DCBE3BD77E5E6FDFC5C51BBC1322A5576869F052084FAF366280B7428072953DB8F16B21925C6E4CE7B517878BD6EDC6F5724FD25EB723B762EAF05DB9C94DFAF20CA60650F5E6730DECB73F37B94E5F9EC1484F8D2E7D961D3D76EA4677EA2B7218E9A8D3AFCF3262E89E5DE7627D9D6CE64A2BAED6B764DA0097EB5F6C525C4023D84DD70C78A3025462ED7862C8644DAADC4A001FE8C5BE8EAA2100794EBB4BFFC9D3E6C4D5BBBD229C14508A958233086ED41F28A57612B074E8E69A127F7C9D9555DD147B7381FC41966CB37FCBAC24A4972B26CA26B2D848AF369A90B73FD3C9E31431B1B662F2F86486C57C06264DD13F61A799E5777A701391CBF513E412996E20575B4EC4D931D4C662D548036975B552E36C92B17CA3ECD98733B5C3A789E4AA50B422D32022B551684E8E71D314269B09E068D4B2CBC6FC4646F035BC27CA53B41C864A4B05456B31B186D716F2FCC34AC3220C955C0D9A58641144A5B608C3CA9B45AE0EB9D85F8C046AE131DD6C13B45C1CFB88BF5F26D9B673D222D5291AB9DC24A9C8003D8DDA0A1437773B12A9A2BAFF5F161BD1EB6430ADA62644168BF621B902762292ADDB4BDA68182A4D6DA4CD678275BC34A417FD95AFB2964413C9C5A76845D61888D4E6A0F9B96D4D6359DD8D3092400CA4D55565CC62D542045BC7B0F97975A8EA629796DD664775E02AC921574F9C51643B3687DA8492327C1B92B97158DB9C6C3E4385D98B8EDD99962D49710B3F744C669AAD57F7D95EE7C64911A9544F2887C0883DA9D276204F0FAF7936AF635DD7497DA8F01365AB62BB4DD7E2C62D2197A827CE059A6D24975B4DC2D6654B668A6D5E6DD3B5D740ABAF559FC5A6A5069E9ECC24BD991426D453467A0BE914EBF8BB7094295572BA5740A9AD90E47CEF4413793BE0CBAE44AD9AD183CEEA9C5E46B1C25AF9218B4219E5B6D52BCAF232DD2F8F5B46AB22AF932C4FCB21ED97C7D7EBFB7497741F7E798C48D6E9BE3E24DB6670B6ADFA84CB64BF6F063963CEEECB83EB7DB2468AADFEEBF5C3077FEDB679F5EBC3FBBADEFFE3F1E30AB3AE1EEDB2755954C56DFD685DEC1E279BE2F10F4F9EFCFCF8E9D3C7BB96C7E335B5F2F70B23ED50525D94C95DCAA4A2A291A47809E15552279F930AD5D16AB3E3C8CEF6FB6DB6C6E679F5B9F99EFEC5B4AB5F067BF745B6C06CAED04FF1539D7CC536199AFEB9CFD1FCEE73D5F74599FDBBAB9012C53D8FCEF6D9A38BFCB64495591ED6F5A14C1FF5CC59DEA3895F23AD9BF56F6C8094C084382BCA7CBD4EB649F9BE2CF669597F7B403EDA78B141162AB6875DCE7E65912BE6F412D9F9F94FD7E9BA6C804A72A353F43936FFD29CDA2F3C875F1E339661ABE531572F4C53612B5A0B064D672A79FF65361264FC35D020CF2EB23A8B0533148CF39E2C1F3A459FE3B8DD83E548A7E8736C9DA9982F946EC0BDA893ED874382EB81614C2719F26C76BF02FCDACF86BC70E70130EBBE9BD4CE70328BAF1E2A6902CF77B9806393A0CF8F386AC7393A3A69024F56462A419FDF45B52A76FB6D8AC62F4CF32313F4F95DA18EB6FC42B3EABF45E33F455B7CE677A163CF0EBD33ACD393AA38B8719F386AE1FB3DE2B33EAF3709C46AFCAACFE932DB6CB629CF8BFC6ED0AD67EB2F39DFB50F5FF5395D1F6E6FB3BF683EFD37033BA55FD32D63A4F69349B797E5AF12D6A58E5F0DDC73566F59CFDC7ED2E771BE4BB2ED757697274D6BA099B169FA5CDFDF17754133EB3E19F0685F767D9FAD79C9D83463AE17D5A7ACCA3EB3E6E353F539376DFF4D92DF1DD030E34BCA74E75CA2410DE50992E4B2F88C0443AE86A92236D194EFBBDBDB2D1AE2B4AFB0F39CA96483D6D64D1450AD4D307920E67251A15E1CEAE686CF26BC5E97C5BFD39C65D57F356C31404331E63174FF003322CD00DB4955FD59949BDF92EA9EC1359562508FE9FA5036FD5C9DEC18E4314946BE214FDF1E769F59C4510993F8092C0A5318F8D93F8BD7C91AF5FA6D9B60236B2ED5A03F29D65F8A437D9E6F1ADFFF47BD66FA163E79026F4066364D9FEBD97A9D56D56B04D174B32A0E39337E0792CD3C281F398C5FA30946C91DDEAB6D92ED9C44A65C291362530D1E6EA2D3A6409643FFCD60E8D488DCAEC8D1734EC367435E9F92ED0162D67D8F12616F8ABB2C778E305CCA4C840978883D142247DFBE661BB62F60928CE23B9CE73FD8088C4A7085E308D0D29E38710C96A69099588159B875274D992C97FE5B3495499E5973508DE2EB87342A5096D94D3FC2C70391C502E4EE5D07D525DEB2AC515DB2CCCEE6F481C97CC34EBF3D38C6CDBF8E9F0D867DF9576498A2E46673A90493EEA53D06C2B223BF1B72FB7006326B3F9BF25AC1BC56E635709EDF711E97FCAECF8D57D054373CA789707475C859564C92B98E576975D871BD029F6AA02F5709A6F6EFF6FAB26C88CF062B24DD36506EC985F86E20D9D961C389D57D33B03DBDF98F333E9F6CE481DA9926C00F8D090683FFB38FCC78BFF96032F1F41E759959C24C19119F8D26B1B6C91D378585BF855B3FEA76C572AB5BE367037C759722B0CCC8EF3175FDAEFAFC699DBDC75E9E8FCB868FC67C8096DA7F3698AACC36D769330DC772A3128CF8C11B5EA80457ABACE209D9E116614E2E3AC94CD36EA330A42B9114CE0B5F5428A3C091922906BD34B8ED62CA8E8BEBA26C42BFD719BB9A44259CFCE9982CF6A7DD22911BA70A33D773ADA2BCDFE9A897BACDDC416D49AE74D7A82F69EEEFB5C6C8E3202E6A4C7C2646A7C664B9BFE31AEB0E1138AA2FF00085666D09F2BAA92B41643721ACD3AF75A12CC8BAF50A9FA8A684193FC784A0D646AE10D4729F862051DEEFB4B5933BB0F1E9460735C69431739F38C8C1D980D3F25671521168F28F4C3318E425F95DFABA2C76CC386FFC6CC8EB630170FA68B48FAE99D501B7C550096176650D07AAB92A2013C20C9D96B015FC555AADCB6CDFB47A76FB3B91607030A7F8EB033B24EEBF45E529A9CBC01D794A59199AAE52CE6229BEB2BFC20A9ACBE9BF9B731B2F5C16F1A529CCA776F85330748A3E47F600252B31946EC8BDBDC416643C2619797DF2A03BE7F9E9C4E3F0D8E38DCADC12159572C4D367ED4D738EA6CFA06BF53467CFE0AC4B7180F6CF15A2F1CF65B2BECF7268CA9D48597AE8F9E14CB8D648251939B673F1FAE5F9449E1F5662395713795E8A75BF9CA67B0CCE37DC5446D72C5CCD6574ECA74D660833BB7171F61DD222E6479ADB68927C9DBA9C1F21CA9818F44B39B8C103592C349B41A685EC487B39A0B56636CD608B8E8363F47D9EF602247814D1A799736D16FEB31CE6DAA7995B556451D3390A3C2CE0A7DBA90433E9D20D7FE295FC1EA59771EE6266FA9725EDE97576D385AC9D820413F9432D162430E46FED760D9BF77EC4EF501A29E00D467C6A34CE85ECE1DC1CD1210A98723C479AFD3B5E97A3DF5172D42B480BD1EC1A143C9632DFB2D409E797892052C409A7E9E6D374B31EC7454D374B5F05B536EF2C2EC560065AC6E4FBF48DBD83FA6751085C579B1272F1CDB6771DD6DA79119924B35969E2192D7E5E9A4A349B9996F06512F5F936FA5DA5A885E52C533AC5B0578159324927EF6FD3FB8B91833CC26F49BED9A20E7D750E1C9A201327F2FDB092F06D12A3E9ADF82B901D7456AA6BA335BA2A358BEF751C86371CB75EC4D9FC3F5DC69441988A83A3F97F5C2CBE7BFD2ADD17A5E0966686C07CCA85DB1C4625E8F37BB74F7364462C0FCD904E31B14051C11CE994C8F04CD488434413A54CC6B494871B545F671BF46583540136491029A6EDE45372D8D6B276C210E8F36F8EFAF19E74FC6A10F40A969EA64F64CBE6C8A770C53D15E710C6AF2647631B77C9B1223E2FD3B31CC1B60BAE3D38F452442993BD9494C752BCD41230BCA8A9AAB1225C6D1EEAD84FDB3C24CCEC0CB0566F3670717F80FE704428D5728EE9393CE539F988A7F7F39DDC53302E1F811171381BAFF2E76F1DE5120DF8AEEBEC2BCBAEFB661227DD966975FFB1F892E66FB2DBF463C6EA0B5318C8B9DD167F22E75D6677EC660726C964ECF8FEF019198E1D38F65F236B86B827743BC1D017316F2C7644D30B6EB62F9E262D1C3511676FB18CEC27370D9F2FB0D80EA42CDD99FDBD5E1F44BE0FDC9AFF63BADB6F91D68E2ED2151537E9625D7D666EC04C4AC01F2AA0D3A671ED3592712769A2049637485902936F1845BF8ED41BE77DFBD48FD37AECCA985185420ECBE8D12C8CC8361B34A2619E121A3E1A6856730710BA4F261B470E795D32C1E4F0D168034A9DACEBF7288A62EF6D6092A26B358D4B71353862CA98E9F83C0E8FFAAB9445F7C940E9A13B66FB1BD3C68310EB140925D8AB35A6EA737E5FA65FB3E2500D0FD4529CF954739987D74261A1896483E1E26E97D5DC5ED8F1AB81FE69BE41B067D4EE3F1ACDC458BB8ABA793EBA869E79A3120C7C227DE737C4594012A58F74EE20677AC7A506144C5C24F28744B2C19EC8A41AA2657A4B24996022ABDDCB996CEF86445E3EAF50B0D1BC69CFE9CC259E5C03996EEA1A9808C089775094A1E321942C96E1255C1C5C6FBCE63FD33C2D13E07C0B9368B0A413E1AD2D31ECBA8EA00BBF44D295282AC25ECB797F4E9536B37357F05AD2FCE15955657779BA7955360C58BE7CEA09E55ABD11EED793F29BD31BC1F9622675496A26EE3A25DBDB5ADA73901B608F289D122354703FDC7C750D96A1A0797091B0594614D3E611C085498B1030AE9F88004B9A059900CF462C612F9E933787DA8C30B8B9C468D07DBEFB9C622BE269CCBD9BB0902D6402A6D52C9CC1D9F25E6842937F1DD28AE30BA5C7731EE4539A6FF87B6FC6AF0696BD78D54D9DF3CF60D049063C0FCD8EC6B4045A2095A2CFF14D51BF3DA01AE15EF31E3E9BCFCDC353F246135DD92E7D77DB37057A9A8B4E32D98B69F29C5B7877851B876B77850B99E7AE042C96E2AEDE951BD46A80264025181EDD7AD9CCC971BB189924439E82152F36CDFD783A50D3687DB09306D1B29ED00C4419DD809FF7FA91055BCDBBB6CE460F3DF309D524CEFA9D56147DE59ECB8BED26BFE0A862F09DD6DCEFC5E706CDAE6E6EC22F539B579630A79B5AB2BF5AD47B08961FF9DDA0BF4ECABBB486AE6BA353C2AD4CA3F8B9D8A1AADC243C4B36CD846B556CBF4221059D126ECEDFFE1D40E137EF8B57407BABB38B9FE3F798FC5A7B0B919B086F643FCDBB09332FC5C1D9BD84AE3307CB8CF8EC6A5C1E6F330C7CA9E3FB32CB3DDDECA8284AAF45E971FA3E9BD7E98E47768BFDE98EC7D31D8F3ABC62B9E3315C67F02929B3C4D1DD1423FB693E5F98D9999B07FC71E8096794AFB303C09148890654A358AEEEE2990E2A59E6D0334442002CE79E1BD45C7037E1EA0019C17F9A4711E78ED7A56099A1C9262AC1646EC8F6D372ED9580E06A2E9374B4AB4D435DB8BB7678E26286246F688F17D84B39755133FCD3C939D9744EE3635B92D7C926BBA9EE90A6843F4C71B48EF06D91E3B3ED08494EDA17C17F421393E676D3CA1C8C081C6CD7B4B7170B9996EF01868FE196B02EAA8F6D8361A75F86CF26BC5EA5E0B3CFC3E7D392D5114C8FE0E96697273AA50568B83345FEA5CC86DBEFF4633C7579315C60314C5003EE832598C65FF02A3D40607CFE0FF22C4CD2049EAC3FA01226AC0A00EE944E9AC093738064425C4EAB99FF77B9B4A72C44D779C9792CC581B979CE9259ED143107C8422EF49D9EB63C2D7C2D23B273FEE8AFBA145D37797AF637123F797A00F8E425BF272F89BC5CED6AE80BF2D6F38882ACDFE98206F92884938E8C2C604285C9B33B9A763D7CFE4FE48BD853AFDD47D303C49C6F9A7072BF7D80ED8F9A7B2763F8ACCFEBFCAF7D864CCA3123BF1B2C6294458DFDF6C70CF5E98CCDB8C48860DFECFA750478BCA1780AD4E18CDFAB672A1C5DC07DB1493193A68029A7C5A4D9BFD3CA6AAD8DC2E50F87F4E0A6DAE822A66CE05230703612E26B6FC29A56E46B50DFDF0ACF75B679F2B419BABCDBBBDAAC28E4AF8376697667589FBD2BA4030EF4DC0D931406A3CDA520170CA3FE9B19977707E8BE91434C615203A21F5F67655537487206F3B1888940973158CA04177190839F33E01227F1651B00931415EC7EC2736EE89B33D40D254C049D24FFF78EB96191985FF72412A2C2DBB30F67CE9086784FC418987329E8B23B657F99DC21AB66ECC3ABC46713DCE3411CFB6C06F1D9603E65F7B9A82A8E17F1D9603625C3A0616651FA8FFA7C5E1FB6B7D976DBC08AE6452598CE6441F358465CFA4B7A693EC357633B7DCAD23F415BB509FAFCFA833D14AFE1A39986171BE88A2F3A459FE34BF6A9DD97660FEC0ECD03B76041D3E9D20CF4FCFA9551AFF960507F497EBD4FD65CA321BF2F6B192860CFF5FCC3CA59CF85784FECB9C09C4BE9B9AEEBA4ACF93D80C46783FE21DFBC2F32D6B98C5F0D76131E72E0BA9BFEA3111FFE4D97E16354D8FEFB65926D5D0E02FA0226A25C9C3DDE19964EE4CB62C36D1D60924E0D66510D86A83D27ED85E03FA1B948737FAFCB26C885BCE81F5672E6E38612263A3949FE78BD5CFF962474411C9962CE918D0BC9EF266B30F31E8D0A88D89F9917D59C01972D68227ED56CDCC09879715670F2814C3E8D797421E8FE012EBE98A9F073FAE456B84A58DD677B67D71610FCA7995D9CDB4D6377F1B84AFCF14B9D74CFE35CE47F22159BBBE2DCC00128680A2EB4D8B80108B60D5FA3C4E71047AE5D3C7F8155E20783C4677D5E6775DD4CC9B307B989CF0673A96571B8BBAF5F3266233E4F092F45C16554CDB4587F717701BB84BD569B94E476E7AB2D3FAC35F19E35E94242772D3D17E13169068D1D3FE091D4498F52A6C1F3C9FABCDFEDD31C5533AE4D9A2D9D62D0FBA57F02DCC6AF867AB79BA5018DFB04533BDA7E2405E77CDFDEEAD1B4B77D916D01DE1C856109F814CF35B79CC7A69963151C8D3069665C874341306326F928073BEC61AE95ABC93DA8A0A9578629D9B871EB6E0FC645128CF789AB22AF932C4F4B966428BDFB32FC5DF51F9A3A4BEED26626765B8DF9AED7F7E92EC1DA56FB64DD3408448177D6359DC2E7A44A5B92870F9069BE669BB4441DDC3764D3DDA386E0D1F5BFB6FDA6809EE032C9B3DBB4AAF1F99D5F1FFEF0E4C98B870FCEB6595235FBB1B7B70F1FFCB5DBE6D53FD6788626C9F3A28DD07F7D785FD7FB7F3C7E5CE112AB47BB6C5D1655715B3F5A17BBC7C9A678FCC393A73F3E7EFAF471BAD93D66B3776CB5B83CF9B9E752559B2D8955A259F5D1281AC1A7393B83F4CB7FA4DFD82AEEC17395DE72A7811E33B5CD66FF85755743CE46945F1FE65F93727D9F940F1F5C267FBD49F3BBFAFED7873FFEF0F0C1DBC3769B7CDE2292DB645B71D864F9BE4435FAFCA7EB745D36677324BC5F3C31E6DDB60D09CFA74F544CC96622AD95A62F806FB2D1AB99297532D6065E93C26E7098AF7D9FA0E149998F67458CCD472F5C1305B148FF47B367E9AF5F1FFE4F9CF11F0F2EFE9F1B32EFDF1EE0B7E5FEF1E0C983FFD75808FA061D3321C8BCB384689FB199230ACF619E404DA0340EB50959A6306AAFC898C9A4BDFA710617E6121EB6D96AD537C181B62FD9E87F7841CA86820F7DD19AB0AC156C83DA589D35FEC5504DE61E9F096A521C6CAA495D083453CD8B8AB8A4A9E5F539330745FF320A6DA6FF6B97FCF57FCBB5D376DC67CD43B26B6CEBE650877FDF0DF74C74ED69D90A474916FA3C9EF39BC411E3CB6CB3D9A6106B8D2A063AFC6CFD25B7C5ECFA707B9BFD6585D59BF46BBAED39D559FE6D8A7FFCBDC8BACD1E339BE6C7ACDEDA31D1F92EC9B6D7D95D9EB49B832DB07C7F5FD4851D4E65719B6DD361E7B23D9617D5A7ACCA3E5B3262E375DE24F9DD010D87BEA4DFEC544CDED05E169F91B4C8C159E4F9EEF6768B467CD8555A6965EDA4AB0D56C4D1D1E91DCE45B33AF0EF349FC303370BA9AFFCE1D9F3496D8DB85871BA78EF93AAFAB32837BF25D5BD9D3A4CD787E6421354973B3B58435E204FFB8DEA76F95931E1C73F8BD7C91A8DB7DA46318BD79B62FDA538D4E7F9A6F1EEF8EA0BB183D7EA6D7A86B3453B5BAFD3AA7A8D80976E56C5211F46E853FAAFC665C041842AE6ED73E2CF7F7B7051FD9167FF3AA0848FC81A4CD8CBB4AC3943FA7EE0DC14BFDA26D9EE48C6F5FDD9E509438F36ABEE98436F3CD458B63D7B63A1A1636E9F92ED610ABB49C87853DC65F91464E08CFD1C253F850BE4E889FF23051676017AF890BA1A7F8C64968729941696798784F624F4F017B8E8814774FF0040DA1431050571B9895E8B09D2B4597DD4EC38BF77245DC5C491B9B6C1C669E2233158B745DC78B27CE67C7077C78A79D143C659C55FE45F91BD8AF29BB90044D65922F4F720984B30E69C2FC087B389E537192D14BF9A5AFCCA0200CFF3BB092B4563CE59024CB1FC6CA3E31957D47AAF0EB979E954662BC6BF4AABC32E9D5E057DFE7915310183B3E1D79DEB322F79C8386F91B23B9B34618972C8394FFFB3C36682F238D73CE8D1A75A26608F65304B9CE6560F3CA138A913EEB3CE5B9A3DFBD8175DA6C976C204E47B144366C976CEC4CD45F57A9BDCCDE36065FD8ED8CE3673D582BC7FCF889549307A3C51A8B535B58E173FF69A36559C6DAED366E2D4BC8112596735506A7FB5B1087DD659224C5ED586E6DEA917F30CF52133CF362A71BCC8DCAC43E6A5FBFF8B0A71B2E0C26DECEEB92ECA6664F33A1B972ABF03270E9DE358AC2B773D0343B88093C5F42C367AAB93C5B42DD6EEC93E0E7B4D8E606C842FD602BBEB7BD43BE0A3116EABBED5FA48AADE755321B791BF29EE8EC46A51EC24274D3B6D8E6CCC3D2FFA1F5F719D1EDA0D0FB84E67D10CF12DEC85B1B2ED8ABA3164C21A1F91DFEA8E686B91EF77B2ED9B7ADCDC4227F5B2F8EB83700C34D3CF8ADF6E3D39DAB983F0FE6A65F331789BD38A00F46389D31D25FD94EC743ED0D9CF99DCC69710CD2C4D659E39DFC13C9D78EA04849CE8571727684832B0A9A29F7999A64D9E1CED919D8D4423BCCB647D9FE5D3267E87BC4712527F38B3B26E86BCEAB925461F5696185DDA51EDC8BCBCC9544807F623F18151B81F1F1332FD4547C73321C35EDF643E1732E69E1BAA87EF477B5DA6AD5ED2B9E338D6DFF3E8AF959ACFA959B2CEF2797D238B3723B72F02DCDCB90F3C6E29A6EE7427F2DB14ABADB709A77D27F9B523716A81F65EDBBD8BC35ECBA5D8CD6FBE762EF9B072DFC8C9939879924659705B8CA5F34C44077824AEC4475489DBD269FEF97B9C7F361085E4316F5F7ED713BC4C5CCE61EB4E3D531C66E9759A068F7C82E4340D0E4C838FCDFAE4F98FC8F3F74E16DFE91FC18AA325A73FEC10981FB9AFCE89279DE74E6C5B62D5687595D687329F37E2C2BD890D46A71E60713D000450E4547E4BF2CD164518ABF3795827587D58E9B3D2EE97D8A0EC487A25E7E338BCADB96DF247B43A80B5C22F1C5CA5FBA29CD09F022CAC4CD18B378369B179473D0331C3416F8BCA9C8F21AC08EB1D09B0AEB3CDFBF6E588497B0586BCF3F60163E37E4A0EDB7A1EBA291633EF11B07809EA077B93C73638E19E6566B36D1DECA2DB7E800D071C4A4F5EC49E17890D4DEEA72E46D31D0F8E421F048FE4D8B4B5BEC7CB99B2506709ADDD5208BF76C2996872D5CDBE969DB8131F2FEACDF04B67EB3AFB3A7098F604C06D9956F7F8F59E37D96DFA31DBCD9368BB2DFE448EB2CCEE32EE908ACC747ACBADEF0F9F91ED1C0CD18941C169A8E970A819CDDEB8EF71CC1BE6098E630D2FBC5DE11A66F6D85DACDB9FF47D5BD4695B131FD3DD7EDBECC73B0E70920A4ED9BD4DE69E79866564D5DB789E40231703C12621E3C830E17AB2BC37DDFBF6159523B19AC8CD871A829D6D36285CB6F3A24AB369D08E54F8F588D2CEE336F8D5D175FD3E2DAB49A7CC27B5F5E309B9FB2B47A7DF85C173B0D60504ED8BA2D8C332EED8EEDF3F9FEE54DE97E9D7AC3854C3C3A416B69210CF8ACF1893EC76595DCF542ECD37683C326F3B8A858BFA9AF7786BFA19AB49BBFEE88B704D194E726A47E2D122186931B1CD743736309825CE6F493504A7333069FB369748F73521C79D5728A240855A796071691E81E9CE4F5EC196578822A0B8A81A573F1876D6547C24D72C44EA479CAFE8937DF725E25DA2D0053B9B2369B2929180A90BAEAAEC2E4F37AFCA86E14498B04C1C60E5FB837086FBD9A4FC766497E846B294DF9E42DA4CDD4E36A51E714F89CB3B9E9A0C1C38B44CFCD6E3F1DD041E414546E215627925A2E5E403D7E7BBCF29B61E9E47DB1F4B8414C5DE47C2B6FF3AA4D50451780E4EB7741BB2FB94E69B29F7BBF7F9E6B5918B57DDD4EFD4B095E2603338BC3E34FBC2E057BC27CD07BD296A8B8FBC5BB9830585BAEF6E7B9F31772268F23B3F53DC1C6E48273767718B779395C6A7F2026A0051CD498A97CDFCDACC7D5C989195D59728C69EDA106FBDEA9100DB75D8D33CFB774411BC6B73D1B7239D8CA67B87057E5DF238AC15C51C7DDF6CCD451873CEBBC42E29EFD27ADA253A64DE998BA876971B511857EC76A8FB482CB2AC8AEDD7197D27C9E03B984F8EF6A287087623434B753D3C1C2CF30E57481C4B2C1585E70E7EE55057A7139BD790DB66DBB2F8BC6D04CDD4F86EAFF72582C0E982AFA36C6DA70BBE543DD8E982AFA5CCC0F8F0B6D1C57D5EBA814F499925218EA81FD3BDEA51CC0123465D654E1262C8EBE228DAC8FF4880666D5DC9CB351408E1B83F389E9341811A3AB6E2B4D92F22AB9B97D4A6A862631D328A00C1ECF6C8D3B283B1EB3812739DFC46D027D0C697596C789EEE58DD77EAC9DE16F9FBE65C3142E79134CE38C2E838F61FDAC0334286B538D5F682D745F5B16D2DF3E65D5EA5C7FAC867B4D3124B9AE7C6F3DB477658308AD9ED28A28958CEF85D0CB7160C93D3B3BD5AC7CEC223C6C33EBCC99E84E260D3950C8C2D3893C1F4D31D39C9C1EE7B7B1D63C78EAE593B382DE51DE1529E60B976BA3C1C232BB1EADC1539C5836D53B89D5E5B3B2DC52D62290EB7C8D33B9B270F1ED4839F5EDC3CF501A73E402E98D33EA0281B1F7B1C9EDFF5D21479DBFE929F58387CFE4FE416A47C9F993F8CC05E27608B6FFBCCD21FF57A764B3FFF6B9FA10AB4C10AFD5963D7FA3143D102674B9DF72A0C6087B70C9FDAA8D6A9B54EB0AB22C42DCAD6DA2864267567D428DDFCC29FFFF6E0A242A1C4BF0E28E1233228D321FDF0ECB9B5CD5669F9352D51A0F8E1901E8E68E1DEDA5A56746B4F8B584BB9CE364F9E3671ECBBFD118D4DE7CD3175F537E3F10A8A439C117973D1C4851D36EF0EA6375518C1F3C7D75959D50D468F07A0E1274F88930D9307650C0F9B402758BB757E3FE13997E61EEF13B8BE17700D2BB06EA1F5ECC3D909544734DD7B99DC5575998DEF114E8A30735C09E3BB0153989CEF3E17553593C9FB6C5D1FCA59CABC3E6C6FB3EDB6D9F5312B606E1FD49CC3A1BFCB75BE3D3E65E99F73D8F44762666A73B1A16F7E9AC2E7E5F8BEE494EC03DE71FB9DA5D0D7AFB36A26C9AFF7C97A26DE8F6C92DDA82B7AFE6175EA8AEC7545D77552D673F7A89DE79BF745367A8A49FBDC0EF9F49B60DABC562F5E384C79C0C208C97FBF4CB2ED5185EB218EAE7446BC2C36139673A9CCA776B4BC764454E0913423D72B1E8DE779D1BF537324360BE47AFA77E566DC603632B07B6B50CBD7CA3D5A139FBC3102E4CFCC034D47824BE6D5CB2947111806F3EEF6FE8E870D3F2FFF911F137D57F7D91ECF222C515120BA8AE3ED07E77D73AB43527EBBC8FF4422E3ABB18EA3061B552A6B2BE4F1DD4F8FF523E3FF792F4F2373E7D6CEB2BE2C8BC3DD7DFDD2CE9BD163D0E2B62914EB2F477597741C4FE8F8BE82493025DC5D163E6F77437B8D7F5227361E787EB74F733492C4B89BC3E76DFAE76C1E58B17623E37CFBD878E600737ADFDE5F80E071BD2FB2ED6C7E78FFFA753A6FBAA347D39CB096626135B22577D5CF928FE2B2A8E09B3D31B13A9EA99AE88E93588E4FCFAAAA586758F63E2E695E2D5AE32FCD8EB09BD536C9766C077D9E6FF0D6528EBC17ED3ADDDE3EE2D22E0FDB3A6BBE214910941FB2907897B71B1A1F9C611FD4B4AE6A9D6C78A3206D362289FABA6E8AC4C2533201A9B454FF852B0C011439D7BCD9DFB12AF2AA2E1354F73C9AB37C9DED93ADC02E0CBD26FE1B5507CE6CCAAB14F5678D3A42C5750AED370EF2050FFC19DBABECF1CB63025566607B53DC65F952C186851782AD4B3D46B0B5AA2D0E6C8D224BC51A3ECC20825A9B788C48E3CF70C408B4269AEBA775C92B3D5C60EDC9A3474FB9AA1D3993A2506CE98463C10AA5954E79CC952DE1E1425C7473824B7470612E328A012EFD455642B41024648D929FBD745F21B125325334B022AF320B82AADF8BCF78E731341D3BD6E148415620F1D50B929AEB4699F21DE146601137B0E16E511514330815142CC43DA342B89034648551DF8F0C3242BB84050D73A76C38D88C2BB562D81034146CC8EFC7061B915D02C3865E950F029B61690CF99C75CD3D6E4CE1A6A36050D37FF58299415C0EBBDD5757F881ACE3063DA3327AAEA7912BB8D701049E5E6B47E16FF4ABD0A3B719D6CF438265118EC62B58FC391703B084F72CDD099D1BFE0504A37A7287904E405680E1B3AB619327A4F47A688E9B2281CA5246D9A1C0E375CC6D08A1F043EF1E484892BB54741FCE094DF1A3A9ABB978B0F4C345FE15B12EB8872A4E688A1F4D43DDC583A71F05D7D59CE0143F9CFAAA8B0D4DDC353527302D044C1FCEA2C3127BCFC4094B4BC1D22A1E2CFDD4C471E7F99D78BEE804A658C1D4575D3C68E2EF613BE1287E1CC5D4B73DC75790A2CF5707F652FA1394E28712517BF160EAEFBDA3BC4AABC34EBC747F8255ACB0A22B301E64BD3805E10B44534CF1F7CFF0256B2718C50FA3AEE6A2C1D2D327826BB34E608A1F4C7DD5458426D98D442748C50FA94B5471F1C0E9A9FC0AB513A0E207145383711C2212E930A72E8FF01091E97AACE74344A37871A0EA6352DEA5F5E980DA311C5063EB320A84BD29EE6EC49ACCAD580F20430A08C5C1694EA0665CF916C1D668A53B59D5E789076BD19CE40F039CC007B4B5B113D9917E0C9DFE5ADD137022060E79777214B05968601E0665E1C2735D804512A1FF966E376779B2FD56655570CF440AC381864E3C26DF4469B60CE7F47BF72E5D50C8F44270135BEDC76381C8A0D1C2A0B1A0D17E0824F91DE51B812882B1FD80A205853D2150E437D03142510411CE75B6B94CD6F7599E2EC91B8D52B347CA87CF47E091087596E69344A2CFA9C323F2498635EBD3278DA2C533EA8215985A870E87F4A1876746351D625CD60B1815B696123D458230CFD3465330163AAAE25076596CB2DBEC347114FDC4D15851F18007BF89F1F2DB1FB9A4078C25328F016BFE770718C38CA8D2A038EB9F9DBAE99ED391DCE2E5D63FF582707819138EC92F0D5A69CD58F67513075460D94F48890029E42B72E181F27B94B7BC85C41067914870F37BC0BBDE4861FB3D6A4A1733A9123D000A5ACBA7D29CED5133F313F6F065B2472D2AF7D4EE518B23EA09039BC03D9AFE0EB598C29F063691444027D4C88A8CCDD7F4BFA577F95344D4836554C277D2AF894D161FCE82DEF9CF626D6193DA6151E67F4ADB146391CC68E349AB68B64252D270B061528FA927A455D38AA0826F79E3E1B39835DDF038F3BDAA6B0EB0E0CBBABD00ABF328FC132F0E886232F9583C14A0DB325C1400A145F8A858B0E6D34B4D04598C6E6A41A17A44480BB0A3D71C6BA16376006D41F7A1C4829FE5F48A91EC46812377912E366BFCBB88EB0D411134C21F658D0B914BE943A3419EE729AF49880BDD81F2480BBE8F333C761633EB1565E7B9B4BD9CE1F1E67F37A739D462D9CE0960EDBC2C8BF2BA389492E56A8E90AC673EF13B029FDC84D141909034E4895224DDE6B0AE17F67AFD28382BC8F0F918DEB227F4D1292D9227ED49482DE169F29060F2F650F90428857DAFBC2DFE53822C7F95EE8B12E30954614E55BAEA1159E1E91E914F750530933A9FDB17725A6902AD933130D2AEEB62FDA5439A42157B15ED147E8446805454AA9BADCE9300610585A4723A8572A24604C6C5B9BDD0B80BE1F64C01178DDBBB4AEB4399E30DF67245EC55B353F00DFA003211690E1D9E2914ACE06F544DDFDD1182C6E0EE9679A088925FD40E8EE83811AD9416D8A2384DC4E0EC287C5D40D885F37466D88BCCD135AB308B99171945060006AD892D715E84D06649F3221848BCD47ED63603E122C46AA6193A1AC260C0E8EFEC7E5BD4692BF7C774B7DF2675735DE498D47F942C6902C4F4E22644E0C5258975144AC892395AF85419D80D3E258AEA940E891D337E9106B7D9560DDD9E0EC2C4907602ACC8A2D163350A8C063DB5420A2244D2F1F4C394565A817FF0332A14548EC381F9065A602765E4963A19E380DB52469821C1E57594690CABF0E34C52E466CA4CACC2DC0AF5002E76928C4B733E2AF08D32DD19B238C2AAEE7DF3E185D5A0A115230C0D1C2EF168422C56B38584592C741674C02406A4F93D5E320964119C2EE150B698082B0288F98DB4A6202CC2684BAA86AD0A3EDEC86B0A0A42445F8C9CD1E06F49BD6870B479EE4327E02C862E9410FB12058D25E27976D864F50DA2CDEEF274F3AA6C08024FA652A209B1C4501DCD1840A8A24EE1743D4608B45826EC4F189B8CB118069CB8AF4ACA6FFD59AB859D9DE3156062463EF918CED2017AE90E0D429FA92344C7A394E6EB8246A0BCF022C01104C7301205F45AC8687410FD3A2DBF66ED8DC937C46F31E6081A0A75E477CFB813C924A070833C91ED5C63CFB460823E36F82DB4978D027EA1FA5A63F845D5DDB2F05B567F1B0BF002F4B8536017B6CB3DDF7D4E31F4AFD27F1DD22AEC6095158662CD271ECBD094D36C1923520E3A0B3A311C03D2FC9E179E04B2088E0B1372AFD36C5FDFC815B155C7EE7187B511C9D4253AC1DD2424D8435FAB9A4E99ACA0F16070999E2E18E282793A7DACC5E8E9AE2F5EE19F6156A762004ED860CC003D634DC5039F4FA844C9B3955D3259ABFDA7EFC63141268A0856AD78211F0778BD4DEE423F93D3C8C06EF568BF1D8BCFE9155AC6B8AF8745F38F74567420202B6FFCE8EB4112CFF881CD121E38BD5CC171B3A03D5EFED1E3FDE11A6DFC44B097AB4750E8276A4E3D526497E8F7C0B84AAB62FBF5048C388031D64670607C4CCABBB45EC4930AFE61E4F7F90413048DD5161241BF25F9669B9637DDFFC3B896BE700616C3E7237230A09D05A575B431C063294F81064192E7A73F4D2014C3939F04861634360A8524BF2324432C453048C2706E548CEDB16B4626D011723447D4B3810A2E66D60F84D5527ABDC8F017E229EC29C08BA17314E16E413D657CE8F3DB87CEC15FAC1D6AE859C8C830B5B01E358E59CB4F49992579DD7833991B63ABD59FE3EA046405183EBB724F9EE0D3EBA1E98A6280CA82F69E85C28FDFFD6686308A60A7198D2650781A4D502D929F8F1D4D26F5EB1D4D1D794834E19765F103276127197A3958808CDF8F28F419945ACC04C2009368C39D4000F217F018812670C433C005FF906E351B29B877C9FD6E360B04208185E280D1205C703045D13F81D038BE9E6961DDD28D6817449C5B44BC23C9FB26117D108DA2854751DC918D4FC0788E691613D02C2E9AF1099A2071CC428298B745FE3E2DAB02891D348E21E4A0B852DF8F259A21955A464043C224E812D5092792E222587E2281B2AC3BD6C221CBF37D6AA6A88AE116350A56CB59AB0A8829AFAB55C6900ABF5C8597F7C7377A8AFC362B77813A354A168A2F93722C1D1BAD9656083456502490E97E9C20132B64880A8A06328B990D0C8B2FBFF38253A0157C729046D68236AE864596DF4DAAE6C88A606B2A16FAB774BB89E29407270D0F193AF5A83A3C4AB5654C15F1F059C4698E3870E6F304C73480053FBB21C69774C7B69B6DEEDF0518A7EC840F8A4D46E0B8A0BAA8382D060CFA8ED7A6C02EBE982DE82A4D1CD8594CD016C1BA0D0F20BC36FDF2DB22AEB789036F01662D8CA146D46A58AC6141E2196152E2F0E861928FCA5DD1BA2D689049436839A3CC08B0E67D9C690EB238069A30C68E6CA4191120438D35A7E333AAC12607D7458D36E3C0A1EFF1E624E84531E0A4D1167EC419017E9613C4C532E8A441B4B8516704980B30EE34875BA4034FFCD7795916E5757128D78AE3132421778A824AFCAE002837627C3024440D86C58B863DAA84469B9BA6AB108F224852AA82E9042F90EB8B6C2416CA33263A811BA5B607A8716AE994D9100603D775B679F2B47918E8DD3EECDC1A2908BB159B483896508CD2CA6026AD912F28587E7C9D9555DD487E73817A68C435FB7740C88CE270A021938E0936845E5A2592B5140B741634DF101A657EE71926002C82398646EA9F709C97E57751F8A5411A0E3044CA3179A551AD6539A511360BF349E110E6DF2399812B1287F4ECC359F0881AC9C0C1037F3B26D7D3286410420776380D2C16B102ED1F3F3ED79A4D80137C8199C0CD92BA28EFE8F1DC2D19E027860EE9F987D5D2108444E61084BF1D09821A5D1686A0AB431E2C9CF10B8740E18C2E2670450485C3DF2F936CDB0D9D22BC768E149183CD98B0E4EBE7284D341D491C90E9FE7F596CC42BA9240D597FD4F7A38792D05291408A902F0E6885ECA1428124505F650494F01DD68B5759B54FEAF57DC43DD6202307212265E97DD6A8CA123AAD113657E93ACD42BDF01E161D813C8C1952C6FA090A989F5787AA2E7669D9DD88177C1E981588430F4F704C20E2B4D329378EE9620E4AFD25316F0BE009046AEF2B4D476F8065D2BCF56EB100516AC5C880C8C81A128EABFB6CDF545873B566B341407E632B41C354F3F8DD17F27AC9394986EFAE6ED784EDE40C6383423AC511E28583555DACBF5CD7497DA86E1A6156C5769BAE83F596A3343454C8EF47D337124A69758974F54403998BAA3A9CF012275EFABA89022C8DBFDB66DCF917A6AB6829D88EA2FBEAA7C30A862A8185E2C0D3205C2C605ACAE3A541F1E4F1F9D209800AFD7E297BCE68556CD2651F36833492CAB5021672167CE00C544FA7DC4047CECEF1992594A74639D2B2EFBB91D47823F8ABA44E3E27158FC126D7755A77F467870DF2CC0DC8DA1432C21A92AED7F7E92EF9F5E1E6738110917CDE5219B9208B2EA18926C64B7FB952E864A8249A42511A1716F26AB114A076D5FE6D5AB7C7F6544592C7C756DB24DB01850234F262319159D96F8ABB2C5794DDD1C8CBC6446665B7A701A545B724F2921B1A75C1E44170AE4832112A8C4C579443EE9DE2CA2113A172C8747539700142CE3A2CFBF80062DCA709D8F7C98A42A8377CB862A854A8208A40551439F9C41745A6824591041A45758306B0A02E4D544C97AC2EE41A0DC70B0859449AA0903ED9C0F3E2F962A9F3C5142AFF8B89348AA56FE303CBA5494405D3541AA86FB75A83A06F9344986F53D5F57699ACEF51870B57DC9028A8B9215DC386CD103C413DACB8EA280A9105292283621565AA0B5477201DA1A055D3C950693485866ECC6509A0820C8D484B864C1399E4FD5F428C924432B492748AF2F93105573A4F0295CD53A9CC8E1DE2555A1FCA5C8064960234394BA4552C1E585EA5FBA2847C0240232E9A22D32AFC538286468AC2291A71E11499DA450D8FA0412E6A4814B8A8215D4B49A16632754C6A4F86999140516FFA88110C1AC84471596DBA327A1DD705DB6C1FD3DD7E9BD450A39411C3D1AD98DE402E4D89F465319602A1F03603C7141C85ACEC81C8407918711C854A651DCC91F48A32D505AA4BEBF6E44846E33C09582A4765A0E72582419925DB6602011EC00969551660C895E6C0B36549F94D32B480886093F074FAE5E396DA7C954B409029642028B5A5900FE7047472394C8678E7BBCF291EA5E1DD607B081A3C09543C4FA55FF2BF0E69A528B9235194DC51294AFE94E61B700CD82740A5F4690ADEAFB7C99DA02EC72488FF98AA19BF0B671A5802590CAF39E78062DF463E387A6E530421739BA866FF5B926FB6A2299F215150C890AE391EE02E05160E0A384AD9C88023568B33AC6C41120C8982428774756C2A2E874C14C4A6BAE52091F04005EECAA95481462381CEC84AD0CE8834E1584AABA5F5024994916BA22C817AB1982B844A85CAA108144561704A6210261D2A8E21D12950312305D0080B369A93822E69844BD7987880E8D4E51725FA0297DA2509CAEA5215255CA5B7655ADD7F2CBEA4D0F2039D0C954453284BDB25E517B09C36012EA14DD35CD150AC66A85632F456319AD8282D5183F970480FA20974924034874ED2A8FD2F712B1FE4818964810F2628344A232FDA02CB2309442592341A651237E9804512E9A21209128D02F1ED086051384554084ED4608FCF4A83EC718A883D4ED4603F9E7103CB189345058D148AD2A813A05C61542A541645A0A11871B606D48C4817A946906814C8EF8207CBE5C944C5F3943A52A846D810915002B33135B5351B2A784C152DA00D04AAA2EAA41B655EE47F22D7F0CFA2007D0C4806160E522AA520B662018513A970990481E11CFE0A6E463099CE5CFE0A6A58C4EE13E12E8B9B7EB702410CEFB6E829D9ED31923DBF831980346E9B0D7C9131B52B03730252D9AD52B4E2138CD26FA3501BA5A3F46B146ABB0867942ED5BA51BAD8486D9396D0AF49C8B88FB3489B38DB20E46AFACDAAC86FB3728737C1033611D2BA370BB46B0B3391EEC69A698EEE87963948DAA335C7B85549690DD11311D4D94276DF145641BC232A8809D060E686D883C42B4E138805E6F640616985DB9BD8BC6C2E4BAA5153E2B0722489584460BA1E8B2A9973F7A522B9DB4AA0A2F8809DE82822A9A2783B970715875D5E37FD3E2C5E478E46AA24BD15AC5711DEE5C519885A861FCC03AFB34FAFCF8E9FB836C1D327D345F507557125D2046E6AD0996ADDE6537C650AAC1B49314B40969ED934DB67136D879DAB9EB4A7E0E99C75183ED54612DDA5C44C9C547786F8880CF0C345FE15398FA204E34519F91119E1C771AE52C30623F5D199A0994ED5B6007F09EC111860656200EEBECA251BE0A7C6BB9DE777A28E5C447D442678A6897FE0FEE325ABFD1C2F0EA1CF57875C4B7F2AC31119E2EF3DA8AFD2EAB0130DBDE4798EC81C2F34BDE18BE372843F0F8B711ABAFF2CB80872C10678FA645CB2535B80A03E2613308B763A76A0B31C91319E726BA81AE6E0322DD720D43C31C95931A54C905A5420FCACFAC7A4BC4B6B83B9752EC3D267D899039D37347BB935387ACBEA0839105B393926D03E4D0B66D15F9C63C9FD2E480530CD7031AA8E61E05B548FD02CFADE95A1F6E160FD9883DC1BAB868980DA0F4EA01DC18365A47B7C2745257863BEDC2400957B53F48572E10B78207E86EAF22E172273D5D17A5359EE102032579EC0B5CAE3DD068A7A86095DD5347F5F43BF3627BA8961466D935C25B54D905914DC6B6D73BE7BE4ADE1E807624B0A04F5EC90768A204044EE320A086A92CB6293DD66DA8100417E7C9100A72DDE85FBF2DB1FB966EB21E95D8E447D1BA53F087AD35D550CEFC91050FAC1097B35CE600EE19537334D31F2555862203C5243FC0EEF62E168A42ED4681F4B0835FBC915DD6AE7E82DAB23E4008D2565F74C59308BAE53A089FD3607FF6631414A201F11CE28A20DA8527AB152D075655823D935641199451D980AA85DC6A57ECD411D9D564F4F89C8FD3420F0D0F8601CF929701BE6518DE904D4AE06757ECDD18B355EA2A1377507D2FB9BC4E3AF12A18C2CB912C48A8964909191BBC04C3C26D198028433B89E0C0C6C1AF9B4803CC3713629B15B258B3171C7443E87AAC6D87729621D21BDCB6827B459D4137142FAEF23E6D1988C136770391B178561A87B7FB5AD2379C7835052744331D65175EB7060738DB7E6AACE3E0A28A5EB40B38E40F2B701F7D945F7FCCE565F785410A493AB3EF5C4A00FB5B9AB996F48F640F390D15B54856E0CA2ABA8DBC6A0BC5D7AAA5988EBB26F805244D6916773A626C00BB83A9CE025BB0DDC86C9749024A0778B24FF6619EE7CBF01CA10D94696C9998A002FEEDE7B8293F832FB5908D25A4490903B5D4300EF7567ADEBC624FAE091E4F1891D9F66C257EE483B6F90CE4DE7CDDFC44FA80EDEB13F4BED96A35463E8A5561723200F8A8B5F08A0DEA81F2FECE70D63CA42362E12BF39D08D90D46F080839C2AF2B707C15EF243831F1F02EC124EBF6B9D566609E51A07417BC8D10B539E593F0024AF70D177AC781338C6D53186229307ABC9945DA8B0928DDF46321D46FC2169ABDDC081CBD6575841CD8C046F574CA04B330AF94287C8798DA83FF10BCCCD25A46F5DA8A05D3C8E7CB65E4AEA6CB839B44EE47C4D48E7C896F73B03E822B42C3AFB0791CA917D2C7302A2BDA9198DA59330A660EEA40F90D22CFEEF274F3AA6C0854C691E6F51BCE81976973E693DF926DD390DA01B028DB77613EEE352ED5C28C2287BB051AF12B649DEF53BE2B36CB3CC34361AAFE4E9AC3559F277E208D358EF8C1B339E621EE52555DDCAACE2431D2CCAB5CA56FB83196923DC966CD54BA6D4D94C947738BC7541AAD0ECEE2BAD9F93611FB7E9EBCB39350BBEFE3446F066246CA77002D9846BE42282377B54018D024F89DC71BBE0CA96104991C2928E244BD75C97282DFAFB4602A6DF470E41ED013C82417AFF04FC1F0444AEFD5DF84314FFFEAA886653A52B132F4B3A75805F851D3A026F8BD7D3354B9EF9F21728F85DFE93750FBE900F081D3E96A8FCFC08AB51E68C4C2B2CFD06269454FCC065053B93F9FA5723553E3475DE59E7B96EA58E07C9556C5F6AB4A7182EA58146FAFAF13ED6806A864133B336FDD71AB6EF7F8F2CDF00833A82E4BE5A59E9947A57BDD45CF45CF525F71088B23930A3EFDF0956795E54E1C2074E8C77DA80EBDF3AD7744519CC94B5390BD7B4E014CF588B93DB3E91C5B14E671D47CE23493C65146492E874D2E4273E91D6F94E4FA0E9AE3A7A4CC92BC96BC524452481531BADD6564CC661B3EDB544F3EDD0213BA9A68F1AFFAC057A57A4F28551D129EFC1C5E757CBC4C794D2E4CE8A5CDF7E5B25618BF5B3583B8715324565BB76715F10FC96C094028169F6046084F7C8D46753D84078137A8BD4DD595D7D972640E07D67E5456346447ADD8B95A5A8DD75BCB75A5EEDB227F9F96558158CA9B2D4CE8BEE512E5523CA8EF56CD208FD00594C76808C5DE1611A9244E9BB9A3258009A421BA80D2558CEE477D3CA2D37D8B5E4CECBE415065535C9814CB2651BC472F263E6693C8A21E21ADABD0279419E45361425A5713609ECDA0FFC8878CDC532311DE630DA43A308F6C6E5942ED625639267370B38926D661337B99E08CD1942A1FE4FBA58118CC220FEAA5F4DF874752DC7126CFE0B423F76F18830B81A5F49E9023BED60C4A7661226577E6F156E0C84CA2DBA5E9E50ED4A745614E55B7E6FDEECE484CA3D1B505BCBF331223E9746FFEEFF08CC9388A6B3C75B229A6C0ADDCE319C264179B1497D048806F7D02DD384025568324A614A0132486E8099B92845CC6C4D946B8CE364F9E367BE9DFED15319180D2BDAF210B66275889042BA6F8F175565675C3F3E602B9882CD966FF96194448EFC72C63F19C61C824DBA69177DB6262575DB66F53FC84FD5196DFE9814444EE072343E99C5D8814CB66510304A475890F7F6678F6E14CED4969223F48406572CAE36FD6D4968D18391A17C3446F6A2AE0CD50B904B65B759F7F5869A8CB50B9541715C5A98BBF5953F7EA908BDBED48E0A7CDBA55F7EF9749B6ED9CB048638A465AB3463B7E48D69C8663825D35BBFFA3A1B2E8C67E9856AC06C591D082FA1E9B19A40867A8FCC0DC97095EF4F78BC9104F13D985FCC09BD39448B1AC6A77745D128D80B47E6ADE9F417E5E1DAABAD8A565B731491DA44972F8310E2B0067239EC08DA9B8EBE3340DC6E6934DB94DBEBC2E16B3ADEEB3BDCE9D482252A952735F86E94BE4F20FDFE79BA0B9A9FEBA4EEA43859F19E89EE615B63009B987E635964E9B84FC6EDD24CDCB09BAF618688FD118D2BBB0604239BC27BF1E144275C9292901A554F919C7A4FCA8CFAE05AC5058ACB53EA197D1C70A05248994DB0A08FD25A6FBE571CB6B55E47592E56939A4FDF2F87A7D9FEE92EE03FAB32ECAE42E6DC616DB0A7FFDE5310AD6EB6C97B67FBD4AF125AA3D8B5F10CF3CC5D7B88D4C7B9A8BFCB6785F16FBB4C47A9012F5247D72579997699D6C923A392BEBEC3659D728799D56150ED23F25DB43DADDD07391BF3BD4FB438D544E779FB7D48EC45F1ECBCBFFE53127F32FEFF6CD5F950D1590981952217D97BF3C64DBCD20F7EB645B31952662D154EF3F53F4BDADCB1AFD3FBDFB36707A5BE49A8C3AF3BD4AF769DEACEFF4AF2954EFF2EBE46B3A4536E4EFDFA477C9BAB9B8FF6BB6699CBF8889BA2268B3FFF22A4BEECA6457753CC6FCE84F84E1CDEEAFFFF6FF03AA497E230A5B0800, N'6.1.0-30225')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3af4ff63-66ae-4b2a-9f58-3c5d5fae304f', N'Admin')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'397e5581-c086-44ff-805b-b56efd952b9b', N'Bank')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'bf16a952-e255-4929-8413-7bb504a331f9', N'CardEngr')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'8bf5611b-7d86-47af-8b7b-4a0b352b9ad5', N'CardOps')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777', N'Client')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f93011dc-a14e-47e0-a5ba-b50476364a02', N'CS')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'bfe39d28-0ba6-4e2e-8bc6-4144756b1c6c', N'Customer')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'248412fa-fdf2-441e-a1a2-c374c0881b6e', N'Dispatch')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'844c7700-ce40-4b75-bf6d-4f512e70ad83', N'Driver')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'34347a71-af88-4cce-bd2a-d9b01b9d05be', N'Finance')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'cf923ac6-f25b-4abc-a20e-c9876a7df73d', N'Inventory')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'771f9347-02ae-4c78-a396-d81f4c5f9a6e', N'Mailing')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'12734204-0b7a-478f-8a28-ac549a2ab451', N'Management')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'48b3dcf6-7bd6-404f-9036-84938928c75f', N'MaterialAudit')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1a4e6266-42a7-4c7d-bbd3-10264b355de5', N'Printing')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'697fe1a6-ccf6-4b41-b80c-cf7959c3e41e', N'QA')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'af227839-a7b1-46a6-bb02-7e98ccfffb44', N'QC')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'12602ca7-5849-4536-8e62-323b4cf9b937', N'RM')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'a9bda56d-bb0d-4662-be91-e6b93a537782', N'SuperAdmin')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0673d9b5-6f9f-4f1b-a4f3-506216eb6940', N'Supervisor')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'0bfcc8d7-7848-41d5-a02c-92a95c8aa566', N'User')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'187253bd-ffbf-4d88-8a3f-fe51a3d3d7b2', N'0673d9b5-6f9f-4f1b-a4f3-506216eb6940')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'0673d9b5-6f9f-4f1b-a4f3-506216eb6940')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'0673d9b5-6f9f-4f1b-a4f3-506216eb6940')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'25ef70fc-7b45-43c4-8fde-f4bb6a814bf2', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3d14edb1-e764-44a8-a3ba-dc82113374f7', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'52ef12d4-fd24-44cd-b8d0-6289b1770d86', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5feab04e-c618-4ea9-8252-2f8560ef01db', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6619b59b-a52e-4397-98df-0e3259dd8089', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6d9ce032-49d1-42f3-a699-3e0eb4655610', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6ed5b1a0-4c11-49b8-8e64-312616bc383f', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9a51da30-74e8-4c92-9780-ab23a9669a4f', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a6cc2dc7-c0e2-41fe-9087-afc5a80faf58', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c1ff6e16-06f0-41d5-9e25-d0ed104d7a1f', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dbd0fb1b-a381-4353-8fdc-c6a2acc43264', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f6c2ef4a-9eb8-4d6e-8d88-8b0c8353275d', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f73302f6-5b99-4aae-9e7f-7026097f71c3', N'0bfcc8d7-7848-41d5-a02c-92a95c8aa777')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3fd6450a-3d5d-40d4-8226-df917d950400', N'12602ca7-5849-4536-8e62-323b4cf9b937')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a1c04a0-8fe7-4c43-aba3-b9bd5f2b0f15', N'12734204-0b7a-478f-8a28-ac549a2ab451')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd4441511-6094-439e-ba53-5f483d4f767b', N'1a4e6266-42a7-4c7d-bbd3-10264b355de5')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a370d2b-6019-45f4-93f4-18a72fd5d62f', N'248412fa-fdf2-441e-a1a2-c374c0881b6e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7a94b6c3-956d-43fe-9d55-f6c423cc0f07', N'34347a71-af88-4cce-bd2a-d9b01b9d05be')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'97b69a25-30b9-4483-8c3c-e38fb5c62421', N'3af4ff63-66ae-4b2a-9f58-3c5d5fae304f')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'be3a3a39-877e-4fef-9041-f9cf162c7d08', N'3af4ff63-66ae-4b2a-9f58-3c5d5fae304f')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c19d97c-453a-4271-8f64-6943c3b148df', N'48b3dcf6-7bd6-404f-9036-84938928c75f')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'187253bd-ffbf-4d88-8a3f-fe51a3d3d7b2', N'697fe1a6-ccf6-4b41-b80c-cf7959c3e41e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'783b0187-0095-4842-b059-803fa73c0705', N'697fe1a6-ccf6-4b41-b80c-cf7959c3e41e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'697fe1a6-ccf6-4b41-b80c-cf7959c3e41e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'697fe1a6-ccf6-4b41-b80c-cf7959c3e41e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'771f9347-02ae-4c78-a396-d81f4c5f9a6e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'dbbf580e-5eab-4170-b9da-bb76e0afe70f', N'771f9347-02ae-4c78-a396-d81f4c5f9a6e')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'85e1e8d7-6323-41b1-8c80-495fae351ada', N'844c7700-ce40-4b75-bf6d-4f512e70ad83')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'8bf5611b-7d86-47af-8b7b-4a0b352b9ad5')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'8bf5611b-7d86-47af-8b7b-4a0b352b9ad5')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'db0a2526-a17a-4712-8e84-7fa60b9f94c6', N'8bf5611b-7d86-47af-8b7b-4a0b352b9ad5')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'be3a3a39-877e-4fef-9041-f9cf162c7d08', N'a9bda56d-bb0d-4662-be91-e6b93a537782')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'af227839-a7b1-46a6-bb02-7e98ccfffb44')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'af227839-a7b1-46a6-bb02-7e98ccfffb44')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'873c61f2-9f8b-48ba-b638-3f1c2cd12034', N'af227839-a7b1-46a6-bb02-7e98ccfffb44')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b01d30a-5943-44c0-992f-44c89b3081ef', N'bf16a952-e255-4929-8413-7bb504a331f9')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'bf16a952-e255-4929-8413-7bb504a331f9')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'bf16a952-e255-4929-8413-7bb504a331f9')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'007c9254-f85d-4ec5-9ea2-98e75339dfbf', N'cf923ac6-f25b-4abc-a20e-c9876a7df73d')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'187253bd-ffbf-4d88-8a3f-fe51a3d3d7b2', N'cf923ac6-f25b-4abc-a20e-c9876a7df73d')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'cf923ac6-f25b-4abc-a20e-c9876a7df73d')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'cf923ac6-f25b-4abc-a20e-c9876a7df73d')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'affcd19d-8a9e-4ea1-94ba-2da0ab539267', N'cf923ac6-f25b-4abc-a20e-c9876a7df73d')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'187253bd-ffbf-4d88-8a3f-fe51a3d3d7b2', N'f93011dc-a14e-47e0-a5ba-b50476364a02')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'f93011dc-a14e-47e0-a5ba-b50476364a02')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'f93011dc-a14e-47e0-a5ba-b50476364a02')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'007c9254-f85d-4ec5-9ea2-98e75339dfbf', N'Olami', N'Olami', NULL, NULL, NULL, 3, CAST(N'2018-02-28 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'olami@ola.com', 1, N'ANKUH4m0/MXLaxQ0bRkCs8nOrA2yckg9k1dRGhkCjH977VX9n6cqtlseDRIwJXyJwA==', N'c5cf0388-59f9-4ccb-8822-d498ab986115', N'7080008', 0, 0, NULL, 0, 0, N'Olami01')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'187253bd-ffbf-4d88-8a3f-fe51a3d3d7b2', N'Akinsanya', N'akinSupv', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidSupv@gmail.com', 1, N'AMXwTu8AZYtvOoBzTh9tq/vnl2LdLBYtqrskFj8vM4uTdIOzgyYxlB/dyX9QezZlsw==', N'd3d9dbaf-309e-4153-b501-a96810f71da6', NULL, 0, 0, NULL, 0, 0, N'sidSupv')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'25ef70fc-7b45-43c4-8fde-f4bb6a814bf2', N'Olami@01', N'Olami@01', NULL, NULL, NULL, 3, CAST(N'2018-02-16 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Olami@gmail.com', 1, N'AO3leXz+ZbcHb/U8pNkKjAHC+SxmIVNQON90ABP5ulKFkNXBbfKjIFQ2SMPsfRA0zA==', N'23f67930-3d5a-47bd-92ff-584bff180755', N'797908', 0, 0, NULL, 0, 0, N'Olami@01')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3a370d2b-6019-45f4-93f4-18a72fd5d62f', N'Akinsanya', N'akinDP', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidDP@gmail.com', 1, N'AEIVnJ/61W9TvKKcqj1yiRdzIIV8Oxxb3zXdDis6d+LJ6YF3xgpQNcLa3thFXsZYAA==', N'd33a3b97-cc8d-45ca-bf5a-98a2c3b75f23', NULL, 0, 0, NULL, 0, 0, N'sidDP')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3c19d97c-453a-4271-8f64-6943c3b148df', N'Akinsanya', N'akinMAud', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidMAud@gmail.com', 1, N'AMPH1wHwbDvGq//Ivx87PN5yizfEy8U9Xr5cEkURf6BYJueB21H+wO2yYaXtT1mEKw==', N'2d5e7cbd-df1b-49b4-a649-ea84424eaf12', NULL, 0, 0, NULL, 0, 0, N'sidMAud')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3d14edb1-e764-44a8-a3ba-dc82113374f7', N'Olami', N'Access', NULL, NULL, NULL, 3, CAST(N'2018-02-28 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Olami-Akinsa-Secure@jojo.com', 1, N'AGoa7E/BIsbzT7vp2KMajyZ6/hnufYRYkpFQWvuReQeaD2utRqNepQagvkGXJ8p6lA==', N'5121ccd1-33b5-4f59-ac54-110632cfdb5e', N'9700770', 0, 0, NULL, 0, 0, N'OlamiAccess')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3fd6450a-3d5d-40d4-8226-df917d950400', N'Akinsanya', N'akinRM', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidRM@gmail.com', 1, N'ALjbX9a/vFZdvjke6wMxC116KT6YxoP+Nbr1Th4npq9R471e6eOie0fp575KuOA2nw==', N'1501daff-63a0-4e9b-b7e4-10063d996844', NULL, 0, 0, NULL, 0, 0, N'sidRM')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'52ef12d4-fd24-44cd-b8d0-6289b1770d86', N'Client@02', N'Client@02', NULL, NULL, NULL, 3, CAST(N'2018-02-16 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Client02@gmail.com', 1, N'APdjijP0w39e7zSZiwwKJdatUm7N4rkQFemZRsY4zu0sb7xZ4vXK1olAKCUiI5/YzA==', N'2d0ffa5f-4c6f-4582-860a-7de8ab359260', N'97808', 0, 0, NULL, 0, 0, N'Client@02')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5feab04e-c618-4ea9-8252-2f8560ef01db', N'kkkk', N'kkkk', NULL, NULL, NULL, 3, CAST(N'2018-02-28 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'kkkk@gmail.com', 1, N'AJ2KRjkf9vP8yYrdusygidKQOHyTv2wPv6x/2bM/B5C8Czr6v4PYm7WzT8W4qalMyQ==', N'f3966035-606e-4ccb-8b84-5a4bff67c00b', N'99899797', 0, 0, NULL, 0, 0, N'kkkkolam')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6619b59b-a52e-4397-98df-0e3259dd8089', N'mmm', N'mmm', NULL, NULL, NULL, 3, CAST(N'2018-02-28 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'mmmm@mmm.com', 1, N'AJDmMtpnrRRa6n3GjQT42jlCUBg+PNGHYgx65uT2f298U6/LmBacWQRTu9kPmNiyuw==', N'9ef04297-94cf-475b-8b5c-ce4abf54d336', N'979770', 0, 0, NULL, 0, 0, N'mmmmm')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6a1c04a0-8fe7-4c43-aba3-b9bd5f2b0f15', N'Akinsanya', N'akinMgt', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidMgt@gmail.com', 1, N'APJP911V8A/WHSDYgdcP1qUp7adOOXIXadag0ZHljJWD3C4aTU7vUmtx0gTFQSAEyA==', N'ff04a4ad-ef78-460b-98fc-fd98278d9e1c', NULL, 0, 0, NULL, 0, 0, N'sidMgt')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6d9ce032-49d1-42f3-a699-3e0eb4655610', N'Yinka', N'Olamilekan', NULL, NULL, NULL, 3, CAST(N'2018-02-23 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'yinka.olamilekan@gmail.com', 1, N'AAGUeFBRwbQoodNW5zH5qu2RJM4zfcz5JzsJ2dxqIkNk9M0OLyCgsEAp45vkGPkrxw==', N'fbfb30b7-4802-462f-852e-97819ac1c2f7', N'09099797969', 0, 0, NULL, 0, 0, N'olamilekan')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'6ed5b1a0-4c11-49b8-8e64-312616bc383f', N'AccessOla1', N'Akin', NULL, NULL, NULL, 3, CAST(N'2018-02-17 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'olamiAccess@gmail.com', 1, N'AJcARZ+iolFVQvzB0SLGtyS647aiweDTJ5Yf+Fh1Go/ovnbaP6PZ1QK51/CHrulMvQ==', N'5cb52923-a6fd-45ce-ba49-30747b96b25d', N'08090886979', 0, 0, NULL, 0, 0, N'AccessOla1')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'783b0187-0095-4842-b059-803fa73c0705', N'Akinsanya', N'akinQA', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'akinQA@gmail.com', 1, N'ABzjM4h2uSVWi8VcAQDVz9a95O86+dH5TD6lRVR8+f+AVj1aE3CqP9gGOeoLC9Mjdw==', N'8463d313-7c30-4d09-b4c8-2b0874be4305', NULL, 0, 0, NULL, 0, 0, N'sidQA')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7a94b6c3-956d-43fe-9d55-f6c423cc0f07', N'Akinsanya', N'akinFin', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidFin@gmail.com', 1, N'AF4r3AVxzQ3BdbzRNDM2XZO30O4RzZtyBLRrCbNf/xVNxBaO4rTnJ8j/zOX1fizttw==', N'937e1fcd-f742-46b3-af2b-773cf61c2d07', NULL, 0, 0, NULL, 0, 0, N'sidFin')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7b01d30a-5943-44c0-992f-44c89b3081ef', N'Akinsanya', N'akinCardEngr', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'akinCardEngr@gmail.com', 1, N'AMvEpEqPH3tw9BetAuFDmXv8/xsiWD0G0IVl/P/wn+yZs9Zs3zwvhs5mDlPtYDlG6g==', N'58988592-b40b-4cfa-9cf7-94833da3df55', NULL, 0, 0, NULL, 0, 0, N'sidCardEngr')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'Olawale', N'Akintunde', NULL, NULL, NULL, 3, CAST(N'2018-01-22 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'ola@secureidltd.com', 1, N'AD7X3oDN2exCL7s1FCu5CE5LVnZKBy7TusG5i175sUNAHiWT0dyVjn68ROHXGFj6Wg==', N'ad59d36b-f532-4c53-a748-d5627862b7cc', NULL, 0, 0, NULL, 0, 0, N'sidolami')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'Akinsanya', N'Olanrewaju', NULL, NULL, NULL, 3, CAST(N'2018-03-25 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'lakinsanya@secureidltd.com', 1, N'AJHh/es5364gGWU+J6t5kpVXarm4iUBEhFPthR4erJ7PFW30mSxKUUW6GYcWV3tKYA==', N'e35bc692-f1c8-45b7-919a-87c6992cd01e', NULL, 0, 0, NULL, 0, 0, N'lakinsanya')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'85e1e8d7-6323-41b1-8c80-495fae351ada', N'Akinsanya', N'akinDriver', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidDriver@gmail.com', 1, N'AA7Cgqvvh44tWY89BnashK5JYJduqx4GBjVb4n6slvu+WQctV5ki4W4IX+Jv69GfGg==', N'1148a465-e6c9-421f-a2a7-3c723167edee', NULL, 0, 0, NULL, 0, 0, N'sidDriver')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'873c61f2-9f8b-48ba-b638-3f1c2cd12034', N'Akinsanya', N'akinQC', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidQC@gmail.com', 1, N'AH8fTKlnataBK+JFIUrw8b1tr6QUp+U3tfCLs38la798b3wvTAZQYLjRbIe9n2djeA==', N'f44e110e-fe1f-4cea-b435-895324c494fd', NULL, 0, 0, NULL, 0, 0, N'sidQC')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'97b69a25-30b9-4483-8c3c-e38fb5c62421', N'Olanrewaju', N'Akeem', NULL, NULL, NULL, 3, CAST(N'2018-01-10 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'olanrewaju.akinsanya@gmail.com', 1, N'AG4Nl0LiEn3sh2jeBDsZ1Yi+PhfghcQcSfCFlppAUDnooZ4wXsX2pTQd+aB7Xcq6+g==', N'b3d50e97-c080-4483-90fa-164704442950', NULL, 0, 0, NULL, 0, 0, N'olanrewaju.akinsanya')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'9a51da30-74e8-4c92-9780-ab23a9669a4f', N'OlanrewajuGTB', N'Akinsanya', NULL, NULL, NULL, 3, CAST(N'2018-02-16 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'olanrewajuGTB@gmail.com', 1, N'AK+PHs12ZfAC47ulOR6Wg7X1LRwa4vkXmWJ70oFN6zpJhOrGcpKz7lct9UA36+GJvg==', N'1e0595fa-0deb-41b2-8d04-818493fd8f06', N'0808767577689', 0, 0, NULL, 0, 0, N'olanrewajuGTB01')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'a6cc2dc7-c0e2-41fe-9087-afc5a80faf58', N'Client@01', N'Client@01', NULL, NULL, NULL, 3, CAST(N'2018-02-16 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'Client@gmail.com', 1, N'AKccRWBt+bNHQLnEg+7puqcrXm7BQjBkR4tBcXArx2TLKR+Wj40DGe46gqe1VKTzTw==', N'ac4598f0-f4ca-4196-8864-1e6f5c923739', N'79708', 0, 0, NULL, 0, 0, N'Client@01')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'affcd19d-8a9e-4ea1-94ba-2da0ab539267', N'Akinsanya', N'akinInv', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'akinInv@gmail.com', 1, N'AH/BRiXsfIc8sRl2m4mxQOX304qG/IAjaXXUNFxs6mINM+6bgZcJc0DkMWycrJLM4Q==', N'ab5cbcd1-4c2a-48bf-b79e-5c7e9572e7c5', NULL, 0, 0, NULL, 0, 0, N'sidInv')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b5b3f304-acd6-4487-aa24-29be428d7e32', N'Akinsanya', N'akinCS', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidCS@gmail.com', 1, N'ANSPBZSODZAdLtMHn8ejXUroMAOKDpru0e1CbeJiL0UISWFz5IJfd+wCPu+pTPqVUQ==', N'3c0f1b6d-3510-45ba-be1a-6e1a20e0ccb7', NULL, 0, 0, NULL, 0, 0, N'sidCS')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'be3a3a39-877e-4fef-9041-f9cf162c7d08', N'Akinsanya', N'Olanrewaju', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'atplerry@gmail.com', 1, N'APKAsw42l0Aqb55zJoigWaxob85bl4K9INNBWj6yA0krd9o7jxQ0O+Z3bxwsOIx0+w==', N'f4021f0e-9ba7-4f15-ad3a-ede7c80ca058', NULL, 0, 0, NULL, 0, 0, N'atplerry')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c1ff6e16-06f0-41d5-9e25-d0ed104d7a1f', N'AKinsanya', N'Olamilekan', NULL, NULL, NULL, 3, CAST(N'2018-02-15 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'olanrewaju.akinsanya3@gmail.com', 1, N'AMdfU23vvoK45XJTTbAgJ5T5+FzeaVsTcIuVEbPKuIdD8EiDoN6YsaNjUXKgHHuy1w==', N'351668b5-f937-4b49-ab9d-d000e6c478e3', NULL, 0, 0, NULL, 0, 0, N'olanrewaju.akinsanya3@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd4441511-6094-439e-ba53-5f483d4f767b', N'Akinsanya', N'akinCardPrint', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'akinCardPrint@gmail.com', 1, N'AA73qVQQQOa87NrFJblTXqDxNQXHS4gcO3IO7Z5J/x6C1rc9WEKD8SsA0RZjXY1N/g==', N'5dcb130c-55c0-4fd0-87e2-0569e922da31', NULL, 0, 0, NULL, 0, 0, N'sidPrinting')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'db0a2526-a17a-4712-8e84-7fa60b9f94c6', N'Akinsanya', N'akinCardOps', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'akinCardOps@gmail.com', 1, N'AGKIuINNuJNrL0icoV+E/cUeFPYKxZokbCgifkrNy8UU6f9u3Fs6xswzOBKJYWOEWA==', N'2fffb2c5-f7b4-4c98-8529-00be604369a1', NULL, 0, 0, NULL, 0, 0, N'sidCardOps')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'dbbf580e-5eab-4170-b9da-bb76e0afe70f', N'Akinsanya', N'akinMA', NULL, NULL, NULL, 1, CAST(N'2015-01-10 11:54:15.797' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'sidMA@gmail.com', 1, N'AEqHwMlSIo+OqWZHJJ1AN0+dDvaHeaNQq1ZSX7+mQciZiaci+OZyEldN6FAzuHeZwg==', N'f75ef07f-1620-4c74-8a88-50a7feaa04bc', NULL, 0, 0, NULL, 0, 0, N'sidMA')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'dbd0fb1b-a381-4353-8fdc-c6a2acc43264', N'AKinsanya', N'Olamilekan', NULL, NULL, NULL, 3, CAST(N'2018-02-15 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'olanrewaju.akinsanya1@gmail.com', 1, N'APOe3ChH6d6QoFwr6uJ/43N9Dya9PG3s8JKkSyxBIk2HDxr7tyNJDUODU+ZU9udIaw==', N'cdfeeba0-34b9-45c2-9cf3-8a61fb460c5c', NULL, 0, 0, NULL, 0, 0, N'olanrewaju.akinsanya1@gmail.com')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f6c2ef4a-9eb8-4d6e-8d88-8b0c8353275d', N'GTBank', N'GTBank', NULL, NULL, NULL, 3, CAST(N'2018-02-27 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'GTBank@gmail.com', 1, N'AG/ehFBHni8b1fy/2HvgaAnsav4yL/v7OfYqGaJMsM0TaTWhAKCszPx68fys82848w==', N'fb72b394-2ca7-4012-ba4d-8acc87cb286c', N'0909689797', 0, 0, NULL, 0, 0, N'GTBank01')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [MiddleName], [Nickname], [Suffix], [Level], [JoinDate], [Title], [EmailSignature], [Photo], [ProfilePicture], [ProfileIsVisible], [UserLanguagekey], [EnableMobileApp], [EnableOfflineUser], [Status], [IsDeleted], [IsFrozen], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f73302f6-5b99-4aae-9e7f-7026097f71c3', N'AKinsanya', N'Olamilekan', NULL, NULL, NULL, 3, CAST(N'2018-02-15 00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, N'olanrewaju.akinsanya2@gmail.com', 1, N'AKrUohZK1h+jf58oql2Z5w3qSzK19yuMTkfZPxq9IvpyZmo/AFQQQQmvreke4FPVxw==', N'486740f0-8438-461a-a3c0-0209476aa455', NULL, 0, 0, NULL, 0, 0, N'olanrewaju.akinsanya2@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[CardDelivery] ON 

GO
INSERT [dbo].[CardDelivery] ([Id], [JobTrackerId], [DepartmentId], [TargetDepartmentId], [TotalQuantity], [TotalHeld], [TotalWaste], [DeliveredById], [DeliveredOn], [ConfirmedById], [ConfirmedOn], [IsCompleted], [Remark]) VALUES (75, 84, 10, 3, 0, 0, 0, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:52:06.593' AS DateTime), N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:52:06.593' AS DateTime), 0, NULL)
GO
INSERT [dbo].[CardDelivery] ([Id], [JobTrackerId], [DepartmentId], [TargetDepartmentId], [TotalQuantity], [TotalHeld], [TotalWaste], [DeliveredById], [DeliveredOn], [ConfirmedById], [ConfirmedOn], [IsCompleted], [Remark]) VALUES (76, 84, 5, 9, 0, 0, 0, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:52:06.593' AS DateTime), N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:52:06.593' AS DateTime), 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[CardDelivery] OFF
GO
SET IDENTITY_INSERT [dbo].[CardIssuance] ON 

GO
INSERT [dbo].[CardIssuance] ([Id], [JobId], [TotalQuantity], [TotalQuantityIssued], [TotalQuantityRemain], [TotalWaste], [TotalHeld], [IssuanceId], [CollectorId], [IssuanceStatusId]) VALUES (31, 44, 100, 100, 0, 0, 0, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', 1)
GO
SET IDENTITY_INSERT [dbo].[CardIssuance] OFF
GO
SET IDENTITY_INSERT [dbo].[CardIssuanceLog] ON 

GO
INSERT [dbo].[CardIssuanceLog] ([Id], [CardIssuanceId], [JobTrackerId], [IssuanceTypeId], [TotalQuantity], [QuantityIssued], [QuantityRemain], [IssuanceId], [CollectorId], [IssuedDate]) VALUES (36, 31, 84, 1, 100, 100, 0, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-04-10 09:52:06.460' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[CardIssuanceLog] OFF
GO
INSERT [dbo].[Client] ([Id], [Secret], [Name], [ApplicationType], [Active], [RefreshTokenLifeTime], [AllowedOrigin], [IsPublic]) VALUES (N'consoleApp', N'lCXDroz4HhR1EIx8qaz3C13z/quTXBkQ3Q5hj7Qx3aA=', N'Console Application', 1, 1, 14400, N'*', 1)
GO
INSERT [dbo].[Client] ([Id], [Secret], [Name], [ApplicationType], [Active], [RefreshTokenLifeTime], [AllowedOrigin], [IsPublic]) VALUES (N'ngAuthApp', N'5YV7M1r981yoGhELyB84aC+KiYksxZf1OY3++C1CtRM=', N'AngularJS front-end Application', 0, 1, 7200, N'http://localhost:55094', 1)
GO
INSERT [dbo].[Client] ([Id], [Secret], [Name], [ApplicationType], [Active], [RefreshTokenLifeTime], [AllowedOrigin], [IsPublic]) VALUES (N'ngAuthApp2', N'5YV7M1r981yoGhELyB84aC+KiYksxZf1OY3++C1CtRM=', N'AngularJS front-end Application', 0, 1, 7200, N'http://localhost:59715', 1)
GO
SET IDENTITY_INSERT [dbo].[ClientStockLog] ON 

GO
INSERT [dbo].[ClientStockLog] ([Id], [ClientStockReportId], [CardIssuanceId], [IssuanceQty], [OpeningStock], [ClosingStock]) VALUES (33, 32, 31, 100, 10000, 9900)
GO
SET IDENTITY_INSERT [dbo].[ClientStockLog] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientStockReport] ON 

GO
INSERT [dbo].[ClientStockReport] ([Id], [SidProductId], [ClientVaultReportId], [FileName], [QtyIssued], [TotalQtyIssued], [WasteQty], [ReturnQty], [OpeningStock], [ClosingStock], [CreatedOn]) VALUES (32, 408, 12, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 100, 100, 0, 0, 10000, 9900, CAST(N'2018-04-10 09:52:06.547' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ClientStockReport] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientUser] ON 

GO
INSERT [dbo].[ClientUser] ([Id], [SidClientId], [UserId], [CreatedOn], [ModifiedOn]) VALUES (8, 17, N'6d9ce032-49d1-42f3-a699-3e0eb4655610', CAST(N'2018-02-23 15:13:33.883' AS DateTime), CAST(N'2018-02-23 15:13:33.887' AS DateTime))
GO
INSERT [dbo].[ClientUser] ([Id], [SidClientId], [UserId], [CreatedOn], [ModifiedOn]) VALUES (9, 1, N'f6c2ef4a-9eb8-4d6e-8d88-8b0c8353275d', CAST(N'2018-02-27 14:34:45.657' AS DateTime), CAST(N'2018-02-27 14:34:45.657' AS DateTime))
GO
INSERT [dbo].[ClientUser] ([Id], [SidClientId], [UserId], [CreatedOn], [ModifiedOn]) VALUES (10, 1, N'007c9254-f85d-4ec5-9ea2-98e75339dfbf', CAST(N'2018-02-28 10:00:50.557' AS DateTime), CAST(N'2018-02-28 10:00:50.557' AS DateTime))
GO
INSERT [dbo].[ClientUser] ([Id], [SidClientId], [UserId], [CreatedOn], [ModifiedOn]) VALUES (11, 2, N'3d14edb1-e764-44a8-a3ba-dc82113374f7', CAST(N'2018-02-28 10:01:44.130' AS DateTime), CAST(N'2018-02-28 10:01:44.130' AS DateTime))
GO
INSERT [dbo].[ClientUser] ([Id], [SidClientId], [UserId], [CreatedOn], [ModifiedOn]) VALUES (12, 45, N'5feab04e-c618-4ea9-8252-2f8560ef01db', CAST(N'2018-02-28 10:55:47.487' AS DateTime), CAST(N'2018-02-28 10:55:47.487' AS DateTime))
GO
INSERT [dbo].[ClientUser] ([Id], [SidClientId], [UserId], [CreatedOn], [ModifiedOn]) VALUES (13, 45, N'6619b59b-a52e-4397-98df-0e3259dd8089', CAST(N'2018-02-28 10:56:32.923' AS DateTime), CAST(N'2018-02-28 10:56:32.923' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ClientUser] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientVaultReport] ON 

GO
INSERT [dbo].[ClientVaultReport] ([Id], [SidProductId], [OpeningStock], [ClosingStock], [ModifiedOn]) VALUES (12, 408, 10000, 9900, CAST(N'2018-04-10 09:52:06.487' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ClientVaultReport] OFF
GO
SET IDENTITY_INSERT [dbo].[DeliveryProfile] ON 

GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (1, 17, N'FIRST BANK PLC', N'214, BROAD STREET, 8TH FLOOR, ELEPHANT HOUSE, MARINA', N'LAGOS', N'NIGERIA', N'DANIEL OKOSUN')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (2, 5, N'ABBEY BANK', N'23 KARIMU KOTUN', N'LAGOS', N'NIGERIA', N'NNENNA EZUMAH')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (3, 2, N'ACCESS BANK', N'1665 OYINJOLAIYEMI ST', N'LAGOS', N'NIGERIA', N'ADEMOLA SALAMI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (4, 6, N'ACCION BANK', N'4TH FLOOR 322 IKORODU ROAD ANTHONY IKEJA TH FLOOR 322 IKORODU ROAD', N'LAGOS', N'NIGERIA', N'GIFT MAHUBO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (5, 7, N'AMJU, UNIC MFB', N'71, AIRPORT ROAD EFFURUN, WARRI', N'DELTA', N'NIGERIA', N'ADETUNJI AYOBAMI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (6, 8, N'ASO SAVING AND LOANS PLC', N'PLOT 266, CENRAL ZONE ,AQ', N'ABUJA FTC', N'NIGERIA', N'ASO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (7, 9, N'CITIBANK NIG', N'27 , KOFO AB AYOMI STREET V.I', N'LAGOS', N'NIGERIA', N'OYINADE MAGBAGBEOLA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (8, 10, N'Diamond Bank Nigeria', N'IKEJA LADIPO OLUWOLE OFF ADENIYI JONES', N'LAGOS', N'NIGERIA', N' Nnena Ibekwe')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (9, 11, N'Eco Bank', N'Victoria Island', N'LAGOS', N'NIGERIA', N'Mrs. Amaka Adibe')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (10, 12, N'EKONDO MFB', N'Calabar,', N'Cross Rivers', N'NIGERIA', N'Simeon Fagbenjo')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (11, 14, N'FCMB HEAD CARD SERVICES', N'ABULE OJA YABA', N'LAGOS', N'NIGERIA', N'MR FEMI ADEBAYO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (12, 15, N'EBANKING OPERATIONS', N'2 Kofo Abayomi Street', N'LAGOS', N'NIGERIA', N'CARD AND ONLINE BANKING')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (13, 16, N'FIRST GENERATION MFB', N'886, AMINU KANO CRESCENT, WUSE 11 ABUJA', N'ABUJA', N'NIGERIA', N'MBARAKA ASUQUO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (14, 1, N'GTB', N'VICTORIA ISLAND', N'LAGOS', N'NIGERIA', N'OLUWATOUN LAWAL')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (15, 19, N'GTB GAMBIA', N'56,  Kairaba Avenue, Fajakara, KSMD', N'Banjul', N'GAMBIA', N'Bolaji Ayodele')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (16, 20, N'GTBANK (GHANA) LIMITED', N'NO. 206, BLOCK 3, SECTION 51', N'APENKWA-ACCRA, GHANA, ABIKA LAPAZ BRANCH', N'GHANA', N'ALEXANDER MARKWEI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (17, 18, N'GTBANK RWANDA LTD', N'P.O BOX 331 KIGALI_RWANDA KN3, AVE 32', N'RWANDA', N'RWANDA', N'ALIAN UMUTONI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (18, 21, N'CARD SERVICES UNIT, GTBANK UGANDA LIMITED', N'PILOT 56,KIRA ROAD , KAMPALA', N'UGANDA', N'UGANDA', N'CONCY ANENA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (19, 22, N'HASAL MICROFINANCE BANK', N'PLOT 11652,AHMADU BELLO WAY', N'GARKI DISTRICT ABUJA', N'ABUJA', N'FRANK EGWAKHIDE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (20, 23, N'HERITAGE BANK LTD', N'143, AHMADU BELLO WAY V/I', N'LAGOS', N'NIGERIA', N'CHINENYE MIKE MADOGHVE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (21, 24, N'IKEJA ELECTRICITY DISTRIBUTION COMPANY', N'OBAFEMI AWOLOWO WAY,IKEJA', N'LAGOS', N'NIGERIA', N'JOHN ADESOLA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (22, 46, N'INTERSWITCH', N'VICTORIA ISLAND', N'LAGOS', N'NIGERIA', N'.')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (23, 26, N'KEYSTONE BANK LIMITED', N'7TH FLOOR Keystone Crescent, V.I,', N'LAGOS', N'NIGERIA', N'ANGUS EGENI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (24, 27, N'LASRA', N'Lateef Jakande Road,Agidingbi', N'LAGOS', N'NIGERIA', N'GM LASRA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (25, 28, N'LASU', N'Registrar Office LASU OJO', N'LAGOS', N'NIGERIA', N'Lewis Akinwunmi')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (26, 32, N'Resort Savings & Loans', N'5th Floor, St. Nicholas Hospital Building', N'LAGOS', N'NIGERIA', N'EMEKA MEME')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (27, 33, N'HEAD CARD SERVICES UNIT', N'ROKEL , 25/27 SIAKA STEVEN ST', N'FREE TOWN SIERRA LEONE', N'SIERRA LEONE', N'MR ALHADJI H.A.B. LEWALLY')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (28, 35, N'SKYE BANK PLC', N'30, MARINA STREET', N'LAGOS', N'NIGERIA', N'FUNMILOLA KAZEEM')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (29, 36, N'STANBIC', N'PLOT 1-4 INDUSTRIAL AVENUE ILUPEJU', N'LAGOS', N'NIGERIA', N'ITOHAN IYALLA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (30, 34, N'STERLING BANK', N'MARINA', N'LAGOS', N'NIGERIA', N'E- BANKING OPERATIONS')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (31, 4, N'UBA', N'57 Marina', N'LAGOS', N'NIGERIA', N'ABIMBOLA OLOYEDE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (32, 39, N'UBA GHANA', N'Heritage Tower, Ambassadorial Enclave', N'Accra Ghana', N'GHANA', N' Mr Abu')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (33, 40, N'UNILORIN', N'12, DALBATO STREET PALMGROVE ESTATE', N'ILUPEJU LAGOS', N'NIGERIA', N'MR BAMIDELE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (34, 41, N'Union Bank', N'Marina', N'LAGOS', N'NIGERIA', N'Uwa Onwuka')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (35, 42, N'UNITY BANK', N'290A AKIN OLUGBADE STREET VI', N'LAGOS', N'NIGERIA', N'USMAN BABA_USMAN')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (36, 3, N'Wema Tower', N'54 Marina', N'LAGOS', N'NIGERIA', N'Mr. Damola Bolodeoku')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (37, 43, N'ZENITH BANK', N'HEAD CARD SERVICES UNIT', N'VICTORIA ISLND LAGOS', N'NIGERIA', N'BEN  ANYAWU/ CSD UNIT')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (38, 61, N'TRUST BOND MFB BANK', N'FINANCIAL INSTITUTION, FIRST BANK MARINA', N'LAGOS', N'NIGERIA', N'TEMITOPE HAMZAT')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (39, 52, N'AG MORTGAGE BANK', N'96 OPEBI ROAD, IKEJA', N'LAGOS', N'NIGERIA', N'PRINCE OKOJIE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (40, 53, N'CHEMART', N'IKOYI', N'LAGOS', N'NIGERIA', N'MRS OKEOWO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (41, 54, N'ENERGY BANK', N'30 INDEPENDENCE AVENUE, GNAT HEIGHTS,RIDGE AREA.', N'ACCRA', N'GHANA', N'KENNETH OKINE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (42, 55, N'FIRST ATLANTIC BANK LTD.', N'ATLANTIC PLACE,N0 1 SEVENTH AVENUE,RIDGE WEST.', N'ACCRA', N'GHANA', N'VINCENT AFUDEGO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (43, 56, N'FORTIS MFB', N'PLOT 2135,HERBERT MACAULAY WAY,WUSE, ZONE 5', N'ABUJA', N'NIGERIA', N'SAMUEL OLAKUNLE OLADIMEJI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (44, 69, N'GOLF VIEW', N'12,GENERAL ADEYINKA ADEBAYO ROAD,GRA IKEJA.', N'LAGOS', N'NIGERIA', N'TAIWO ADESAOYE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (45, 57, N'INFINITE HOMES', N'11,KAURA NAMODA STREET,OFF FASKARI CRESCENT AREA 3, GARKI', N'ABUJA', N'NIGERIA', N'AFOLABI ADEJUMO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (46, 30, N'MAINSTREAM SYSTEM SOLUTION LTD', N'SUITE 329,BLOCK A2-12,SURA COMPLEX SIMPSON STREET,', N'LAGOS', N'NIGERIA', N'MR FELIX OLADELE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (47, 58, N'MOPOL', N'IKEJA', N'LAGOS', N'NIGERIA', N'ASP SOLA JEJE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (48, 59, N'MUTUAL ALLIANCE MORTGAGE BANK', N'PLOT 209,ORON ROAD, UYO', N'AKWA-IBOM', N'NIGERIA', N'NSEKPANG EMMA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (49, 65, N'PROVIDUS', N'PLOT 4, ADETOKUNBO ADEMOLA, VICTORIA ISLAND,', N'LAGOS', N'NIGERIA', N'LANRE OGUNDARE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (50, 33, N'ROKEL', N'HEAD OFFICE:  HEAD CARDS SERVICES UNIT ,25/27 SIAKA STEVEN STR,', N'FREE TOWN', N'SIERRA LEONE', N'MR ALHADJI H.A.B LEWALLY')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (51, 66, N'ATREE INDUSTRIES LTD', N'59, OLD 47B, ADEOLA ODEKU STR,', N'PARK & SHOP ,GURU PLAZA,LAGOS', N'NIGERIA.', N'ANIL')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (52, 46, N'SPAR GREEN GIFT', N'ATREE INDUSTRIES LTD,59,OLD 47B,ADEOLA ODEKU STR.,PARK&SHOP GURU PLAZA,', N'LAGOS', N'NIGERIA', N'ANIL')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (53, 66, N'SPAR VERVE RED REWARD', N'ATREE INDUSTRIES LTD,58 TOWN PLANNING ROAD,ILUPEJU', N'LAGOS', N'NIGERIA', N'MR JOHN GOLDSMITH')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (54, 49, N'SUNTRUST', N'1,OLADELE OLASORE STR,VICTORIA ISLAND,', N'LAGOS', N'NIGERIA', N'PATRICK SANNI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (55, 67, N'ZENITH GHANA', N'PREMIER TOWERS,LIBERIA ROAD,P.M.B CT 393 CANTONMENTS,', N'ACCRA,', N'GHANA.', N'JOSEPH ASAMOAH')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (56, 51, N'UTBANK GHANA', N'25B,MANET TOWERS,AIRPORT CITY,', N'ACCRA', N'GHANA', N'ADJAO OSEI NKUMAH')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (57, 25, N'JAIZ BRANCH 13', N'5,AHMADU BELLO WAY,SOKOTO FORMER FINBANK BUILDING,', N'SOKOTO', N'NIGERIA', N'MUHAMMED MARYAM JUMMAI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (58, 25, N'JAIZ BRANCH 7', N'BELLO ROAD,KANO', N'KANO', N'NIGERIA', N'ABUBAKAR NASIR')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (59, 25, N'JAIZ BRANCH 3', N'55,TAFAWA BALEWA WAY,OFF MURITALA MUHAMMED WAY,', N'KANO', N'NIGERIA', N'GBADEGESIN ABDULRASHEED')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (60, 25, N'JAIZ BRANCH 15', N'OPERATION UNIT BUK/GWARZO ROAD,KABUGA SHOPPING COMPLEX,', N'KANO', N'NIGERIA', N'BASHIR HARUNA MUHAMMAD')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (61, 25, N'JAIZ BRANCH 4', N'11A,ALI AKILU ROAD,KADUNA,', N'KADUNA', N'NIGERIA', N'HAUWA IBRAHIM')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (62, 25, N'JAIZ BRANCH 19', N'FARIDA VENTURE BUILDING,KANO ROAD,', N'KADUNA', N'NIGERIA', N'MUHAMMED RABIU')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (63, 25, N'JAIZ BRANCH 14', N'SHOP NO G5,ADO BAYERO MALL,TRADE FAIR COMPLEX,ZOO ROAD,', N'KANO', N'NIGERIA', N'MUMIN MUHAMMED HASSAN')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (64, 25, N'JAIZ BRANCH 6', N'NO 18, SHEHU LAMINU WAY, MAIDUGURI,', N'BORNO', N'NIGERIA', N'MOHAMMED FATIMAH ABBA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (65, 25, N'JAIZ BRANCH 27', N'PLOT 140, OPPOSITE NNPC DEPOT,MAIDUGURI RD,HOTORO,', N'KANO', N'NIGERIA', N'BALARABE AMINU MUHAMMED')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (66, 25, N'JAIZ BRANCH 8', N'109, IBB WAY, KOFAR KAURA,', N'KATSINA', N'NIGERIA', N'BELLO FATAI ABIODUN')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (67, 25, N'JAIZ BRANCH 18', N'NO 14, ALIYU MUSTAPHA WAY,OPP NEW MODERN MARKET,YOLA', N'ADAMAWA', N'NIGERIA', N'ISA MAIGARI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (68, 25, N'JAIZ BRANCH 5', N'OPERATION UNITS, 8 MARKET ROAD,COMMERCIAL AREA,', N'GOMBE', N'NIGERIA', N'IBRAHIM KABIR ZAMFARA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (69, 25, N'JAIZ BRANCH 26', N'AHMADU BELLO UNIVERSITY RD,OPPOSITE MAIN GATE,SAMARU', N'KADUNA', N'NIGERIA', N'BELLO FATAI ABIODUN')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (70, 25, N'JAIZ BRANCH 12', N'ABUBAKAR TAFAWA BALEWA UNIVERSITY,ATBU', N'BAUCHI', N'NIGERIA', N'DANFULANI MUKHTAR UMAR')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (71, 25, N'JAIZ BRANCH  ILORIN', N'11, WAHABI FOLAWIYO,UNITY ROAD,BESIDE KASMAG TRANSPORT,ILORIN', N'KWARA', N'NIGERIA', N'HAKEEM BAKARE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (72, 25, N'JAIZ BRANCH 11', N'NO 21,CANTEEN ROAD,OPPOSITE CBN,', N'GUSAU', N'NIGERIA', N'YAKASAI BILYAMINU INUWA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (73, 25, N'JAIZ BRANCH 24', N'186,ABBA RD ,PORT HARCOURT, OPPOSITE WATER LINE,', N'RIVERS', N'NIGERIA', N'BELLO MUKAILA BAMIDELE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (74, 25, N'JAIZ BRANCH 21', N'119,AWOLOWO WAY, ALLEN ROUND ABOUT IKEJA,', N'LAGOS', N'NIGERIA', N'SULAIMON ABUBAKAR')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (75, 25, N'JAIZ BRANCH 10', N'NO 36,DOUALA STR,OFF HERBERT MACAULAY WAY,ERISCO BOMPET PLAZA,ZONE 5', N'ABUJA', N'NIGERIA', N'USMAN MUHAMMED')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (76, 25, N'JAIZ BRANCH 28', N'PLOT 20, AHMED BELLO WAY, BIRNIN KEBBI,', N'KEBBI', N'NIGERIA', N'USMAN MUKHTAR')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (77, 25, N'JAIZ BRANCH 17', N'NO 2,MOHAMMED BELLO,KIRFI ROAD,OFF AHMED BELLO WAY,', N'BAUCHI', N'NIGERIA', N'AHMED ISA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (78, 25, N'JAIZ BRANCH 25', N'IST AVENUE,DBB PLAZA,GWARIMPA,FCT', N'ABUJA', N'NIGERIA', N'LAIYEMOH FEHINTOLA AISHA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (79, 48, N'ACCESS BANK GHANA', N'EAST CANTONMENT BRANCH, 9 LA TABU CRESENT,NEAR BURNMA CAMP', N'GHANA', N'GHANA', N'JULIET ACKAH_NYAMIKE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (80, 56, N'FORTIS MFB PLC', N'PLOT 2135,HERBERT MACUAULAY WAY', N'WUSE ZONE 5 ABUJA', N'NIGERIA', N'SAMUEL OLAKUNLE OLADIMEJI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (81, 70, N'FIRST BANK GHANA', N'INTERNATIONAL BANKING GROUP, 6TH FLOOR, SAMUEL ASABIA HOUSE', N'35 MARINA LAGOS', N'NIGERIA', N'OPEYEMI AKINLOLU')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (82, 60, N'O3 CAPITAL NIG. LIMITED', N'PLOT 18A, JERRY IRIABE STREET,', N'OFF ADMIRALTY WAY,LEKKI PHASE 1', N'LAGOS, NIGERIA', N'TEMITAYO BALOGUN')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (83, 46, N'NEW PRUDENTIAL MORTGAGE BANK', N'INFORMATION TECH. DEPT.', N'BISHOP OLUWOLE V.I,', N'LAGOS', N'OLORUNTOBI OLADIPO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (84, 68, N'ECO RWANDA', N'DREAM MILES TEAM,RWANDA AIR,', N'KIGALI INTERNATIONAL AIRPORT,', N'RWANDA', N'ROBINSON .L. CHACHANA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (85, 50, N'GTB SIERRA LEONE', N'CORPORATE HQS,SPARTA HOUSE,', N'12 WILBERFORCE STREET,', N'SIERRA LEONE.', N'LANCELOTTE FAULKNER')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (86, 62, N'OMOLUABI MORTGAGE BANK', N'GOVERNOR''S OFFICE,GBONGAN ROAD,', N'OSHOGBO,OSUN', N'NIGERIA', N'OLATUNDE ABIOLA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (87, 78, N'ALVANA MICROFINANCE BANK', N'AIFCE,ORLU ROAD,PMB 1033,', N'OWERRI,', N'IMO STATE', N'MRS. C.C NWABUEZE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (88, 72, N'CONVENANT MICROFINANCE BANK LIMITED', N'CANAANLAND, OTA', N'OGUN STATE', N'NIGERIA', N'IBUKUNOLU OLUWUNMI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (89, 79, N'PARALLEX MFB', N'31B, OYELEKE STREET,', N'ALAUSA, IKEJA', N'NIGERIA', N'MOBOLAJI YINKA-KEHINDE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (90, 4, N'UBA GHANA', N'HERITAGE TOWER, AMBASSADORIAL ENCLAVE', N'ACCRA', N'GHANA', N'MR ABU')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (91, 46, N'LAPO MFB', N'HEAD OFFICE, IKEJA ANNEX, IRORUN TOWERS,', N'65 KUDIRAT ABIOLA WAY, OREGUN IKEJA LAGOS', N'NIGERIA', N'CARD UNIT')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (92, 77, N'MTN PRESTIGE CARDS', N'NO 4 ONITORO ROAD, IKOYI', N'LAGOS', N'NIGERIA', N'IFECHUKWUDE KAGHO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (93, 46, N'WETLAND MICROFINANCE BANK', N'NO. 38 DECO ROAD, WARRI', N'DELTA STATE', N'NIGERIA', N'CHRIS JOHNSON KPEKPE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (94, 25, N'JAIZ ABUJA BRANCH 2', N'GROUND FLOOR, KANO HOUSE,', N'73 RALPH SHODEINDE STREET,CBD', N'ABUJA', N'SHAIBU HAJARA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (95, 70, N'FIRST BANK NIGERIA PLC', N'214, BROAD STREET,8TH FLOOR, ELEPHANT HOUSE,', N'MARINA, LAGOS.', N'NIGERIA', N'DANIEL OKOSUN')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (96, 47, N'TRICYCLE OWNERS AND OPERATIONS, ASSOCIATION OF NIGERIA', N'358, LAGOS ABEOKUTA EXPRESS, SUPER BS, AGEGE', N'LAGOS', N'NIGERIA', N'ISREAL')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (97, 4, N'GLOBAL TECHNOLOGY PARTNERS', N'5001 EAST 68TH STREET SUITE ,', N'TULSA, OKLAHOMA', N'UNUTED STATES', N'AMBER JOHNSON')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (98, 64, N'OSCOTECH MICROFINANCE BANK', N'OSCO MFB NIGERIA LIMITED', N'OSUN STATE', N'NIGERIA', N'SALAMI MOJEED .O')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (99, 63, N'OMOLUABI MORTGAGE BANK PLC', N'GOVERNOR''S OFFICE, GBONGAN ROAD,', N'OSHOGBO, OSUN', N'NIGERIA.', N'OLATUNDE ABIOLA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (100, 48, N'ACCESS BANK ZAMBIA LTD.', N'P.O BOX 35273, PLOT 682, CAIRO RD,', N'NORTHEND, LUSAKA,', N'ZAMBIA', N'ALFRED ACKON')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (101, 43, N'ZENITH GAMBIA', N'HEAD CARD SERVICE UNIT, V.I', N'LAGOS', N'NIGERIA', N'BEN ANYAWU/ CSD UNIT')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (102, 35, N'SKYE GAMBIA', N'30, MARINA STREET', N'LAGOS', N'NIGERIA', N'FUNMILOLA KAZEEM')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (103, 35, N'SKYE BANK PLC', N'30, MARINA STREET', N'LAGOS', N'NIGERIA', N'FUNMILOLA KAZEEM')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (104, 37, N'SKYE BANK PLC', N'30, MARINA STREET', N'LAGOS', N'NIGERIA', N'FUNMILOLA KAZEEM')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (105, 82, N'STANDARD CHARTERED BANK', N'142 AHMADU BELLO WAY,', N'VICTORIA ISLAND, LAGOS.', N'NIGERIA', N'ANTHONY EDIMINUE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (106, 46, N'GENESIS LAGOS', N'16, OBA AKINJOBI STREET,', N'GRA IKEJA LAGOS.', N'NIGERIA.', N'FEMI ADEYEMI')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (107, 84, N'CORONATION MERCHANT VERVE', N'10 AMODU OJUKUTU STREET, VICTORIA ISLAND', N'LAGOS', N'NIGERIA', N'OPE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (108, 38, N'SKYE GUINEA', N'30, MARINA STREET  LAGOS  NIGERIA    ', N'LAGOS', N'NIGERIA', N'FUNMILOLA KAZEEM  ')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (109, 81, N'ZENITH GAMBIA', N'HEAD CARD SERVICE UNIT, V.I  LAGOS  NIGERIA     ', N'LAGOS', N'NIGERIA', N'BEN ANYAWU/CSD UNIT')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (110, 46, N'FIDELITY BANK', N'2 KOFO ABAYOMI STREET,', N'LAGOS', N'NIGERIA', N'CARD ONLINE AND BANKING')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (111, 86, N'Ngbo Microfinance Bank Ltd', N'Nkwongbo Market Square Ngbo Onhaukwu Local Goverment', N'Ebonyi State', N'Nigeria', N'Eze Francis')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (112, 76, N'UNICAL MICROFINANCE BANK', N'UNIVERSITY OF CALABAR', N'CALABAR', N'NIGERIA', N'VICTOR CHRIS')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (113, 46, N'PAGE MICROFINANCE BANK', N'NO 18, NORMAN WILLIAMS STREET,', N'IKOYI, LAGOS', N'NIGERIA', N'IBRAHIM ABIODUN')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (114, 88, N'READY CASH', N'HERBERT MACAULAY WAY,', N'YABA, LAGOS', N'NIGERIA', N'EMEKA ONWUKA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (115, 5, N'ALVANA MICROFINANCE BANK LTD', N'ALVAN IKOKU FED. COLLEGE OF EDUCTION OWERRI', N'OWERRI', N'NIGERIA', N'MD')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (116, 89, N'PAGE MFB LIMITED', N'18, NORMAN WILLIAMS STREET, IKOYI', N'LAGOS', N'NIGERIA', N'ABIODUN IBRAHIM')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (117, 87, N'AGRICULTURAL DEVELOPMENT BANK', N'3RD AMBASSADORIAL ENCLAVE, GREATER ACCRA , ACCRA', N'ACCRA', N'GHANA', N'ALEXANDER FORSON')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (118, 92, N'WETLAND MICROFINANCE BANK', N'NO. 38, DECO ROAD, WARRI,', N'DELTA STATE.', N'NIGERIA', N'CHRIS JOHNSON KEKPE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (119, 67, N'GLOBAL TECHNOLOGY PARTNERS', N'5001 EAST 68TH STREET, SUITE 500', N'TULSA, OKLAHOMA,', N'UNITED STATES.', N'AMBER JOHNSON')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (120, 90, N'NEW PRUDENTIAL MORTGAGE BANK', N'INFORMATION TECH. DEPT,', N'BISHOP OLUWOLE, V.I, LAGOS.', N'NIGERIA.', N'OLORUNTOBI OLADIPO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (121, 34, N'STERLING BANK(KIA KIA)', N'ADEOLA HOPEWELL,', N'VICTORIA ISLAND,', N'LAGOS', N'ADEDAYO KUYORO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (122, 15, N'FIDELITY BANK', N'HEAD OFFICE,', N'DEPARTMENT OF CARDS,', N'LAGOS.', N'JOHNSON AJANI / NONYELUM ANOLIEFO')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (123, 45, N'BONAMI', N'43, SOBO AROBIODU IKEJA GRA OPPOSITE POLICE OFFICERS MESS', N'LAGOS', N'NIGERIA', N'MRS SAGOE')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (124, 80, N'LAPO MFB', N'HEAD OFFICE, IKEJA ANNEX', N'KUDIRAT ABIOLA WAY, OREGUN', N'LAGOS', N'CARDS SERVICES')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (125, 45, N'IMAGE PLUS LOYALTY', N'SID', N'LAGOS', N'NIGERIA', N'SEUN AKINLAPA')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (126, 94, N'MRS JANET ADETU', N'6B Maitama Sule Street,', N'Off Awolowo Rd, Ikoyi', N'Nigeria', N'MRS. Janet Adetu')
GO
INSERT [dbo].[DeliveryProfile] ([Id], [SidClientId], [Name], [Address], [State], [Country], [ContactPerson]) VALUES (127, 14, N'CARDS & ELECTRONIC', N'42, ADEMOLA ADETOKUNBO', N'VICTORIA ISLAND, LAGOS', N'NIGERIA', N'OLUSOLA ADENIYI')
GO
SET IDENTITY_INSERT [dbo].[DeliveryProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (1, N'Card Ops')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (2, N'Printing')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (3, N'Card Engineer')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (4, N'Quality Assurance')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (5, N'Quality Control')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (6, N'Mailing')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (7, N'Customer Service')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (8, N'Relationship Manager')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (9, N'Dispatch')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (10, N'Inventory')
GO
INSERT [dbo].[Department] ([Id], [Name]) VALUES (11, N'Client')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryCardType] ON 

GO
INSERT [dbo].[DictionaryCardType] ([Id], [SidCardTypeId], [CardCodeName]) VALUES (1, 2, N'MC_MasterCard_Master Card')
GO
INSERT [dbo].[DictionaryCardType] ([Id], [SidCardTypeId], [CardCodeName]) VALUES (2, 4, N'verve')
GO
INSERT [dbo].[DictionaryCardType] ([Id], [SidCardTypeId], [CardCodeName]) VALUES (3, 5, N'visa')
GO
INSERT [dbo].[DictionaryCardType] ([Id], [SidCardTypeId], [CardCodeName]) VALUES (4, 2, N'mc')
GO
SET IDENTITY_INSERT [dbo].[DictionaryCardType] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryClientName] ON 

GO
INSERT [dbo].[DictionaryClientName] ([Id], [SidClientId], [ClientCodeName]) VALUES (31, 1, N'gtb_gtbn')
GO
INSERT [dbo].[DictionaryClientName] ([Id], [SidClientId], [ClientCodeName]) VALUES (32, 2, N'AccessBank')
GO
INSERT [dbo].[DictionaryClientName] ([Id], [SidClientId], [ClientCodeName]) VALUES (33, 17, N'FirstBank')
GO
INSERT [dbo].[DictionaryClientName] ([Id], [SidClientId], [ClientCodeName]) VALUES (34, 17, N'FBN')
GO
SET IDENTITY_INSERT [dbo].[DictionaryClientName] OFF
GO
SET IDENTITY_INSERT [dbo].[DictionaryServiceType] ON 

GO
INSERT [dbo].[DictionaryServiceType] ([Id], [SidClientId], [SidCardTypeId], [ServiceTypeId], [ServiceCodeName]) VALUES (1, 17, 2, 1, N'Diamond')
GO
INSERT [dbo].[DictionaryServiceType] ([Id], [SidClientId], [SidCardTypeId], [ServiceTypeId], [ServiceCodeName]) VALUES (11, 1, 1, 1, N'aa')
GO
INSERT [dbo].[DictionaryServiceType] ([Id], [SidClientId], [SidCardTypeId], [ServiceTypeId], [ServiceCodeName]) VALUES (12, 1, 1, 1, N'Perr')
GO
INSERT [dbo].[DictionaryServiceType] ([Id], [SidClientId], [SidCardTypeId], [ServiceTypeId], [ServiceCodeName]) VALUES (13, 1, 1, 1, N'Perr')
GO
INSERT [dbo].[DictionaryServiceType] ([Id], [SidClientId], [SidCardTypeId], [ServiceTypeId], [ServiceCodeName]) VALUES (14, 1, 3, 3, N'aaa')
GO
INSERT [dbo].[DictionaryServiceType] ([Id], [SidClientId], [SidCardTypeId], [ServiceTypeId], [ServiceCodeName]) VALUES (15, 1, 2, 3, N'lll')
GO
SET IDENTITY_INSERT [dbo].[DictionaryServiceType] OFF
GO
SET IDENTITY_INSERT [dbo].[EmbedCardReceipt] ON 

GO
INSERT [dbo].[EmbedCardReceipt] ([Id], [SidProductId], [EmbedCardRequestId], [ClientVaultReportId], [VendorId], [SIDReceiverId], [SupplierName], [LotNumber], [Quantity], [TimeOfReceipt], [Remark]) VALUES (8, 408, 11, 9, 2, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'Olami', N'001', 10000, CAST(N'2018-02-22 11:36:08.373' AS DateTime), NULL)
GO
INSERT [dbo].[EmbedCardReceipt] ([Id], [SidProductId], [EmbedCardRequestId], [ClientVaultReportId], [VendorId], [SIDReceiverId], [SupplierName], [LotNumber], [Quantity], [TimeOfReceipt], [Remark]) VALUES (9, 28, 12, 10, 1, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'Olami', N'001', 10000, CAST(N'2018-03-07 11:11:46.773' AS DateTime), NULL)
GO
INSERT [dbo].[EmbedCardReceipt] ([Id], [SidProductId], [EmbedCardRequestId], [ClientVaultReportId], [VendorId], [SIDReceiverId], [SupplierName], [LotNumber], [Quantity], [TimeOfReceipt], [Remark]) VALUES (10, 463, 13, 11, 2, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'Olami', N'001', 1000, CAST(N'2018-03-25 12:05:35.220' AS DateTime), NULL)
GO
INSERT [dbo].[EmbedCardReceipt] ([Id], [SidProductId], [EmbedCardRequestId], [ClientVaultReportId], [VendorId], [SIDReceiverId], [SupplierName], [LotNumber], [Quantity], [TimeOfReceipt], [Remark]) VALUES (11, 408, 14, 12, 2, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', N'Olami', N'0021', 10000, CAST(N'2018-04-10 09:52:02.893' AS DateTime), NULL)
GO
SET IDENTITY_INSERT [dbo].[EmbedCardReceipt] OFF
GO
SET IDENTITY_INSERT [dbo].[EmbedCardRequest] ON 

GO
INSERT [dbo].[EmbedCardRequest] ([Id], [SidProductId], [OrderNumber], [TotalBatchQty], [TotalDelivered], [CreatedById]) VALUES (11, 408, 1, 10000, 10000, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb')
GO
INSERT [dbo].[EmbedCardRequest] ([Id], [SidProductId], [OrderNumber], [TotalBatchQty], [TotalDelivered], [CreatedById]) VALUES (12, 28, 1, 10000, 10000, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb')
GO
INSERT [dbo].[EmbedCardRequest] ([Id], [SidProductId], [OrderNumber], [TotalBatchQty], [TotalDelivered], [CreatedById]) VALUES (13, 463, 1, 1000, 1000, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f')
GO
INSERT [dbo].[EmbedCardRequest] ([Id], [SidProductId], [OrderNumber], [TotalBatchQty], [TotalDelivered], [CreatedById]) VALUES (14, 408, 21, 10000, 10000, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f')
GO
SET IDENTITY_INSERT [dbo].[EmbedCardRequest] OFF
GO
SET IDENTITY_INSERT [dbo].[FlagType] ON 

GO
INSERT [dbo].[FlagType] ([Id], [Name]) VALUES (1, N'Partial Upload')
GO
INSERT [dbo].[FlagType] ([Id], [Name]) VALUES (2, N'Bad Packet')
GO
INSERT [dbo].[FlagType] ([Id], [Name]) VALUES (3, N'Not Sorting File')
GO
SET IDENTITY_INSERT [dbo].[FlagType] OFF
GO
SET IDENTITY_INSERT [dbo].[IssuanceStatus] ON 

GO
INSERT [dbo].[IssuanceStatus] ([Id], [Name]) VALUES (1, N'Completed')
GO
INSERT [dbo].[IssuanceStatus] ([Id], [Name]) VALUES (2, N'Partial')
GO
SET IDENTITY_INSERT [dbo].[IssuanceStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[IssuanceType] ON 

GO
INSERT [dbo].[IssuanceType] ([Id], [Name]) VALUES (1, N'New Issuance')
GO
INSERT [dbo].[IssuanceType] ([Id], [Name]) VALUES (2, N'Partial Issuance')
GO
INSERT [dbo].[IssuanceType] ([Id], [Name]) VALUES (3, N'Damage Issuance')
GO
SET IDENTITY_INSERT [dbo].[IssuanceType] OFF
GO
SET IDENTITY_INSERT [dbo].[Job] ON 

GO
INSERT [dbo].[Job] ([Id], [JobName], [JobNameId], [SidSectorId], [SidClientId], [Remark], [ServiceTypeId], [SidCardTypeId], [JobStatusId], [IsJobPartial], [Quantity], [SortingFile], [CreatedOn], [ModifiedOn]) VALUES (44, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', NULL, 1, 17, N'AJAYI CROWTHER', 1, 2, 1, 0, 100, 0, CAST(N'2018-04-10 09:41:01.223' AS DateTime), CAST(N'2018-04-10 09:41:01.223' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Job] OFF
GO
SET IDENTITY_INSERT [dbo].[JobSplit] ON 

GO
INSERT [dbo].[JobSplit] ([Id], [JobTrackerId], [DepartmentId], [SidMachineId], [RangeFrom], [RangeTo], [IsQACompleted], [IsCECompleted], [IsQCCompleted], [IsMACompleted], [CreatedById], [CreatedOn]) VALUES (20, 84, 3, 1, 1, 100, 0, 0, 0, 0, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:54:32.897' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[JobSplit] OFF
GO
SET IDENTITY_INSERT [dbo].[JobSplitCEAnalysis] ON 

GO
INSERT [dbo].[JobSplitCEAnalysis] ([Id], [JobTrackerId], [JobSplitId], [QuantityGood], [QuantityHeld], [QuantityBad], [ConfirmedHeld], [IsCEInitialized], [IsQCInitialized], [HeldReturned], [WasteReturned], [CreatedById], [CreatedOn], [ModifiedById], [ModifiedOn], [IsJobHandleByCE], [IsJobHandleByQC]) VALUES (20, 84, 20, 100, 0, 0, 0, 0, 0, 0, 0, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:54:32.940' AS DateTime), N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:54:32.940' AS DateTime), 0, 0)
GO
SET IDENTITY_INSERT [dbo].[JobSplitCEAnalysis] OFF
GO
SET IDENTITY_INSERT [dbo].[JobStatus] ON 

GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (1, N'Pending')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (2, N'Queue')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (3, N'WIP')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (4, N'Flagged')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (5, N'Completed')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (6, N'Not Required')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (7, N'SLA Met')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (8, N'SLA Not Met')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (9, N'Delivered')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (10, N'Not Delivered')
GO
INSERT [dbo].[JobStatus] ([Id], [Name]) VALUES (11, N'Partial')
GO
SET IDENTITY_INSERT [dbo].[JobStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[JobTracker] ON 

GO
INSERT [dbo].[JobTracker] ([Id], [JobId], [CardOpsId], [InventoryId], [PrintingId], [PrintQAId], [PrintQCId], [CardEngrId], [QAId], [FirstJobRunId], [CardEngrResumeId], [QCId], [MailingId], [DispatchId], [MAudId], [CustomerServiceId], [JobStatusId], [TAT], [IsPartial], [IsFlag], [IsCompleted], [CreatedOn], [ModifiedOn]) VALUES (84, 44, 5, 5, 6, 6, 6, 2, 2, 5, 1, 1, 6, 1, 1, 1, 1, 0, 0, 0, 0, CAST(N'2018-04-10 09:41:01.327' AS DateTime), CAST(N'2018-04-10 09:52:06.577' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[JobTracker] OFF
GO
SET IDENTITY_INSERT [dbo].[JobVariant] ON 

GO
INSERT [dbo].[JobVariant] ([Id], [JobId], [SidProductId], [SidVariantId]) VALUES (33, 44, 408, 2)
GO
SET IDENTITY_INSERT [dbo].[JobVariant] OFF
GO
SET IDENTITY_INSERT [dbo].[NonPersoJob] ON 

GO
INSERT [dbo].[NonPersoJob] ([Id], [SidProductId], [ServiceTypeId], [Quantity], [JobName], [Description], [IsTreated], [IsDeleted], [CreatedById], [ModifiedById], [CreatedOn], [ModifiedOn]) VALUES (1, 2, 7, 10000, N'Blank Card', N'Black Card', 1, 0, N'3fd6450a-3d5d-40d4-8226-df917d950400', N'3fd6450a-3d5d-40d4-8226-df917d950400', CAST(N'2018-02-27 14:30:15.350' AS DateTime), CAST(N'2018-02-27 14:30:15.350' AS DateTime))
GO
INSERT [dbo].[NonPersoJob] ([Id], [SidProductId], [ServiceTypeId], [Quantity], [JobName], [Description], [IsTreated], [IsDeleted], [CreatedById], [ModifiedById], [CreatedOn], [ModifiedOn]) VALUES (2, 3, 7, 1000, N'kkk', N'Tst od time', 1, 0, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-03-06 22:01:18.210' AS DateTime), CAST(N'2018-03-06 22:01:18.210' AS DateTime))
GO
INSERT [dbo].[NonPersoJob] ([Id], [SidProductId], [ServiceTypeId], [Quantity], [JobName], [Description], [IsTreated], [IsDeleted], [CreatedById], [ModifiedById], [CreatedOn], [ModifiedOn]) VALUES (3, 20, 7, 100, N'Access Bank BlankCard', N'Access Bank BlankCard Desc', 1, 0, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-03-07 11:09:32.320' AS DateTime), CAST(N'2018-03-07 11:09:32.320' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[NonPersoJob] OFF
GO
SET IDENTITY_INSERT [dbo].[Priority] ON 

GO
INSERT [dbo].[Priority] ([Id], [Name]) VALUES (1, N'Low')
GO
INSERT [dbo].[Priority] ([Id], [Name]) VALUES (2, N'Normal')
GO
INSERT [dbo].[Priority] ([Id], [Name]) VALUES (3, N'High')
GO
SET IDENTITY_INSERT [dbo].[Priority] OFF
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'+SgiIJqz7ZTCggcZz1XEBTlapb/X1Hdc2WwyMsWPeTw=', N'Olami01', N'ngAuthApp', CAST(N'2018-04-10 09:07:18.027' AS DateTime), CAST(N'2018-04-15 09:07:18.027' AS DateTime), N'y30euJbFyEO_TrPef8LcSEVs5327OAIIrgJFeQItMsCCZm82unt3aZXyNijc459A9L34bL6JjM0xlZImB098JSjQ8n4B3S5w4vtIa9zCahLUuD0X0lJhx9lxN_wl_jk-EXV2J8z73icjs1oZZJ72tXQdZXktxmH3lvT57jIIcs-wAOd_Oo8G_2A1jL49S9D66f-wISHh_9iWBgma1Rtn7AqmhIPkTAh2tl_1UfQtygEOvGO0x3Qc1UAeDO1ycox40fqTrPt7uyUWqP-aycUhqvN5muqpjGSCmyW9Gb4bOiSWNDt5-kPGXw2WkkJcWnHl63GjnVIL2qIh3_sTjeixYRtnGcfznNS93jHMKLUZo4OlHrM-7meVqeYnHH9LM6HoWUNunQd0Ctss_vYcNf14Kak6Iy_sqCOMFui3oC46yYU-4y7lVnTo5gpMzZ0ssL3rl73dv2L0QAK3bNwQbtytEQ-PMTe0S4GFfbwVAmLDZujFgksm8PbF6SfA-TTLUGV9cBmGCctUwxcTMsZvkPgdrSn1XAAvKyPnj1vhknM4Zi_AXrelhpoKWbwKryJ3InfeOcGcwYrcPOQOBp9XRJp_XHCzAvZCKpyADaWtJZh0dSE521WEP69Yjl7KfTK9R4KNT6TYRWa89Qx2VkElVvMv5A')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'8evcU93UUFjwlnV7ehs79b8lAPgJanWO8nPo5CxKfSI=', N'AccessOla1', N'ngAuthApp', CAST(N'2018-02-17 18:20:20.650' AS DateTime), CAST(N'2018-02-22 18:20:20.650' AS DateTime), N'Z7AqZ6B26CElQYl9-YxhrEMP9IvubreFDKRl3VtjH30hlFCyk-eTB2xk9HMs-49Ks54avZfpsM3tR1rNXKFZz3oCiZGVuSq9chmjMfgFf_FUiMp6_ung_Tb1YqPHbk5i24yeDGbPqu_tp-1YztCA1QgF_Lf7B6ZLy5FqYUzuugSbctab8KVNTm3fKjBuRymOc3aVRggkCyP5tkDNW2RW1mYtKBWoPSHAIHn3KwB01LGZL18i3yV6CnL4pp-q4aXw4hkia3F1fc9Cjb86qkVSjFbcQaE1mlv_9e4FhJmS369BZ_y1itrzjIbzX_UI4vONLDjNUUmXvOJjngmOMG_MzA6l2w4zd8L2wGKlG0WNN1hhhwSj_B9KnqEZOlmqIQdi3z93WWBbi5iT_rKaxbO6Sgx20lDcv4CO5G6qn22LJkYaTP4bpdKt6l40qPYrXEdCKBu2KebQgAN470vbTz24TZwEfNjNdmMr-EActMfw5HfyOF4ru_kXFrVrDoR-aXCeU3DNNcPHmUj68rNZs3JRtktEobY42LpU5tcOXHF7gJyQuWvSxYPSIB8tNx_SXXBf3UtndRukRHZho_B9CJZlgYHE463KtKhnRxLHC_8CmXspMKdBr5MHJGJ5XDet_KHa')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'bmTQT4+JX4y6LQHlQ12XXiG2soEjvmsZA6fr1NrcKPo=', N'ppp2', N'ngAuthApp', CAST(N'2018-01-07 06:51:04.540' AS DateTime), CAST(N'2018-01-12 06:51:04.540' AS DateTime), N'7MSspG-of9fwPNo9MsPKDVeu9tw96Qeq9Eu3KXF7ZhCL0W9vH18Na2n941vB5FAyHNblSCq99HOaEcp8kjSe7xo8qh7y6F2xt11M-XADg8PHEl_Z0X-c92LWYo_2dnLByZle97UgUG2W3NAYixxpoRFDd6kFgoK5UX1-PoGgRaZzDm-SaTzPGSFGios6HaAekfwFwFBAAGXsI58SpS1Qm4NnW6yAprP_NWAUrAIQZ5nPzc13q0S4MXd0dikCjlYqkp8KIHgN3Akz68L6Ie3mC4UCPLpR5onO82Hcl38EBis8w1QZhkWlE37HerDha5eo4m-bOepOKdzNVzONesyUgJ31tFpTnzXLXjwPpjp2kN9edCYgpALfrqQsJI_AXZJD-ba6rqJlkynjES5BJclDJXPOM7mZGHdypy58dD3F0WsYk14VXelGLhrR_Hb7MJfIbCoTcyTEhF2-_vXQf8Uoa79CbVRgIqlabhhV5l6HWhjh0i_ELSm8FClNcmEorRFwJzfaqf2V1BHdxgbBgGI7N5LQXPxc_SHRIwT3Ms2G4Ww')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'bN6M7m1t+PaWIi/iEs5IyDCaiQ0tx5sOQ3uClpjjXI4=', N'sidDriver', N'ngAuthApp', CAST(N'2017-11-07 11:02:06.377' AS DateTime), CAST(N'2017-11-12 11:02:06.377' AS DateTime), N'Y9QU73cop30pplg6WlywQMUAmHCXRcMPdAhZpOg9IzBNh2RQX2KxOoE4ltO5LQL7ER9H11SVGmGSrSZQxNetFrnpdQIiqtWmOhYbj9DIxlYdz0owwSztbirG0DJ9otjYkBuEZ_cHO3uCryAg63XDwP1hcqVvykNTRsAVM0_mui_wOqk0iU2OMEW4V0jDGl-Fjuovuiq8-8iTFFEz5nTVoF1InG8yScNVXrLizJJry5nhEejpFwIC2p1SeZ1eu81ZielRRojR9qQRX0pObfTNDVGWMRm3uod8R8_bGYeEvLryxRiDx7BkukpzW7O5d1RD0bI82Wkn6f6Lp8cKBddbEtZRQfljnt-YRsTt9SDZDU6uCCREvnvzutlFn8FltIu49B2MbHQ6BXUDSbp5bhbt271X5Obi1xqMFQ6rzxpQgiIAOmL194wBlPupd7s6U00vhHRcWWgkpDm88AYGsCp6u1zgoI4TozmhlkS5Ee8JvPKmbQyeGGfQDs233LCFi4Q0z3nqDyEMjMfjhxpGUTNEi8VSOiurctX8WblePTV4RWV2ZrpXa97nq6uUXWl9lKFDeki6UUkErAcVsQnSbjA2UTX2kSfRpojqwP5PnGWyK0g')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'cbXqDvKLKuvwdFfLldDZHM7gLd9ZDi11R8ZbY2RVn2A=', N'sidCardOps', N'ngAuthApp2', CAST(N'2018-02-16 08:29:09.173' AS DateTime), CAST(N'2018-02-21 08:29:09.173' AS DateTime), N'ZHFGTxxxlsXTMFv8_NLiujo5oygyiQKlrOBtSkXkVUE2I-n1CqY5wIxodUcEbwX4CyG7Y8tL3EoY4t9mxIlmBbKQonEGj5lDI6OMIp944tqi5yayAnej6g4tTOQ6l7zjBvA7OMvm2lWgXLP9l7BG3O3d8EuX9CILwZxciWPrNBV9-6BMphSOTdxwbtaRKlproyLjo4CmXomqI_8viO53DJqqArLy3lkwb6UMizfdsBmBAYnZM2AgJqNF9tgYRYj1UkoWnCm9IF2kQztzPsy0itecY_Ewfs_x-m4LjDDSQEDMf_Vu8twy4DFgUOg8h8LSnpLmkofCXkhkbN48Hi4baR7EfBYnktsSV8t_LIOaDoICascnRin4DXj5NCWIs74uHpNWEkUHpitVNCt3iyl62-Of6sWqH-eSq4luO2juxBT_D_tRfrzsbi1tMd2pOaCh7AQZSzquIjde4zSoZLY_JXK1l9MaMvzRfUeVl_-IBvHfgPsEk405bVeyix-9Yv6ssU-lxRZPpRLvoFhEeOfdSin4yr2eX_-p9yppp7gZK7n81V78REeosR2OOfiPigZ7RaeEjavvYqMDkye7PyILC6FMOCeQEmHTHgVawyO26MI')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'dy23x3gCaEW8A1op5NOcRrSeZ/buMGw2nJbk8ByZoG0=', N'sidolami', N'ngAuthApp2', CAST(N'2018-02-15 08:19:28.810' AS DateTime), CAST(N'2018-02-20 08:19:28.810' AS DateTime), N'3JReED_3yOCp5erlA1aNE9KwSNQm1A-sGShunUheamsOUnTcazhAyZrK5mCetZk4f42SiNGAWmYNDjZH-ioJomXf4w2HLljldJULtZDCdV9Yym5tC9BxzCSKs4OXix_uG0qIsd-vqg0XhLKWltiRHVSHEuVAIJOeqyTP76XJxfH3Sy8_DFL8QaQmL7GG0BIUimhzbjK4PRJC70_n_bpnythjC4m7hTE4PY0-_otG8W_fPF7PCuQOaNwHLzlh0Io4IavqDVr0Cbi8QWVyc-W7pUDPHg4zgPNnjk8DCLK79tqENXt0Snsyxbxwr5WhCGUvr7qnhxf3U9rM2Qn3zAsnv1AU6M-dL-EK9DddMv2kTkGofsX0fmIduiO87dFYGIMjYWcHHwYw9A2zHvU4NkiSs0y-TdqBzAVXy-htdnNsarZ7o5LZj__LyED0K0BGEqYpzc8_9RMxMcxiP4o7hAdtQe1DyAbCY7bF4zygjv-XlGpibXpCxIVIGn8pG2MxsRyHGkXyRRGRP5GqK_SeLViTak0_dmf78qtS5KaOAAqSBlck5UCcYKn3uB3PIyEHUCbgaobeXlGVykW9zr9pzWqZFuj583Ynlbyf9E9dT8-RpGk03cF__twguzulSafk3vGnwOp50-XTY9iPkmNDet8RC_o92LUw15yO3_2Lm68Lmk3oVjNkcVmP-lrKbzJiVWEC')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'EcF8LrWGP6vT8/iThlfReEcphRe4AmM/hLnA7BC3ARU=', N'sidMA', N'ngAuthApp', CAST(N'2018-01-25 08:28:13.307' AS DateTime), CAST(N'2018-01-30 08:28:13.307' AS DateTime), N'efgJ7XTkCystE3nGKViisTjHxO15nPVZ1KtA-V2DtEnYKsNYjGbF0zdAG8DbDv9XW9rqwAj7WPVzlf5KbpQW8zSofvjw4vaOcrRLvhP2hnp3N-fmjff8I6E0oGSlAxQN0bUqv0H67Y0M4clQubcm947KeaivWGlW9LvSGLfkGZ5Y6tb9k1OKgCfrUECCLemmPg9RlK-KDlJzL1cb_KrVhlhA5lnvGziO5YYOXI_UDtURlhfEZVDQemmEW1UaqsD3-iReFkbONLC-ZSMZUZrauNWurmVM9kRGLyW4lPMUUUbvSS396OcoB3YtYUDdO2bGa45rKbRszPkzLXhZPjS8Xqi9EDOdxYdniv8BCJw0h2tRCHUKK1KTXFM7TnNfF5XaQCC6NHJqE_2CM7bRakwxKRko13JNF2HfytSZa55O94fZuqNIONdf89MJ-4MUFA0G_cV8xgBwIs3Haf-hAz1JkQQyHEbs22v5j78Qj9y0SaqoJm7Eve4TCNSpGu5oWjhuuvehinL0kN2EKNrN8T_6TDjOf0IeHXYHOW9TB70se02FgAYerg-MCV2LoIXkf303yWDqcmZnkNYtaDM4HsP_RjKRh54CduW7SCt9oEqve0Q')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'EL3/IhH8IB68QGjlN14mPe5N1/j/A65yog2zLutk0HY=', N'sidCS', N'ngAuthApp', CAST(N'2018-02-11 20:43:28.160' AS DateTime), CAST(N'2018-02-16 20:43:28.160' AS DateTime), N'jVX9cpLf_FRx3qvHmVM9o9t_JivNHbBxKuSYYqDWjiIby_By4pRnN1wdttRZvd7FhZr3Q4QkJzD7zaEpaJInjH1fcdxD-FmZt1uaP6fxllFZ7zQXNC-mNQhUncWHtZ2IMQk37ms050BKB9p3Opgokxg9hZ_sZntf35mDPKq1x0ZMwpP-U1QaSWdWMPysHxea2kTqR9WXz-EuNDibCL0BOqp1HaelbT4Fd2196PgfalycwI_3-rvY8pq9aZTPm9wxf4IKKoIvZ0zqtuqJKFqwRGt9lZprWUIjPgV2EBWCOGA65EmCMTDn9Zs8GR7gxj-W3np0U4dQlKvk2XMJMH1rS6gD9Znw6RNeKc_BVktUYWL5Wkq7Cf3i8ZOiqNQG2HiG4nqz0nG9lSshE5FKqz6Xo1C92z9pyzp3J7vAo58bFjsAnY-v-S59vAkkDmdaIUoInk2pyw6h-6sX_xVZqPdRgcnT9wel5AVI_k9zk8wXFS-_-QPnTb7MlMq3CIy08k1VRSCd6n4JGQ5Jq4KSeyHb_YdBM1nSUNbAs9LP43aPmQIFxFVQMAjlWAu8FhJn19nZ')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'F9cc+q93LVF0Et359LKHYOgP8JiJrxT6hgpeAwNZ1vY=', N'GTBank01', N'ngAuthApp2', CAST(N'2018-02-27 13:34:56.830' AS DateTime), CAST(N'2018-03-04 13:34:56.830' AS DateTime), N'tA2b3EKlgH8CvXMx2YXO6e7rzx0AQGjwaNWiwi8ca6Fgvr6NB5ti8y6imkbE1wDw1oOqWPL-9-L5_oRqhEk9UPhWXnKb4k6RCNm-GJZsYpo1cm5N3avENLaSz3sNm7-R9fpoWtJCXljHUQBlwPlCqpbbgrCyhKaVLCaRzSj6GyjaXoIhDhNA3gdBdO2XJffToyKsb8fq4S_tW12LyiDJ5r0fS-MjsOqPt8Hnkdu1w_tpG3A6Qln03oF-750lX6rRRuWxTgwkHDFZJKU-Q-M_2U_qIYVTkvyNf0KMYf1JfekFC41fVvE1VQijl575DnuzgYskbZlravTL3uWA5vuuvvyIbEO90n5WxhMI8RqIY_6jN2965_vNjkSlogo-Qhqb1imT-R1pkQy81CQiM5gvb6qWIb6q6Vw6teoT053IdYY5rcRplRW2frA4f5ox_MHPHmxEpgT5NzHhQ5BSMyeeAhICElASraaSLIrh22g4hiracdrLKYHrSzz5HaJCswhSTSPI3yvDy07EeAZsSObe61Nf_lxtidaaYdiBYYGzMxin1OLva4av8rTtB-VvsEIbx6gjFxpLeOblGtSWUrGv7tZV-IcYcU_9gpspUNwPBvwGFxyONHuFSjjYRAdBzjeE')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'fft9p+hjGe2gMRNnBdcEVvPTVaEzrgsAzbTsYdpHFNk=', N'sidMgt', N'ngAuthApp', CAST(N'2018-02-11 20:44:04.363' AS DateTime), CAST(N'2018-02-16 20:44:04.363' AS DateTime), N'Cf1nUsmUcG82rShYH2eB2y1s0be9Basoja6NlWxV3bK5s_qwbuox-uuZvSGqIVcavs_p1GBlFcZdFx9PUF0djWKGR-dTkmjboMiXhWbI7voz-k4ZZOY_WCMo9E0mxbtnxBXdAxut_1gibaZFpa7yOF-d3efYmeZhviPbahsyurzUKEb5rrl2YgGawos5nnUgTdR09Zg8FUi697FMcwwTBnDfjhFt-kC5Y9D1r1Lsut_8VuoRG3c2zWvNTSKffIKHilfLkGr4dky9hDM6MqASLkZUohh7IdCRsBZyM1xKeD2s9l14kAseslrQGAMH3gX9UqxycLozN644uom0WnM5K6FCCPvZPD43HZVuN6FoMNjNcMV_Atps0MxMBn-gFHMYhiq3tzQnxHvJqIGY9dAqwSw0QcV3qs5M0s7tZGeVcXJ9ff7WlY1-ggaqg4qIZS44HLCoiQpQ1s7MxGN_x52PfMOXZs7XGaNlm367gCRyzbpTwSyFAcTl0WnOyuXgDujvTTTSJ2teE8oDuuFi7375p0_pVrEUsHSisC-9K7guhR9N0Lg3Wr-duMvsjHjbNkAqTtCfz_mN1DJ2A1hx5MRJk7zIo3cgb0qnO-uYy9Qfjnk')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'h0Oib/Z848Pk4U+4cANpGFLUEjJ1ePjYw4fqBynaluc=', N'olanrewajuGTB01', N'ngAuthApp', CAST(N'2018-02-28 09:59:21.277' AS DateTime), CAST(N'2018-03-05 09:59:21.277' AS DateTime), N'_z7ErFosVGnb8Kb7EFT-ZeFB0bkMIUWdhkQ0AU9w0DqmOQyvoPNpwspu3_ksJaZCv0VZpqqKkMw0nJSLbmmQwGuh_HEwtDN1edsfR3PSDJ4WXcIoUppBZP4jjRDkeRDWbpr3IZklPPz_E0_trBd_SJ5Zb5Dns5w72V0oKyHIy4vX47N6aEkPZbnrcS6eAEOvq41p_4hGjADIdIf03Tiy4Hqdorf7LNz2xOeoxHv1n2JqZe1djMS_gLElGaRCBc1xkhF93RlxaLMdfrqiwf5X2pXXSVOjO-xNwR3MPBAh7SyyU0Nv0ct9pApvMq9Frlut9oH4L8S7JG--9LuN7J6xZ87G848d-7-kEFAVlZkMYrlDztLoEEwonOosKJAvBdJcILwruJkCwctGNeb4s4T0qqdLALrk4pizLV4klWOZXj-acVeszSPn1eA8THwCrsz4y1lH6mvwQFXW8xeSlr_H0s5JcfmDVuFmoM-m5CzS0UuH8fh4MWleAGPzprQcroLlPCym0XJQDRT28ydjWwCF4Calnu8wWHk0HU85cfrfnSclBiz5n9-Bm3sRGlJ37mGFDX2vuF6JjmRXoc0GgEVpZGkND3FOqhP8Bzf78keC0M6eBG0FDFlfxYdI-rJzDAYl')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'h7KWLMB+65ggBDvMJcsyhpo3pPVzhpRiRY40xC5GNNI=', N'sidMAud', N'ngAuthApp', CAST(N'2018-01-14 18:37:13.123' AS DateTime), CAST(N'2018-01-19 18:37:13.123' AS DateTime), N'zqaixk4A5nwJmyaDi5j3TcRA44_J9sc0cVmgPvgruBy7vEjDpvbi9HvYZdjIUlEy4HIDhd8hp5aPJJ5uZ4gbbjJCFYO7PT8ca4u4EnYoKJO-isrTd67BFiJfK9ON806bKim87QU7koewZI6kOllVwnLzHgrA-Bjz9T7_kAzUDX2WVjprmSHhh168lHRbxIMlv1FQLoY9nK0K72z1fWErf70d8llw3HJIE02VG_A04iVSrQ2b9Cv-IX0oqX3HfuA4E3CtFvPCE-7vPKsscW_R9HRD8eFPxWPG1uK-2cBLeLJnLPznoKKN4WHQ6zHNK-TVqmPSOrG03jfjjkyJ6Uu8A7siY6F7cMMu_JoJccSfiszg2u88Jkv58ap1urakIzCDS0KPzV4W27kK7RzOHaO42KM2JLrwrMUMwhQt1nKBJHJv-R5_Bpy731iR2pRCZmo0yXJr7aB0pMR8MD68iYhoMmMilcQGy0rDvANT7LbZ2JL7xw_dVEOaWpsTJGZYiYaXMiS6j-rGQnxu3J8o0K_j-HQB9aXHbGg2kkNNzEoP5TC_l1Xq8Ysyf6nLtNJIqo4HxFGhWfjOCqmPeZ-UMi17uZou56A7XjgJ0qj59Lhn6vw')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'KBgq/pOltiPFoqNGRhTWpyfaaeAmRN+hs3gJmSJDMnY=', N'olanrewajuGTB01', N'ngAuthApp2', CAST(N'2018-02-27 13:32:13.217' AS DateTime), CAST(N'2018-03-04 13:32:13.217' AS DateTime), N'z3DARIx7lNDGOU9G67Rz3sfcZCfYIUiMHsrFupaEJNwun8M84E_pR1qLVyRBrOeWF4g_eGo-cOO1wnvbz8IMqGV7ddKx_eLnR6PTm_luhapWlEOWyrmokucy0ZHZsiiuBlxMPd0CWbtAHZ6t1nOC5SeM3RNbcT_-gmrY6OEIeEshzGlJXoTMicoy73bP9Z8Q14jPJXU8C0KlW4sBl2IzC3Y8J_XsaEMhlLn3T9nssGrpQuEW19q0NNvdnY0QGyTCpjRvy1dgnaXQonBWhrepZFyh6e0WSs5_9jWdc0Ew17VDh-u5lcttx63FRwM0ZcVxPOOCXv4uF5ZM-vKmwe3ZQSWWQQP8zJEi9JO9Umh4zeiR734KHl-KWPteCu_0pINVIjDr5EKv46ryw3PKjpN6kHsug__-2x5eDQLKhs_hZRmQPLEKl8MQa04wUNP5-jfEthb5QEXyAH0dJVb8A6ou993klN2MNe7Hsv8eioPaCoe3gFuAJgf4Je4DHjroBR_KvcIiWMfcBXFv4LIJTGA5ykm5AShhSsIMwjsz-hdJkgU02KoQQ6Kw8YCh1u1YhzFx9PyKXSV227wgDh-_cRAflu_GDOl3HhA5eHm4Z39TMfU-xTCqo0gAmYAWGlpUzKhd')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'lONupii5AzOgt80lZMnCoo33Lhae1z5EOS1wpPBcYL4=', N'atplerry', N'ngAuthApp', CAST(N'2018-04-10 08:58:05.527' AS DateTime), CAST(N'2018-04-15 08:58:05.527' AS DateTime), N'C6vIgLM5nTj-RDqu_d5fUayqoAm7QW2_iOQptrWH1KuWfHQemjVtCFrfKuPGbwIBwZO4vrHT1tEcH-670mzKYzb57i9pn3f5iLGnbCr07_jLeqWBcclcOz_sV95ETPJopqsOYpDOp8icvIeLsi__WK3H7mwBQ0z-fAnwX8WXHGwqa_c9_vXJJt4Kzxol6031adww6DxXATuf9ndmib_B7VqKtvr6UWvaD2VnaigcOrTLg2Gde3ni5_jT1vkrG45gkgEJWXsw5BxnAD_-zrMZzJl9mEYRVCAU4vPgQh0qpC4qMBNn9YrC_APzTPLNwpyHkjKeqEcSqMcPsmzcn9aFpsEThN2dxxUrW_yxO0J5EXs0rAjnmN3qYJ5POyzxtiTWfV7SaPWR10Pu0SAyR8rWBvIRlfm-efPmqKp4t0GiXIYOJ5IUNGltGifGLPe-i-xxnFqk2Iyscw6HAH54U0fRFGIULe65OMR6glMFm3vkY-tkh5vfMcnCO7XdU-Hk_fAAkLoCsoEGZahlhDgYgy6y6DxmM1cTwbFjTdsdCwfTRgQdnA2K7KWRyw4WVM44N9Jf5pgZ0bZrDP3pO1DTjnr5pMaNYZmTo4GAhtfRxTJSTZNk7kW1ZO6Hf2mAEB1wr9kt_DqreofWYwEguwHAfF5naAcGAu7UMNHw9NCyzO2fy9M')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'mxdM46DdewfC4UdUsa2r7YzgB1snd+IUlRfk863F7y8=', N'atplerry', N'ngAuthApp2', CAST(N'2018-02-16 10:02:21.590' AS DateTime), CAST(N'2018-02-21 10:02:21.590' AS DateTime), N'pw0piVvzp_YaoHS3QC8DGMRuCzvzw9WpOo4Nzi3-9XwVBFuPaTqM8rlQNuGz1fAZHv53bY8R7SyHUQXoR4XGs0DW-RQL3SObuzgP8hHshBYN7RlRt6sxGyvH93PL7_wH4KLrdnQ5rTziedVI64J9m5Uy00nk-ZnslHIo6W5Obik7TGMfW1o5FybhQVDPIV4VtV4JbV5BEpjN0Fcn2ELV5_fyyVeaExGl9HQMlb__uUm_32vCN0xyWhrob66YaYDgwDNCJ-eo6J-LlrILQ_SKzrpuu15OFMo0U1mn30TDxLbmzn3nnJeiPTI1xXeXTiFnOcu6BN3s8jGEbHQ935IT7HAUA4H9f8M0fErmVOAPAkbPKIdntOG_ImRly3fHnJG32BdP6YhlTlPxBAdA69uSB7j3xBrtv-FTkdOBXulMEiWHvjYKDvj243YXlMkqLpFknJD7BukqBeTGCciy3Zszrlk_FjezsTHGXpHcWPxre74R5L6TfM4UCb87j1y4bkty3-okDbLYFGbyg0OnLncN3sYluYtkr_RYMzbd8sCpQ0tiAdjA7TLQ9Eq8kMgecZQGoJhWq1_pXNneBw21jxaLgB9aB7enO8u19CBUtik_mEXtni_4ET57FJfJSmXePOg73NM_XfOWkJBq_v3kiwOjFg')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'NE+PEUH5EjN5YQ8WZWKrd9gIynbYib58FzqsZrxnn6Y=', N'sidSupv', N'ngAuthApp', CAST(N'2018-02-02 08:21:47.187' AS DateTime), CAST(N'2018-02-07 08:21:47.187' AS DateTime), N'HXsDN3Ri2Pw-KL0bRd9lbkn8CeExY6PpSw8Qktwq9HrkbsS3d-KR3C80U5cua6OMnnq8ubvtZ-FZHdMI9pZYRVV1S8TlLBDhAF7OQ7YrLwdYqsTwIlyXVZdnj0cBM7kIkK_cLl5x0k6iQXpU7r0Nw2jorFv852zCx8-5YykClTZLzPi9QqNGfyxGHI9mq0Ym58S3hCIcpzR18RjTjL1KmWQec7ePbZblYuHVfJrjHVjW1IHZ4u9bKGBK0-uLMJmG4o2z9I6sboKafZS9ufa3bGb5_JCWJipDBBWkDOkIj10S1vjb1tisiNegahSw7NCgeA8sDNKKP780B0xCTFcdeHZkB-jFfZC_PMKOaDxtOu7MaEgJB-B22cXMWMazEn65BCscpY9iMlXLnUqJO45wQ3uocjqyMqCvmuncqoaMcVKJ34CIHB95mojPdUelMbEgRAOvOnavKTnMO60AReeUK2p5lufsRfiZdBY9jp4OseDhCZgnei7-mlQR_pVAnuriwTJB0NE0a7SPTE1tLqXPPGhARRL76fxJ_xLVyW3sO_yBxuxeLrMM1WCmE8E5YIRhSyTZ14-Ri-kgOXmZ-01uVgb4_VFHdJI3tz6bxVCasXCkQNfUrOGJ8xDM44COz2oVSAMyYHT-68r8IPTOhfF-tg')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'Ol9dq1CwGhnK3DGz275kEwTXVRu029oX5Bewokgr+f0=', N'sidQC', N'ngAuthApp', CAST(N'2018-01-14 16:34:14.083' AS DateTime), CAST(N'2018-01-19 16:34:14.083' AS DateTime), N'DyY-kRAFCk-qGpZdfBC4BrxP00JWRCXWl_hsEBzoKhLSyGItf1qXhloc6mJiX3Ux0Vp5xvgk2zIdW0jEZl6TCpOCQBfiKYxjCI17nyVv-Z0L0jhCYHIst9eYn0pxTBtvvv6f0h5iKlVKnlJ9OEpFA3vYgegcsPEsz2aUDjP83LSeC7UZMf78BwmapG94FcxBkkE-Iv3R6t8A1Bmv87Y5jSR1Rk65zXCVT6ShGzassZ4bB-OFGcN1RURvEYRyPsSldvdNNM-0LO0FIplX45XUa2p_UGFbFtrPTDbsmTCMeVza3IzB2KIw9cOKvT4Joa5i4mcSA0BUGEOrAHgbkeqENqo8p-_XXSJAK2S04gXBWKXa1rfylV_g-avEj3qRgVNSPW7CJCU09rQlCUGb8KWEB98RuvF9znu7Pjoq37Id5vOpwdPDAcwFvuGtWRMc-jmNhi3qgJUKiTN_kZHqkm7H3Qf2tefvQ7pcgIiM6RufDV1fWYPDQZieVuC9CIwQ9KZHRzgeFszAp8rwxEhxuSzEudHeI9mLKeKveD5vT5tnnrppch1JPH4qfxngnbzRK4whQByvwaznv0uKU1CRVbMWDg')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'OwgcuEZ40HupWDIHO4xHxCNqnxAuI/ff2rkmZE/85XI=', N'lakinsanya', N'ngAuthApp', CAST(N'2018-03-25 08:01:15.177' AS DateTime), CAST(N'2018-03-30 08:01:15.177' AS DateTime), N'cv4Tnkf0XMSvZMvie_d3XPPCvJfJ-qfcyk8rFubXOp3EqaiThZfENNyj0BRTWzQSKvOHTj_Jb726Rr9gFdDglIrVrU__a3CgT502_zd3ZKYc4gidPXn4zs6FczW1XdzLyEp5yWrbjET6--oc7awf3tQFZNoLSqGWF5UAuXcfv78IUp8bue5RvY_5JkjjMuBA_KO9kQRX1k6-pglPnILkNchakmT7Qp5f2gM8acMGB7244Hk0VGMZoUgrxcBlswra9P6MxXHuMKwz7l4UP6lWLqFyXAm7AtgxKl_AeIt6wL8-Tnp83sAdNB6hAZJu0tuNrbLGbjGbAtfMJEVx_nCdPVQO6gcraaFvLCjq9YwIHkptL7gK3VmaevTjM3nxcD0e6SZZMs-ZHJRBj0-6SQ7GkyztU6gg0cIBe41uMprptk8wT6Tb3-86Zsrj-yUOf3fhY27iV1_Tv5PPHHn4ug8JaZ7aLyFBstXPqgI_njZ0lkLlEBTp8cqdSDwX65Iec0GnOViV1MBvv__nAU3c_qTP7Y5gDvXQFcMCCoGO_aQk5hNFDo0ZMk8TPiMPY-QqhqZHym8t9vCQAW3_xUDzILFasSxJS3iq1vWgSWhNTtBnAQQIIXSwCTMTfL_BwAvtVwlT3E-27rFtipMsPRTvV-4ZdkjGtloXbNaW6XRFiuQPfsx80yJizQPAsuRMof27GhijmFoAVQhdu54AzTKC5kr6nvPAr14VAjYQtuO0WleRBGU')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'RGeA6uWrozr/Edl6Ea7LLQJ4z6OBs1HNqrUNPEvbw+8=', N'sidRM', N'ngAuthApp', CAST(N'2018-02-27 13:28:58.887' AS DateTime), CAST(N'2018-03-04 13:28:58.887' AS DateTime), N'PUg2d_-osOKcsPZjOl_gYEm_CAOjkDEoRfsnpFEMF_ei9Egu8eSpOOvtbXxP183MIi5ga8xmoFh-ylpU9YG9QT6p-4H0XjqovqgNF5XE9rGAxF1kfSpiu9cIrpbXaEXwQgOEEWtI_ZpeGsI3JmaBPzS0CDbQas7LPLjD6_z60oJ9isp4dJ5aIp-gqjSszyZS8lppjRIjF49u10SZFu-gsKC70PZoe2ona45-C0s3P7_xz7EMVKmnIcAZLBVgJo15guaDyPfEeJx2Ru00LYHOLe48SIRRbQBlj9l7ldCr1iwiSmjuM-atz75vC8LIgNDiYfRKg2LZIjWUTQL4Cb-pbDdbEmFMf9IfMSjQNSBjFFpLJwfJ-XoM7aZhCWMsljccvwe3T3DQbFt13K9vlUEDNRbNfbW5YO6LnIZaWd2765Yiw4Q86kjK6YY68D657oM7bklT3XlDhz5KvMdq4yHWBq2XTjrzP0O2TypkehhssX8gKaMDYWR8RQ_Vmwr_FYMKchem2Opd9AiHIbZdjftr2I9NSftL6DiNx_HxaQTN02CvXXSKsPca0Wg6fy7vbLcg439wSXubuiPBh5hKPRQgi7C533RakYeH1zYuTXYa6mk')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'rmtAT7ui9XMq6QKkuVl1uI0D61ieJCspsq0JimbReMI=', N'ppp3', N'ngAuthApp', CAST(N'2018-01-07 06:53:05.910' AS DateTime), CAST(N'2018-01-12 06:53:05.910' AS DateTime), N'BruF2tDM9tW_Sqy7b61ge7PmxVRsoHBhwcSu_BK_K0aoBvhpWNb2dyRfsYYqD7WABJ-ec4_JPb5I4IDolKqaMAS3fpVqN2n91a4Jweh0du-zfJHb-qjC0F66_dMx9S1_UF71JxKQDn2_LomC99pesQB6XbEHCFW0NucrP6h9vyVg59fshohN8WcFkHECG64Nst_Yzw0u5Fb0zZ9UzRoDEygEFL-jGfLIkp5knDSSVmDIMA8jpetJayWUQLUZywvqYsMis98VtmlYXcdoh_zQJe3mTdK-EHzlOh_ir53DSOWfZBrUkT7p03II0FHH3CeUEcep9DvLyv13iYYj6B1NwXHILHBnScfZbPxCXGxlgvsuZnNBkTLnN6JiQ2FQMOKDgEkulwlby0EUTDLEjc2bAzPMY3AskcQfHDlMa_WobHCuQUVg_5alqMLvGxNHtj3pq5KaYCbhUzE9sI1Iph7LL3ILIsWSgfFmOuJ674DEnwVqCI7_nvH5BSafAfgmB2YsdLffRseCqAcod5L5xRq0WeapIHq-pra6uTXuoFbaEnI')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N's5AiY/e5ngpRaGWOSZrK3n14sGGjbDlGSK0G52phvcw=', N'AccessOla1', N'ngAuthApp2', CAST(N'2018-02-27 13:32:23.447' AS DateTime), CAST(N'2018-03-04 13:32:23.447' AS DateTime), N'C6CPLgTDnLdh6UuDkjIIS1lzq3NIOgSiFAqUyqD1KnmyGwYGIswA0HnVpDeHrRKn5CI10bLVGfqDexJ77hVC-zXArm5b9AAQs_wBCbVIK9lV3P03WwKvmiVxZkWWrMRzweogttIv0wgTafaNEQ6cn_U1bealavjYNp4tJV6ML7nvR-m1v5aC2wSR8nQox9Yc65kzRXAsTn2TtnuKawrzDRVSAEEa32nZ7fVUwDcTQ-xvJLr8MI91b9yao4XuN2Ry6RaFjZeKilLF3dYhNKhgyUG9nfOttdU_xx5rwsPpiHmyzOG-tU687_u-yDCI6632_7Az5wX9t9pwpO80ajkvVCY0A-vtgfsG2XUDvS9h-E3ZZK8zrMtpyrcKAsP-xEvg-6TzslstfJr8ljIEdIdWcUtLwmlvas4mTVUItAzEmrfVOu-xJi5Zsztw4qlw4bJ1YUJiG-9z_8i1oSsRUpzu4m6sufb4phHGLxHo9clAoLYzmT42NoG67qP2o3lfxjwv84Ljil4yfjUM-Ck4_CMWXOff8lqoDaFqPKXdc-zFfBrISK_b-XPEMYW0XYqV7CEmIKyzX-Ynoq5lEd6--Ox7hCOfdQQtc9Y2SX9L-s4lTj7yI7Frtk2GWA_OvFR6sIxf')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'TEWRFkZ5NsgeWMBWZFrcA4KygnpbxnESRvaMLtumDf0=', N'sidQA', N'ngAuthApp', CAST(N'2018-01-22 09:22:15.757' AS DateTime), CAST(N'2018-01-27 09:22:15.757' AS DateTime), N'SeCxAz9XTx3x70JbTqVxKsV9ev1zsiqjd-cg8im6XBhyZtny_J2NdVm5rxc-hTctiE9EbrkaKDJlt_uqSqpaHbtzr8A3Ewu7utXVimanS6KWVymdFphRZ6kjWD-gAPEUtfpNw4qQDLsbPCJzuiEDhH2IEcnqKBJgniQyMJQEvYn5czV8VnpB2fKzoSjZI3sxl2DF46uwrSGP9fBMD2dhyNkrFhByRZa_620jW7cCGlK7mhJMq1lcMCqH_tL7ICsfYKx3xtilmGHMBAp8sBgvlQ_OvGgESYtmNGp5UfRepsO5c4rZFkxVmMUGENJQndUKGsQPtFQGpSs-s5LlLUNJjV0e6i1PVIKg1dHekCyTJYrNxxjR5jtbkQdFME85wxPmmSo8OYcKvZyMt7DwOadRg7UJVyMkLOwjrhtvekJM7IBcElsXSyRPvTbQ1svvJFvpH2479vhojggFhRCdFq0M7mITMW-dAhZ1AgVvTNGELjetr8ii0hDrKkHkGTWkA7Zx4MhTQhZiwW-Lt8ChifKkglgxX_ZoNq_F9URIBObQesml1VHOWdpP2aMvyjlPpRD2oJnwNUumBwFC_GrmJsw9xw')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'uTxv3OqHR98fxcgeR3Fqe5KZCkd+H+sKNXR9NMpEzmU=', N'sidolami', N'ngAuthApp', CAST(N'2018-03-06 21:42:14.287' AS DateTime), CAST(N'2018-03-11 21:42:14.287' AS DateTime), N'hlvQ52j4V3atGlxbZXwYrN4yamFByK1u2dxo0dFJJvi9x2dCKLKbyz3HeOGucV-i_bKvm1hGcMhwF8UPqkuWs6oGyExfZGOKXlYqu09KJGWMVcDkOGeIPIra-rPxPtad0UghuDCUt2i8WlR7FAwuaxhjhnD54_LmCMvYMQF0RSUYlILsNtUdTIyjveF36qDeGEGQsd90-ds_bUQ98eHFfCxrskjMugwq8wohZUvmvvp8G2UG0zpe4J9WbhJP27VgsMHrpS6JsnwEPC6VIXAyF9ZM5g-lrDjQZ0jOzKFjyi-RbRVh6JOvF7GZvamBcCKYVu2b-Ow49pxR_Gt0JIBUC7whyKnOxWHIY58M_oPSXjw5eoqB9Z0L-T4Few0VcJ9_seU-bnw0-WDVCbqCEeKGL130IxfTMFC-vuush1WgRhgZqLj6TDADlAqMAC4Ylt5dOwymIq_0K8xn03AqLby8evhYU0QJwRMDZmdvUYOxHv_I2vTz-grhBRIJEQrvh3oesxaMvTC-YOUDX-0cTUCPxYQfFr7BdrenKn49RabnDEOLQuPR_3HPqb-3qKq-0jBM1LwGxgeQp8jzqvG4JKuGVUF6YmHp7LfPhTYu5omnHrZQSPZg_-2DnhZMQ28OTbAXF7GQqB9_l8JKNq5Czbocx2OvCAUMTA0z_v5QLDscigbN84wgZobx869OL0D4ARwZhBLIZ9FT17i2kaCTbx4iMw')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'UvUgx6jZgiLYdWJ9upIaF+bnOSEmcoXAfvECQU+xJzA=', N'sidInv', N'ngAuthApp', CAST(N'2018-01-14 15:37:02.693' AS DateTime), CAST(N'2018-01-19 15:37:02.693' AS DateTime), N'du98Ct_PO2f_Dc8SOuPBtMUqFzMlKA0GNiu34wwG3jtcv26EIzbtTf8ymAWajlnqecq_4g195TuN9TjfZ0kvjIOypqBWzl4wnjYznIVUhmH_S_97ov4mz6nb-z6Zz_NX0AT5ILSQ85GZrvdoCAx0DSZ9wo_GK343C-MEtP-fimjGkQ1LjoL9BH77GYFAFNxDGPgqNHhu_I3XkDKuw6U81mphHtTDBzcXURmv3vLKL17fHlc1gRR3-5sDmKAcxsM6Bcy4SlzrdAMix5qxepDGywGeZloI0tvd6lhZTQwOoCbNc29eqLYKhTnfDVE_y11aeiMhjG3GfRh0ixZV01MErrFy9pNWHTYWRlzjBThqw3ejyOlypjXnP7A9BRydRjMaKLJLJNd_UiucQ0xhskOgc0ctkg94cUhjiwVvPwLiO2CWYaqdJLYCdGBV9Q2JDN7UblGFrpRD4Rqh21OS3ROF15NguyuwSeFFcR-c-sJJoglOVCGZF5G7M9y3nGzSvwtvt9A4xhOEpO3S5vr9fp8xj7SbjXACwMkbGGYNe7Gwcs20YY8PpHJ6zpSIQQIP5JqHIxCVe3-9uhB1ntej03Z_BckpW7HziYjZxwubcwWQJo8')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'vPOWzsnheZ5jGLC1DjB7zXHwIKpoMyAwfc7K2xB7xWY=', N'olamilekan', N'ngAuthApp2', CAST(N'2018-02-23 14:30:25.317' AS DateTime), CAST(N'2018-02-28 14:30:25.317' AS DateTime), N'Ch7AI_u3mV1ThQCW0KuVrXYJ5OoOy161P7WFRm-1AEyZeeTgbBowXaLLpqM4nyWQb-cl3034omNQBiBr8mAAdcpz1Tzt4IBlh1s5i1SkOLV-59xzzVmoBP_t0ARoJ_eqx9IfozWvIl4IYiZMpybN5xvqF-iEjAE1ANipNmPEGt3DVYd0OoyxvNEK7IP3SbAQ8PQFEQFLCIOTzpN7s-TsQzkIJxSoE4uw-kY1_lEKDuSU0uVNBUkwxyryQ2CiAebJd7ShtjNHlVjixYUsVuOYCN4vSpzI7bU8lu8pyzr-7Z1ARVd50G649Efvs6SA6WK6MueXqzrna5AxWkGMf-3eL1XPdCIsHaAadXzDPFtq6H5duIwwDck245OrvBkWQPTagnxZwSz6gSzZnqx3Oi7LMYOWiyQ33GbTiYIS-m1QyOv78gSDI9gXM4rrOogMrOjiVPpK3Q2Aq4DIJTX5pEIisjoL8ri8_gTxi5jTHjG5V3EqtMhD88s1Oz5z0QQ4Lnsa55DSBMnN2KAXGhf6YrMhWU0v1C-3yfsszMT0MlIA38bIMzsb1zHAtDiE1T9qLq036NblLhaRBbbgGsT2KoRW4NlrcpshYyTe7eJvo8iVfyjbM7LvpHNULbLFcqfOJRQc')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'WGL1cAjXi1AFsxH2BRxka6pn0X5/rUM/IvRo8AYqpf8=', N'sidCardEngr', N'ngAuthApp', CAST(N'2018-01-23 08:07:47.170' AS DateTime), CAST(N'2018-01-28 08:07:47.170' AS DateTime), N'tG-5YRQ3IGbcrU8jFhFUocbMxRSaC1xPnCXlPTle5k0cq3dkq2GvrvKpAccQO252KVg6aQMKgr1WeZ9Zf4y39fvvSOsC3zaFX_r4qPot7UMDs8VlzdASDrv8i7KXSSkckETB3tXoaumJ9szYnZQCcKXEP6vxCzDxeGTeqOvh-SYR8XBznQZgLQx7YgvjM8f6uVRMzImFD7XEENxhCWC7a9OwYlLgwl2mbsxC5Q1j5-IlyggFhxmfa8rpoUeExH3B4Y9LfrWryMNDttCJ4DtXIvYhmHQ9_VJF5uOaGIFDCvAVMOgJ2qoDav8iYk_syyh5oIQHW3OnrCk4P8wvANqxQIkKOxxMlWva6aMNItKzpwxcZX8eorB7_iVKUF6z-FNYgIIGsniML9PXBxcSJJau4KqXuiCJWCezFfVWx7y3JUU2ShuX4Syiva3LRyvLGRNmlJXhvIFiZde5OtyhF0HbJUGnPfPICaDcOOAGLqxd-vuZOLRpTaZnJPfUPVjwJxwG-BIFFrOyjMAHw92qSqKQFX_KYQMVLcQn0oJu2J1gvy1Py_QfhvR_JDNNecXMvkljTH15hZMW1_j8W_xrJRq8A4-XlRVW4wHaCUzaOh1mlxw')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'wMHDhBv5mfMgGlFkmktl+4CA3tDcKsir+Y/iPzoGM7o=', N'sidPrinting', N'ngAuthApp', CAST(N'2018-01-12 07:50:12.873' AS DateTime), CAST(N'2018-01-17 07:50:12.873' AS DateTime), N'Nx_xKLli0ZoM0Qv7WyCrxI1sGDrC81--7VHsHcySF7uFnxJF3HVejRl1wuRBo_EgiFSsruWde-ryNkxvQuccpwIDvzDgKoKbvgcl-xmT--Sv0Oxvl1m3YNXtMvod3pIHh3h7mn8PX_9EZQsW-cjl4JX2R957Ght5NcT3jE0LMj8Bfp1aqCgIqWU4VRZAajGP2-YTwadV8qHavPoCTzwtq01XdirsEGFqLzOx-zIZUI9g5x3ggJUFUA3kAxV5fFeVSySlatSy__8Se05I42_o4WBBShbPmPGzG7e66FiKR30GUsQSGoazDXkQ0QfuAlfwJMcNRR5Kt4Sm6yk_chcduewDkgzZ11xT5GHUj6oB2U5NN2vaRJbDBevA8LrOZwXmtyA5tVQUq735k1LCdXAUYybVikohzezVIFKmnAsEaXVn8oDxmvGYNPHIUFLSzts2uX7fylwQCIP5jTQcFcUcYfHAH6mNPrMZW8cmtbaRctB9nFO67l_bWi6ldTL8zJ_HuMelInb2b5eky8Qdq2H1CM9yRgq0P3vj7k7wS7fIiD3hlBK_H8MsesTWqdxIiXEBBf_JpCsGZhNilhtUk_RmdBqtZAIBJIRG6eqLHjwQElQ')
GO
INSERT [dbo].[RefreshToken] ([Id], [Subject], [ClientId], [IssuedUtc], [ExpiresUtc], [ProtectedTicket]) VALUES (N'zA/Lm89ecAX88eGrYEHq94ECExz5SGRB4q305nsffBw=', N'sidCardOps', N'ngAuthApp', CAST(N'2018-04-10 08:18:57.590' AS DateTime), CAST(N'2018-04-15 08:18:57.590' AS DateTime), N'LdMxuCRtLy22NoeMDIipkOANnH2LvoaD0kfTr65U-83q6OasXgqYVT4HSCmFCkEGaxuk0nELCcY-KiQSNsHRSxa1v7vqdWWK29ZZErOBIOgkEPaGWJakYy9ahGuVj7Lz7zy86ZEqVtKlvAvXAhOv7G0Myr_vZ2uxWR94I-3YL3Yqal81Q54p3chZTCHqukq9GXZKzdUFJK1PRhv-qstCTJIrOWGZ-hdNm_h8tW7ZzwCaos0Z0trAk8lxmWa6AhlD7YrVFgXn0NL2zMGXbTD_oTCiN2k_ylJTLVzjLb1hc4XkVI7lhOeu6uSX0cEUVL_dYR_OPs-VHImrXGIu8U9mwzW24kPCNZQeSORjjmb8SfjIoPqvUAj3jan8tCS50Q8U0AILbiUq-YBqa5GbUg78v6fOia57yMrCAjsxTMRUMvyEgVG9-3DMWyMOzmPW0k7FkQZ4tyEb1K3-W7YkEqKrMWr4xlPGCKo_4jyWTLxdWT10AOs27BYKHqebh5BnN9FPU_dAz--BvonSelEHbG5c0PCi_yACsPsNsnKWdXTZMgb7F_UbVnBV3KEtEspwzMtw6Puq4J0q-ZXPsEItixgnP6uCcE6jOtkbyLbflX4DTJj5mGwxGDnZeqJkXwecydMa')
GO
SET IDENTITY_INSERT [dbo].[Remark] ON 

GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (1, N'Front & Back')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (2, N'Black & White')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (5, N'Corporate Card')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (6, N'SKS')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (7, N'Combo Nagaff')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (8, N'DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (9, N'DDA Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (10, N'Verve Debit')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (11, N'Debit DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (12, N'Power Card')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (13, N'MC USD DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (14, N'Seefor Bayelsa')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (15, N'Visa Debit')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (16, N'MC Gold DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (17, N'MC Pound DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (18, N'Standard DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (19, N'Regular')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (20, N'Moua Mfb')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (21, N'Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (22, N'Platinum')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (23, N'Debit')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (24, N'Gold Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (25, N'Debit Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (26, N'NFC Standard')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (27, N'Gold Naira')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (28, N'Dual Interface')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (29, N'Gold Euro')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (30, N'Gold Dollar')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (31, N'Gold Pound')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (32, N'Elite')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (33, N'Royalty')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (34, N'USD')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (35, N'FCY')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (36, N'OS')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (37, N'Teen A')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (38, N'CTB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (39, N'GTP')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (40, N'Swag')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (41, N'OC')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (42, N'Biz')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (43, N'Exclusive')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (44, N'MC USD')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (45, N'DCDC NFC')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (46, N'Classic NFC')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (47, N'MasterCard')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (48, N'White Verve')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (49, N'Priority Pass')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (50, N'NPFC')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (51, N'FT')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (52, N'CrossOver')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (53, N'Bokkos')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (54, N'Niche')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (55, N'Classic Debit')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (56, N'Chevron')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (57, N'LASB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (58, N'LASMSD')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (59, N'FCY Plat')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (60, N'Plat NGN Priviledge')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (61, N'GBP Plat')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (62, N'CTB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (63, N'DCDC')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (64, N'Payday')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (65, N'Reissuance')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (66, N'Issuance')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (67, N'COOP')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (68, N'Joint')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (69, N'Sole')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (70, N'BR')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (71, N'Gabon')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (72, N'Skyobus DDA Visa')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (73, N'Africard DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (74, N'LAPO MFB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (75, N'SDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (76, N'Wakanow DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (77, N'Kiddies')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (78, N'Instant CDL')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (79, N'Corp')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (80, N'Renewal')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (81, N'Royalty Dollar')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (82, N'Elite Dollar')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (83, N'Plat Polo')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (84, N'Depotter')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (85, N'NIJ')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (86, N'Classic Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (87, N'Priv')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (88, N'Teen B')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (89, N'Benin Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (90, N'Benin No Embossing')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (91, N'Classic NFC Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (92, N'Dollar Prepaid')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (93, N'SDA 1 LineEmbossing')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (94, N'DDA 1 Line')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (95, N'SDA 1 Line')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (96, N'DDA LAPO 1 Line')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (97, N'Instant SDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (98, N'CIV Instant DDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (99, N'Benin Instant SDA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (100, N'Benin SDA No Name No Embossing')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (101, N'White Card')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (102, N'Senior')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (103, N'NRN')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (104, N'SKS')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (105, N'Joint')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (106, N'SDA TCD 1 Line Embossing')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (107, N'Benin SDA 1 & 2 Line Embossing')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (108, N'NGA Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (109, N'NGA SDA Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (110, N'Aso Savings Verve')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (111, N'Ngbo MFB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (112, N'Unical MFB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (113, N'No Name. No Embossing Line 1 and Line 2')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (114, N'First and Second Line Embossing')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (115, N'Advans')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (116, N'Legend')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (117, N'Vibrant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (118, N'XSLNCE')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (119, N'EMV')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (120, N'BIZ')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (121, N'personal banking')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (122, N'GH LINK ORANGE')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (123, N'BLACK CARD')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (124, N'BLUE')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (125, N'Prepaid')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (126, N'classic')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (127, N'PREPAID')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (128, N'electron')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (129, N'First Line')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (130, N'fcmb nairawise')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (131, N'classic xplore')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (132, N'naira wise')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (133, N'meadow hall')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (134, N'segment 1')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (135, N'segment II')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (136, N'segment III')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (137, N'TEMP')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (138, N'MDD Co-branded MA2E')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (139, N'estate')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (140, N'partnership')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (141, N'Nestle')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (142, N'Tier')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (143, N'Seap')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (144, N'VFD')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (145, N'GT-GOLD ')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (146, N'GT_Emerald')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (147, N'GT-Silver')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (148, N'GT-Diamond')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (149, N'EXCEL MFB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (150, N'NNEW MFB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (151, N'golf club')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (152, N'NGO')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (153, N'LEADCITY MFB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (154, N'Emerald')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (155, N'APEKS')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (156, N'MAUTECH')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (157, N'ADVANS')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (158, N'explore')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (159, N'NYSC')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (160, N'NIGER')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (161, N'COMBO SEEFOR BAYELSA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (162, N'Zero Bal')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (163, N'solo')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (164, N'chikum')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (165, N'giant mfb')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (166, N'Purplemoney mfb')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (167, N'mutual mfb')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (168, N'lovonus')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (169, N'megapraise')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (170, N'ALAT STUDENT')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (171, N'AJAYI CROWTHER')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (172, N'ANLCA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (173, N'visa mfb')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (174, N'IMAL_NIB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (175, N'Gombe')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (176, N'club')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (177, N'ALAT ENTERPRENEUR')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (178, N'AIM')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (179, N'NA')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (180, N'Second Line')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (181, N'Use White Card')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (182, N'No Emboss. Instant')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (183, N'Gold')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (184, N' NIMCOS ')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (185, N'GOLF CLUB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (186, N'plat usd')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (187, N'NNEW MFB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (188, N'vibrant mfb')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (189, N'advans mfb')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (190, N'Millienium')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (191, N'DT GTB')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (192, N'FUEL corp')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (193, N'emv pilot')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (194, N'prestige')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (195, N'shalom')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (196, N'COPLIMENTARY')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (197, N'EGBIN')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (198, N'moneytrust')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (199, N'test')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (200, N'gowans')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (201, N'FUD')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (202, N'KWARA STATE')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (203, N'Use NORMAL verve cards')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (204, N'silver')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (205, N'AL-BARAKKAH')
GO
INSERT [dbo].[Remark] ([Id], [Name]) VALUES (206, N'GHANA ORANGE')
GO
SET IDENTITY_INSERT [dbo].[Remark] OFF
GO
SET IDENTITY_INSERT [dbo].[ServerJobQueue] ON 

GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2200, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 1, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2201, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2202, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 1, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2203, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2284, N'GTB_422525_20170523_1448 Diamond SDA.dat.asc', 1, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-02-07 12:11:54.230' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2285, N'GTB_2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 1, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2286, N'GTB_3_422525_20170523_1448 Diamond SDA.pgp', 1, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-02-07 12:11:14.560' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2287, N'AccessBank_4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2288, N'AccessBank_1_422525_20170523_1448 Diamond SDA.dat.asc', 1, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2289, N'AccessBank_2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2290, N'AccessBank_3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2291, N'AccessBank_4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2292, N'Heritage_1_422525_20170523_1448 Diamond SDA.dat.asc', 1, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2293, N'Heritage_2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2294, N'Heritage_3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2295, N'Heritage_4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2296, N'Heritage_1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2297, N'Heritage_2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2298, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2299, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2300, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2301, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2302, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2303, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2304, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2305, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2306, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2307, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2308, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2309, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2310, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2311, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2312, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2313, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2314, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2315, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2316, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2317, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2318, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2319, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2320, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2321, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2322, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2323, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2324, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2325, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2326, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2327, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2328, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2329, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2330, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2331, N'FirstBank 4 visa_422525_20170523_1448 Diamond SDA.dat.gpg', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2332, N'FirstBank 1_422525_20170523_1448 Diamond SDA.dat.asc', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 15:11:26.027' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2333, N'FirstBank 2_422525_20170523_1448 nDiamond_MC_n200 SDA.zip', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2334, N'FirstBank 3_422525_20170523_1448 Diamond SDA.pgp', 0, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2018-01-29 14:53:26.843' AS DateTime))
GO
INSERT [dbo].[ServerJobQueue] ([Id], [JobName], [IsTreated], [IsDeleted], [CreatedOn], [ModifiedOn]) VALUES (2335, N'FirstBank 4_mc_422525_20170523_1448 Diamond_n120_SDA.dat.gpg', 1, 0, CAST(N'2018-02-25 20:37:04.123' AS DateTime), CAST(N'2017-12-24 21:33:19.800' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ServerJobQueue] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceType] ON 

GO
INSERT [dbo].[ServiceType] ([Id], [Name]) VALUES (1, N'Perso Only')
GO
INSERT [dbo].[ServiceType] ([Id], [Name]) VALUES (2, N'Printing Only')
GO
INSERT [dbo].[ServiceType] ([Id], [Name]) VALUES (3, N'Mailing Only')
GO
INSERT [dbo].[ServiceType] ([Id], [Name]) VALUES (4, N'Printing And Perso')
GO
INSERT [dbo].[ServiceType] ([Id], [Name]) VALUES (5, N'Printing, Perso And Mailing')
GO
INSERT [dbo].[ServiceType] ([Id], [Name]) VALUES (6, N'Perso And Mailing')
GO
INSERT [dbo].[ServiceType] ([Id], [Name]) VALUES (7, N'Dispatch Only')
GO
SET IDENTITY_INSERT [dbo].[ServiceType] OFF
GO
SET IDENTITY_INSERT [dbo].[Sid01CardOps] ON 

GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (32, 32, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-02-18 19:28:49.697' AS DateTime), CAST(N'2018-02-18 19:28:49.697' AS DateTime), CAST(N'2018-02-18 19:28:49.697' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (33, 33, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-02-18 19:35:18.217' AS DateTime), CAST(N'2018-02-18 19:35:18.217' AS DateTime), CAST(N'2018-02-18 19:35:18.217' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (34, 34, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-02-18 19:37:43.720' AS DateTime), CAST(N'2018-02-18 19:37:43.720' AS DateTime), CAST(N'2018-02-18 19:37:43.720' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (35, 35, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-02-18 19:38:42.190' AS DateTime), CAST(N'2018-02-18 19:38:42.190' AS DateTime), CAST(N'2018-02-18 19:38:42.190' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (36, 36, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-02-19 11:48:57.830' AS DateTime), CAST(N'2018-02-19 11:48:57.830' AS DateTime), CAST(N'2018-02-19 11:48:57.830' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (37, 37, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-02-19 11:54:22.880' AS DateTime), CAST(N'2018-02-19 11:54:22.880' AS DateTime), CAST(N'2018-02-19 11:54:22.880' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (38, 38, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-02-22 11:33:17.197' AS DateTime), CAST(N'2018-02-22 11:33:17.197' AS DateTime), CAST(N'2018-02-22 11:33:17.197' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (39, 39, N'db0a2526-a17a-4712-8e84-7fa60b9f94c6', CAST(N'2018-02-23 15:20:30.757' AS DateTime), CAST(N'2018-02-23 15:20:30.757' AS DateTime), CAST(N'2018-02-23 15:20:30.757' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (40, 40, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-03-06 22:36:03.463' AS DateTime), CAST(N'2018-03-06 22:36:03.463' AS DateTime), CAST(N'2018-03-06 22:36:03.463' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (41, 41, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-03-06 22:41:46.800' AS DateTime), CAST(N'2018-03-06 22:41:46.800' AS DateTime), CAST(N'2018-03-06 22:41:46.800' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (42, 42, N'7b4ffa08-86cb-4482-9c8a-a9fcc4db43cb', CAST(N'2018-03-07 11:10:11.630' AS DateTime), CAST(N'2018-03-07 11:10:11.630' AS DateTime), CAST(N'2018-03-07 11:10:11.630' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (43, 43, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-03-25 09:03:23.493' AS DateTime), CAST(N'2018-03-25 09:03:23.490' AS DateTime), CAST(N'2018-03-25 09:03:23.490' AS DateTime))
GO
INSERT [dbo].[Sid01CardOps] ([Id], [JobId], [CreatedUserId], [CreatedOn], [TimeIn], [TimeOut]) VALUES (44, 44, N'db0a2526-a17a-4712-8e84-7fa60b9f94c6', CAST(N'2018-04-10 09:41:01.447' AS DateTime), CAST(N'2018-04-10 09:41:01.447' AS DateTime), CAST(N'2018-04-10 09:41:01.447' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Sid01CardOps] OFF
GO
SET IDENTITY_INSERT [dbo].[Sid03FirstCard] ON 

GO
INSERT [dbo].[Sid03FirstCard] ([Id], [JobTrackerId], [InitializedById], [InitializedOn]) VALUES (20, 84, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:54:32.887' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Sid03FirstCard] OFF
GO
SET IDENTITY_INSERT [dbo].[Sid05QA] ON 

GO
INSERT [dbo].[Sid05QA] ([Id], [JobTrackerId], [JobSplitId], [Magstripe], [Indenting], [Embossing], [Picture], [Fulfillment], [Client], [CardType], [PictureView], [Variant], [CardIdNumber], [Bin], [MagstripeTrack], [Cvv], [PanSpacing], [CreatedById], [CreatedOn]) VALUES (20, 84, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, N'7c7b3da9-e3d7-42de-bc1a-7676ff8cd86f', CAST(N'2018-04-10 09:54:32.927' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Sid05QA] OFF
GO
SET IDENTITY_INSERT [dbo].[SidCardType] ON 

GO
INSERT [dbo].[SidCardType] ([Id], [Name]) VALUES (1, N'Magstripe')
GO
INSERT [dbo].[SidCardType] ([Id], [Name]) VALUES (2, N'Master Card')
GO
INSERT [dbo].[SidCardType] ([Id], [Name]) VALUES (3, N'Special Project')
GO
INSERT [dbo].[SidCardType] ([Id], [Name]) VALUES (4, N'Verve')
GO
INSERT [dbo].[SidCardType] ([Id], [Name]) VALUES (5, N'Visa')
GO
SET IDENTITY_INSERT [dbo].[SidCardType] OFF
GO
SET IDENTITY_INSERT [dbo].[SidChipType] ON 

GO
INSERT [dbo].[SidChipType] ([Id], [SidCardTypeId], [Name]) VALUES (1, 1, N'Kona Card')
GO
SET IDENTITY_INSERT [dbo].[SidChipType] OFF
GO
SET IDENTITY_INSERT [dbo].[SidClient] ON 

GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (1, 1, N'GTBANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (2, 1, N'ACCESS BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (3, 1, N'WEMA BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (4, 1, N'UBA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (5, 1, N'ABBEY', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (6, 1, N'ACCION BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (7, 1, N'AMJU MFB', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (8, 1, N'ASO SAVINGS', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (9, 1, N'CITI BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (10, 1, N'DIAMOND BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (11, 1, N'ECO BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (12, 1, N'EKONDO', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (13, 1, N'ENTERPRISE BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (14, 1, N'FCMB', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (15, 1, N'FIDELITY BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (16, 1, N'FIRST GENERATION BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (17, 1, N'FIRST BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (18, 1, N'GTBANK RWANDA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (19, 1, N'GTBANK GAMBIA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (20, 1, N'GTBANK GHANA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (21, 1, N'GTBANK UGANDA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (22, 1, N'HASAL', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (23, 1, N'HERITAGE BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (24, 1, N'IKEDC', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (25, 1, N'JAIZ BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (26, 1, N'KBL', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (27, 1, N'LASRRA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (28, 1, N'LASU', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (29, 1, N'LAVENDER', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (30, 1, N'MAINSTREAM', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (31, 1, N'PSH', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (32, 1, N'RESORT', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (33, 1, N'ROKEL', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (34, 1, N'STERLING BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (35, 1, N'SKYE BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (36, 1, N'STANBIC IBTC BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (37, 1, N'SKYE GAMBIA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (38, 1, N'SKYE GUINEA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (39, 1, N'UBA GHANA', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (40, 1, N'UNILORIN', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (41, 1, N'UNION BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (42, 1, N'UNITY BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (43, 1, N'ZENITH BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (44, 1, N'MAINSTREET BANK', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (45, 1, N'SECUREID LTD', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (46, 1, N'INTERSWITCH', NULL)
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (47, 1, N'Testing', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (48, 1, N'ACCESS BANK GHANA LIMTIED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (49, 1, N'SUN TRUST', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (50, 1, N'GTB SIERRA LEONE LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (51, 1, N'UTB GHANA', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (52, 1, N'AG MORTGAGE BANK PLC', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (53, 1, N'CHERMAT PHARMACY LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (54, 1, N'ENERGY BANK GHANA LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (55, 1, N'FIRST ATLANTIC BANK GHANA LIMITED (FABG)', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (56, 1, N'FORTIS MFB PLC', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (57, 1, N'INFINITY TRUST MORTGAGE BANK PLC', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (58, 1, N'MOPOL', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (59, 1, N'MUTUAL ALLIANCE MORTGAGE BANK', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (60, 1, N'O3 CAPITAL NIGERIA LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (61, 1, N'TRUST BOND', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (62, 1, N'Omoluabi Mortgage Bank Plc', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (63, 1, N'LASU', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (64, 1, N'OSCOPOLY', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (65, 1, N'PROVIDUS BANK', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (66, 1, N'SPAR (PARK N SHOP)', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (67, 1, N'ZENITH BANK GHANA LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (68, 1, N'ECORWANDA- GTW', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (69, 1, N'GOLF VIEW', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (70, 1, N'FIRST BANK GHANA LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (71, 1, N'FIRST BANK GUINEA LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (72, 1, N'COVENANT MFB LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (73, 1, N'KEYSTONE BANK GAMBIA LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (74, 1, N'KEYSTONE BANK SIERRA LEONE LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (75, 1, N'ZENITH BANK SIERRA LEONE LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (76, 1, N'University of Calabar (UNICAL) MFB', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (77, 1, N'MTN', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (78, 1, N'ALVANA MFB', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (79, 1, N'PARALLEX MFB', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (80, 1, N'LAPO MFB', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (81, 1, N'ZENITH GAMBIA', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (82, 1, N'STANDARD CHARTERED BANK', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (83, 1, N'GENESIS', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (84, 1, N'CORONATION MERCHANT BANK PLC', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (85, 1, N'SECUREID LTD', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (86, 1, N'NGBO MICRO FINANCE BANK', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (87, 1, N'Agricultural Development Bank', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (88, 1, N'READY CASH', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (89, 1, N'PAGE MFB LIMITED', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (90, 1, N'NEW PRUDENTIAL MORTGAGE BANK', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (91, 1, N'FRSC DRIVER LICENCE', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (92, 1, N'WETLAND MICRO FINANCE BANK', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (93, 1, N'EBONYI STATE UNIVERSITY', N'')
GO
INSERT [dbo].[SidClient] ([Id], [SectorId], [Name], [ShortCode]) VALUES (94, 1, N'Janet adetu', N'')
GO
SET IDENTITY_INSERT [dbo].[SidClient] OFF
GO
SET IDENTITY_INSERT [dbo].[SidMachine] ON 

GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (1, 3, N'MX 1')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (2, 3, N'MX 2')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (3, 3, N'MX 3')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (4, 3, N'MX 4')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (5, 3, N'MX 5')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (6, 2, N'PRIMA4-1')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (7, 2, N'PRIMA4-2')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (8, 2, N'PRIMA4-3')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (9, 2, N'PRIMA4-4')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (10, 6, N'Manual')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (11, 6, N'PT7000')
GO
INSERT [dbo].[SidMachine] ([Id], [DepartmentId], [Name]) VALUES (12, 6, N'Ottokunnecke')
GO
SET IDENTITY_INSERT [dbo].[SidMachine] OFF
GO
SET IDENTITY_INSERT [dbo].[SidProduct] ON 

GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (2, 1, 1, N'GTB MC PRIORITY PASS', N'GTB MC P.P')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (3, 1, 2, N'GTB MC SKS', N'GTB MC SKS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (4, 1, 2, N'GTB MC NAIRA DEBIT MC', N'GTB MC NAIRA DB MC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (5, 1, 2, N'GTB MC PREPAID', N'GTB MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (6, 1, 2, N'GTB MC CORPORATE', N'GTB MC CORP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (7, 1, 2, N'GTB MC CORPORATE DOLLAR', N'GTB MC CORP USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (8, 1, 2, N'GTB MC CORPORATE CHEVRON', N'GTB MC CHEVRON')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (9, 1, 2, N'GTB MC PAYPASS PREPAID', N'GTB MC PAYPASS PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (10, 1, 2, N'GTB MC PAYPASS PLATINUM DEBIT', N'GTB MC PAYPASS PLAT DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (11, 1, 2, N'GTB MC TEMPORARY', N'GTB MC TEMPORARY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (12, 1, 2, N'GTB MC SIERRA LEONE', N'GTB MC SL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (13, 1, 4, N'GTB VERVE SIERRA LEONE', N'GTB VE SL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (14, 1, 4, N'GTB VERVE AGBAMI SCHOLARSHIP', N'GTB VE AGBAMI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (15, 1, 5, N'GTB VISA PREPAID', N'GTB VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (16, 1, 5, N'GTB VISA CORPORATE', N'GTB VI COR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (17, 1, 5, N'GTB VISA DEBIT', N'GTB VI DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (18, 1, 5, N'GTB VISA CLASSIC', N'GTB VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (19, 1, 5, N'GTB VISA LUFTHANZA', N'GTB VI LUFTHANZA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (20, 2, 4, N'ACCESS GHANA VERVE WHITE ', N'ABP GH VE WHITE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (21, 2, 4, N'ACCESS GHANA VERVE BLUE', N'ABP GH VE BLUE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (22, 2, 4, N'ACCESS GHANA VERVE GOLD', N'ABP GH VE GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (23, 2, 4, N'ACCESS VERVE ETCC', N'ABP VE ETCC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (24, 2, 4, N'ACCESS VERVE CLASSIC', N'ABP VE CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (25, 2, 4, N'ACCESS VERVE GNLD WHITE', N'ABP VE GNLD WHITE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (26, 2, 4, N'ACCESS VERVE WHITE PLASTICS OTHERS', N'ABP VE WHITE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (27, 2, 4, N'ACCESS VERVE UNN', N'ABP VE UNN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (28, 2, 4, N'ACCESS VERVE LAPO', N'ABP VE LAPO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (29, 2, 4, N'ACCESS VERVE SOLO', N'ABP VE SOLO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (30, 2, 5, N'ACCESS VISA CLASSIC', N'ABP VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (31, 2, 5, N'ACCESS VISA CLASSIC DEBIT WHITE', N'ABP VI CL DB WHITE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (32, 2, 5, N'ACCESS VISA CLASSIC DEBIT', N'ABP VI CL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (33, 2, 5, N'ACCESS VISA CREDIT ', N'ABP VI CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (34, 2, 5, N'ACCESS VISA CLASSIC NEW', N'ABP VI CL NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (35, 2, 5, N'ACCESS VISA GOLD', N'ABP VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (36, 2, 5, N'ACCESS VISA GOLD CREDIT NAIRA', N'ABP VI GL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (37, 2, 5, N'ACCESS VISA GOLD GREY', N'ABP VI GL GREY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (38, 2, 5, N'ACCESS VISA GOLD NEW', N'ABP VI GL NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (39, 2, 5, N'ACCESS VISA PLATINIUM', N'ABP VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (40, 2, 5, N'ACCESS VISA PLATINIUM GREY', N'ABP VI PL GREY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (41, 2, 5, N'ACCESS VISA PLATINIUM CREDIT', N'ABP VI PL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (42, 2, 5, N'ACCESS VISA PLATINIUM BIZ', N'ABP VI PL BIZ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (43, 2, 5, N'ACCESS VISA PLATINIUM CORPORATE BIZ', N'ABP VI CORP PL BIZ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (44, 2, 5, N'ACCESS VISA PLATINIUM POLO', N'ABP VI PL POLO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (45, 2, 5, N'ACCESS VISA PLATINIUM NEW', N'ABP VI PL NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (46, 2, 5, N'ACCESS VISA INFINITE NEW', N'ABP VI INF NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (47, 2, 5, N'ACCESS VISA INFINITE ', N'ABP VI INF ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (48, 2, 5, N'ACCESS VISA PREPAID', N'ABP VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (49, 2, 5, N'ACCESS VISA PRIVATE INFINITE', N'ABP VI PRIVATE INF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (50, 2, 5, N'ACCESS VISA RCCG', N'ABP VI RCCG')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (51, 2, 5, N'ACCESS VISA DEBIT E-TOUR', N'ABP VI DB E-TOUR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (52, 2, 5, N'ACCESS VISA PREPAID E TOUR', N'ABP VI PRE E TOUR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (53, 2, 5, N'ACCESS VISA GOLD E- TOUR', N'ABP VI GL E- TOUR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (54, 2, 5, N'ACCESS VISA GOLD CITY', N'ABP VI GL CITY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (55, 2, 5, N'ACCESS VISA PREPAID CITY', N'ABP VI PRE CITY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (56, 2, 5, N'ACCESS VISA DEBIT CITY', N'ABP VI DB CITY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (57, 2, 5, N'ACCESS VISA PLAT CITY', N'ABP VI PL CITY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (58, 2, 5, N'ACCESS VISA BLUE CITY', N'ABP VI BLUE CITY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (59, 2, 5, N'ACCESS VISA COOPERATE', N'ABP VI COOPERATE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (60, 2, 5, N'ACCESS VISA RCCG ASST PASTOR', N'ABP VI RCCG ASST PASTOR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (61, 2, 5, N'ACCESS VISA RCCG DEACON', N'ABP VI RCCG DEACON')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (62, 2, 5, N'ACCESS VISA RCCG DEACONESS', N'ABP VI RCCG DEACONESS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (63, 2, 5, N'ACCESS VISA RCCG PASTOR', N'ABP VI RCCG PASTOR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (64, 2, 5, N'ACCESS VISA ANCLA', N'ABP VI ANCLA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (65, 2, 5, N'ACCESS VISA OANDO CLAS', N'ABP VI OANDO CLAS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (66, 2, 5, N'ACCESS VISA OANDO GOLD', N'ABP VI OANDO GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (67, 2, 5, N'ACCESS VISA OANDO  PLATINIUM', N'ABP VI OANDO  PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (68, 2, 5, N'ACCESS VISA EWT', N'ABP VI EWT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (69, 3, 2, N'WEMA MC DEBIT', N'WEMA MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (70, 3, 2, N'WEMA MC DEBIT NEW', N'WEMA MC DB NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (71, 3, 2, N'WEMA MC OREAP', N'WEMA MC OREAP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (72, 3, 2, N'WEMA MC REWARD', N'WEMA MC REWARD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (73, 3, 2, N'WEMA MC PREPAID', N'WEMA MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (74, 3, 2, N'WEMA MC PAGE', N'WEMA MC PAGE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (75, 3, 2, N'WEMA MC PREPAID', N'WEMA MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (76, 3, 2, N'WEMA MC RELIANCE', N'WEMA MC RELIANCE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (77, 3, 2, N'WEMA MC TCF', N'WEMA MC TCF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (78, 3, 2, N'WEMA MC DB', N'WEMA MC PLAT DD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (79, 3, 4, N'WEMA VERVE CORNERSTONE', N'WEMA VE CORNERSTONE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (80, 3, 4, N'WEMA VERVE TAI SOLARIN', N'WEMA VE TAI SOLARIN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (81, 3, 4, N'WEMA VERVE VISA', N'WEMA VE VI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (82, 3, 4, N'WEMA VERVE IKENNE', N'WEMA VE IKENNE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (83, 3, 4, N'WEMA VERVE ROYAL KIDDIES', N'WEMA VE ROYAL KIDDIES')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (84, 3, 4, N'WEMA VERVE NURTW', N'WEMA VE NURTW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (85, 3, 4, N'WEMA VERVE TRANSPARENT', N'WEMA VE TRANSPARENT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (86, 3, 4, N'WEMA VERVE EK-RELIABLE', N'WEMA VE EK-RELIABLE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (87, 3, 4, N'WEMA VERVE TREASURE', N'WEMA VE TREASURE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (88, 3, 4, N'WEMA VERVE ILISAN', N'WEMA VE ILISAN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (89, 3, 4, N'WEMA VERVE UNIBEN', N'WEMA VE UNIBEN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (90, 3, 4, N'WEMA VERVE SUN BEAM', N'WEMA VE SUN BEAM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (91, 3, 4, N'WEMA VERVE DE POTTER', N'WEMA VE DE POTTER')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (92, 3, 4, N'WEMA VERVE PHARMACEUTICAL', N'WEMA VE PHARMACEUTICAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (93, 3, 4, N'WEMA VERVE UPLIFTING', N'WEMA VE UPLIFTING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (94, 3, 4, N'WEMA VERVE BITMASTER', N'WEMA VE BITMASTER')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (95, 3, 4, N'WEMA VERVE BITMASTER', N'WEMA VE UNIBEN(ENGNR)')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (96, 3, 4, N'WEMA VERVE PRIORITY PASS', N'WEMA VE P.P')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (97, 3, 4, N'WEMA VERVE GIFT', N'WEMA VE GIFT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (98, 3, 4, N'WEMA VERVE GIFT', N'WEMA VE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (99, 3, 5, N'WEMA VISA DEBIT', N'WEMA VI DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (100, 3, 5, N'WEMA VISA PLATINUM', N'WEMA VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (101, 3, 5, N'WEMA VISA CREDIT', N'WEMA VI CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (102, 3, 5, N'WEMA VISA GOLD', N'WEMA VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (103, 3, 5, N'WEMA VISA DEBIT NEW ', N'WEMA VI DB NEW ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (104, 3, 5, N'WEMA VISA PLATINUM USD ', N'WEMA VI PL USD ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (105, 3, 5, N'WEMA VISA CREDIT NEW', N'WEMA VI CR NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (106, 3, 5, N'WEMA VISA TAI SOLARIN', N'WEMA VI TAI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (107, 3, 5, N'WEMA VISA PREPAID DEBIT', N'WEMA VI PRE DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (108, 4, 4, N'UBA VERVE PP', N'UBA VE PP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (109, 4, 2, N'UBA MC DEBIT', N'UBA MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (110, 4, 2, N'UBA MC PREPAID', N'UBA MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (111, 4, 2, N'UBA MC FIANCA', N'UBA MC FIANCA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (112, 4, 2, N'UBA MC FIANCA 1', N'UBA MC FIANCA 1')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (113, 4, 2, N'UBA MC FIANCA 2  5288', N'UBA MC FIANCA 2')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (114, 4, 2, N'UBA MC GENERIC', N'UBA MC GENERIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (115, 4, 2, N'UBA MC GENERIC PREPAID', N'UBA MC GENERIC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (116, 4, 2, N'UBA MC PAYWAVE GENERIC GOLD', N'UBA MC PAYWAVE GL GENERIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (117, 4, 2, N'UBA MC NFC STANDARD ', N'UBA MC NFC STANDARD ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (118, 4, 2, N'UBA MC PAYPASS', N'UBA MC PAYPASS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (119, 4, 4, N'UBA VERVE NFC', N'UBA VE NFC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (120, 4, 4, N'UBA VERVE LIVINGSTONE', N'UBA VE LIVINGSTONE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (121, 4, 4, N'UBA VERVE GREAT JED', N'UBA VE GREAT JED')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (122, 4, 4, N'UBA VERVE KONA', N'UBA VE KONA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (123, 4, 5, N'UBA  ELECTRON VISA BENIN SDA', N'UBA  ELEC VI BENIN SDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (124, 4, 5, N'UBA  ELECTRON VISA BENIN SDA GENERIC', N'UBA  ELEC VI BENIN SDA GENERIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (125, 4, 5, N'UBA  ELECTRON VISA GABON', N'UBA  ELEC VI GABON')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (126, 4, 5, N'UBA  ELECTRON VISA CONGO BZ', N'UBA  ELEC VI CONGO BZ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (127, 4, 5, N'UBA  ELECTRON VISA BURKINA', N'UBA  ELEC VI BURKINA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (128, 4, 5, N'UBA  ELECTRON VISA MOZAM', N'UBA  ELEC VI MOZAM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (129, 4, 5, N'UBA  ELECTRON VISA CONGO DC', N'UBA  ELEC VI CONGO DC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (130, 4, 5, N'UBA  ELECTRON VISA CAMEROON', N'UBA  ELEC VI CAM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (131, 4, 5, N'UBA  ELECTRON VISA ZAMBIA', N'UBA  ELEC VI ZAM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (132, 4, 5, N'UBA  ELECTRON VISA CHAD', N'UBA  ELEC VI CHAD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (133, 4, 5, N'UBA  ELECTRON VISA SIERRA LEONE', N'UBA  ELEC VI SL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (134, 4, 5, N'UBA  ELECTRON VISA SENEGAL', N'UBA  ELEC VI SENEGAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (135, 4, 5, N'UBA  ELECTRON VISA GUINEE', N'UBA  ELEC VI GUINEE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (136, 4, 5, N'UBA  ELECTRON VISA UGANDA', N'UBA  ELEC VI UGANDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (137, 4, 5, N'UBA  ELECTRON GENERIC DEBIT', N'UBA  ELEC VI GENERIC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (138, 4, 5, N'UBA  ELECTRON GENERIC CLASSIC', N'UBA  ELEC VI GENERIC CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (139, 4, 5, N'UBA  ELECTRON GENERIC DOLLAR', N'UBA  ELEC VI GENERIC USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (140, 4, 5, N'UBA  ELECTRON GENERIC DEBIT DCDC', N'UBA  ELEC VI GENERIC DB DCDC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (141, 4, 5, N'UBA GOLD DEBIT VISA GHANA', N'UBA GL DEBIT VI GH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (142, 4, 5, N'UBA GOLD DEBIT VISA CAMEROON', N'UBA GL DEBIT VI CAM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (143, 4, 5, N'UBA GOLD DEBIT VISA BURKINA FASO', N'UBA GL DEBIT VI BURK FASO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (144, 4, 5, N'UBA PREPAID VISA OMO', N'UBA PRE VI OMO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (145, 4, 5, N'UBA PREPAID VISA SAGEM', N'UBA PRE VI SAGEM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (146, 4, 5, N'UBA PREPAID VISA WAKA NOW OLD', N'UBA PRE VI WAKA NOW OLD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (147, 4, 5, N'UBA PREPAID VISA WAKA NOW 2', N'UBA PRE VI WAKA NOW 2ND STOCK')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (148, 4, 5, N'UBA PREPAID VISA WAKA NOW 3', N'UBA PRE VI WAKA NOW 3RD STOCK')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (149, 4, 5, N'UBA PREPAID VISA SIERRA LEONE', N'UBA PRE VI SL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (150, 4, 5, N'UBA PREPAID VISA CHAD', N'UBA PRE VI CHAD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (151, 4, 5, N'UBA PREPAID VISA LIBERIA', N'UBA PRE VI LIBERIA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (152, 4, 5, N'UBA PREPAID VISA KENYA', N'UBA PRE VI KENYA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (153, 4, 5, N'UBA PREPAID VISA CMR CECCIC ', N'UBA PRE VI CMR CECCIC ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (154, 4, 5, N'UBA PREPAID VISA CMR ADEC', N'UBA PRE VI CMR ADEC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (155, 4, 5, N'UBA PREPAID VISA CMR ADEC 2', N'UBA PRE VI CMR ADEC 2')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (156, 4, 5, N'UBA PREPAID VISA DELSU', N'UBA PRE VI DELSU')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (157, 4, 5, N'UBA PREPAID VISA ZAMPOST', N'UBA PRE VI ZAMPOST')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (158, 4, 5, N'UBA PREPAID VISA SIERRA LEONE BROWN', N'UBA PRE VI SL BROWN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (159, 4, 5, N'UBA PREPAID VISA BENIN', N'UBA PRE VI BENIN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (160, 4, 5, N'UBA PREPAID VISA ZAMBIA', N'UBA PRE VI ZAM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (161, 4, 5, N'UBA PREPAID VISA SENEGAL', N'UBA PRE VI SENEGAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (162, 4, 5, N'UBA PREPAID VISA CONGO DRC', N'UBA PRE VI CONGO DRC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (163, 4, 5, N'UBA PREPAID VISA UNITY FINANCE', N'UBA PRE VI UNITY FINANCE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (164, 4, 5, N'UBA PREPAID VISA CAMEROON DUALA', N'pre generic')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (165, 4, 5, N'UBA PREPAID VISA ZAMBIA PREPAID USD', N'UBA PRE VI ZAM PRE USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (166, 4, 5, N'UBA PREPAID VISA GENERIC', N'UBA PRE VI GENERIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (167, 4, 5, N'UBA PREPAID VISA ADVANS LINK PETROLEUM', N'UBA PRE VI ALP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (168, 4, 5, N'UBA AIM HIGH VISA PREPAID ', N'UBA AIM VI PRE BLUE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (169, 4, 5, N'UBA ALIANCE PREPAID VISA BLUE', N'UBA ALLANCE PRE VI PRE BLUE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (170, 4, 5, N'UBA ALIANCE PREPAID VISA GOLD', N'UBA ALLANCE PRE VI PRE GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (171, 4, 5, N'UBA ALIANCE PREPAID VISA PLAT', N'UBA ALLANCE PRE VI PRE PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (172, 4, 5, N'UBA AIRTEL PREPAID VISA ', N'UBA AIRTEL PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (173, 4, 5, N'UBA AZZICUL VISA PREPAID ', N'UBA AZZL  VI PRE GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (174, 4, 5, N'UBA BEACONNECT VISA PREPAID ', N'UBA BEAC VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (175, 4, 5, N'UBA BUEA VISA PREPAID ', N'UBA BUEA VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (176, 4, 5, N'UBA CAMPOST INFINITY VISA PREPAID ', N'UBA CAMPOST INFI VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (177, 4, 5, N'UBA CEC CAMEROON VISA PREPAID ', N'UBA CEC CMR VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (178, 4, 5, N'UBA CECAW VISA PREPAID ', N'UBA CECAW CMR VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (179, 4, 5, N'UBA CEMED VISA PREPAID ', N'UBA CEMED VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (180, 4, 5, N'UBA CEPAC VISA PREPAID ', N'UBA CEPAC VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (181, 4, 5, N'UBA CMS VISA PREPAID ', N'UBA CMS VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (182, 4, 5, N'UBA COMPUTER WAREHOUSE VISA PREPAID ', N'UBA COMPUTER VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (183, 4, 5, N'UBA CREDIT MUTUAL VISA PREPAID ', N'UBA CR MUTUAL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (184, 4, 5, N'UBA CYBERLINK VISA PREPAID ', N'UBA CYBERLINK VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (185, 4, 5, N'UBA DHT VISA PREPAID ', N'UBA DHT VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (186, 4, 5, N'UBA DEEPERLIFE HIGH SCHOOL VISA PREPAID ', N'UBA DLHS VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (187, 4, 5, N'UBA EKIMOGUN VISA PREPAID ', N'UBA EKIMOGUN VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (188, 4, 5, N'UBA ELUFIDIYA VISA PREPAID ', N'UBA ELUFIDIYA VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (189, 4, 5, N'UBA CAMEROON ENS TP  VISA PREPAID ', N'UBA CMR ENST VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (190, 4, 5, N'UBA CAMEROON ERA  VISA PREPAID ', N'UBA CMR ERA VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (191, 4, 5, N'UBA FIGEC  VISA PREPAID ', N'UBA FIGEC VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (192, 4, 5, N'UBA FIRST HERITAGE  VISA PREPAID ', N'UBA FH VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (193, 4, 5, N'UBA FLO CASH NIGERIA  VISA PREPAID ', N'UBA FC NG VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (194, 4, 5, N'UBA FLO CASH GHANA  VISA PREPAID ', N'UBA FC GH VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (195, 4, 5, N'UBA FLO CASH TANZANIA  VISA PREPAID ', N'UBA FC TANZ  VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (196, 4, 5, N'UBA FLO CASH UGANDA  VISA PREPAID ', N'UBA FC UG  VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (197, 4, 5, N'UBA FLO CASH KENYA  VISA PREPAID ', N'UBA FC KEN  VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (198, 4, 5, N'UBA FODEC BASIC (SEGMENT 1) VISA', N'UBA FODEC 1  VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (199, 4, 5, N'UBA FODEC BASIC (SEGMENT 2) VISA', N'UBA FODEC 2  VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (200, 4, 5, N'UBA FODEC BASIC (SEGMENT 3) VISA', N'UBA FODEC 3  VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (201, 4, 5, N'UBA FUNDSWORTH GOLD PREPAID VISA', N'UBA FUNDW  GL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (202, 4, 5, N'UBA FUNDSWORTH PLAT PREPAID VISA', N'UBA FUNDW  PL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (203, 4, 5, N'UBA FUNDSWORTH RED PREPAID VISA', N'UBA FUNDW  RED VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (204, 4, 5, N'UBA FUNDSWORTH BLACK PREPAID VISA', N'UBA FUNDW  BL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (205, 4, 5, N'UBA GECCEFIC PREPAID VISA', N'UBA GECCEFIC VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (206, 4, 5, N'UBA GUINEE COFINA PREPAID VISA', N'UBA GINCOFINA VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (207, 4, 5, N'UBA GTUC PREPAID VISA', N'UBA GTUC VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (208, 4, 5, N'UBA HEALTH PLATINUM PREPAID VISA', N'UBA HEALTH PL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (209, 4, 5, N'UBA HEALTH ECONOMY PREPAID VISA', N'UBA HEALTH ECONOMY VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (210, 4, 5, N'UBA HEALTH GOLD PREPAID VISA', N'UBA HEALTH GL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (211, 4, 5, N'UBA HEALTH SILVER PREPAID VISA', N'UBA HEALTH SIL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (212, 4, 5, N'UBA COLLEGE OF EDUCATION WARRI PREPAID VISA OLD', N'UBA COEW VI PRE OLD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (213, 4, 5, N'UBA DELTA STATE UNIVERSITY PREPAID VISA ', N'UBA DELSU VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (214, 4, 5, N'UBA HOLIDAY DHT PREPAID VISA ', N'UBA HOL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (215, 4, 5, N'UBA ILLOFA DHT PREPAID VISA ', N'UBA ILLOFA VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (216, 4, 5, N'UBA HOPLON PREPAID VISA ', N'UBA HOPLON VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (217, 4, 5, N'UBA MARRON PREPAID VISA ', N'UBA MARRON VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (218, 4, 5, N'UBA CILPAN PREPAID VISA ', N'UBA CILPAN VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (219, 4, 5, N'UBA I FINANCE PREPAID VISA ', N'UBA IFINANCE VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (220, 4, 5, N'UBA INBTP PREPAID VISA ', N'UBA INBTP VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (221, 4, 5, N'UBA ISAU PREPAID VISA ', N'UBA ISAU VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (222, 4, 5, N'UBA ISP PREPAID VISA ', N'UBA ISP VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (223, 4, 5, N'UBA UNIPORT PREPAID VISA ', N'UBA UNIPORT VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (224, 4, 5, N'UBA LA REGION CAMEROON PREPAID VISA ', N'UBA LA REGION CMR VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (225, 4, 5, N'UBA LAPO PREPAID VISA ', N'UBA LA PO VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (226, 4, 5, N'UBA LIBERTY PREPAID VISA ', N'UBA LIBERTY VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (227, 4, 5, N'UBA LMR PREPAID VISA ', N'UBA LMR VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (228, 4, 5, N'UBA MADISON PREPAID VISA ', N'UBA MADISON VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (229, 4, 5, N'UBA CEPI PREPAID VISA ', N'UBA CEPI VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (230, 4, 5, N'UBA NAGAFF PREPAID VISA ', N'UBA NAGAFF VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (231, 4, 5, N'UBA TANGALE PREPAID VISA ', N'UBA TANGALE VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (232, 4, 5, N'UBA MAYFRESH PREPAID VISA ', N'UBA MAYFRESH VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (233, 4, 5, N'UBA MEADOW HALL PREPAID VISA ', N'UBA MEADOW VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (234, 4, 5, N'UBA MTN CONGO PREPAID VISA ', N'UBA MTN CONGO VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (235, 4, 5, N'UBA MTN ELITE PREPAID VISA ', N'UBA MTN ELITE VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (236, 4, 5, N'UBA MUPECI PREPAID VISA ', N'UBA MUPECI VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (237, 4, 5, N'UBA NOKIA GOLD PREPAID VISA ', N'UBA NOKIA GL VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (238, 4, 5, N'UBA NOKIA PREMIUM PREPAID VISA ', N'UBA NOKIA PREM VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (239, 4, 5, N'UBA OLOFIN PREPAID VISA ', N'UBA OLOFIN VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (240, 4, 5, N'UBA PAY PORTE PREPAID VISA ', N'UBA PAY PORTE VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (241, 4, 5, N'UBA NFC PAYWAVE DEBIT  VISA ', N'UBA NFC PAYWAVE  DB VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (242, 4, 5, N'UBA NFC PAYWAVE DEBIT  DCDC VISA ', N'UBA NFC PAYWAVE  DCDC VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (243, 4, 5, N'UBA NFC PAYWAVE DEBIT  DCDC 2 VISA ', N'UBA NFC PAYWAVE  DCDC 2 VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (244, 4, 5, N'UBA PECCU CLASSIC PREPAID VISA ', N'UBA PECCU CL PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (245, 4, 5, N'UBA PHCCIMA PREPAID VISA ', N'UBA PHCCIMA PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (246, 4, 5, N'UBA RAPID ADVISORY PREPAID VISA ', N'UBA RAPID PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (247, 4, 5, N'UBA RENAPROV PREPAID VISA ', N'UBA RENAPROV PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (248, 4, 5, N'UBA RIC CAMEROON PREPAID VISA ', N'UBA RIC CAM PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (249, 4, 5, N'UBA SELCOM PREPAID VISA ', N'UBA SELCOM PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (250, 4, 5, N'UBA SNE PREPAID VISA ', N'UBA SNE PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (251, 4, 5, N'UBA SNE PREPAID VISA ', N'UBA SO AFRICA PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (252, 4, 5, N'UBA SOFINA PREPAID VISA ', N'UBA SOFINA PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (253, 4, 5, N'UBA SOFINA PREPAID VISA ', N'UBA UNIC GUINEE PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (254, 4, 5, N'UBA UNIC SEGMENT 1 PREPAID VISA ', N'UBA UNIC SEGMENT 1 PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (255, 4, 5, N'UBA UNIC SEGMENT 2 PREPAID VISA ', N'UBA UNIC SEGMENT 2 PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (256, 4, 5, N'UBA UNIC SEGMENT 3 PREPAID VISA ', N'UBA UNIC SEGMENT 3 PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (257, 4, 5, N'UBA UNIVERSAL BUSINEESS PREPAID VISA ', N'UBA UNIV BIZ PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (258, 4, 5, N'UBA UPN PREPAID VISA ', N'UBA UPN PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (259, 4, 5, N'UBA ROYAL PRESTIGE PLATINUM PREPAID VISA ', N'UBA  ROYAL PREST PL PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (260, 4, 5, N'UBA ROYAL PRESTIGE GOLD PREPAID VISA ', N'UBA  ROYAL PREST GL PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (261, 4, 5, N'UBA ROYAL PRESTIGE CLASSIC PREPAID VISA ', N'UBA  ROYAL PREST CL PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (262, 4, 5, N'UBA SENEGAL ASP PREPAID VISA ', N'UBA  SEN ASP PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (263, 4, 5, N'UBA WARI PREPAID VISA ', N'UBA  WARI PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (264, 4, 5, N'UBA WELCOME KEY PREPAID VISA ', N'UBA  WELCOME KEY PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (265, 4, 5, N'UBA WHITELINE PREPAID VISA ', N'UBA  WHITELINE PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (266, 4, 5, N'UBA YAOUNDE 2 PREPAID VISA ', N'UBA  YAO 2 PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (267, 4, 5, N'UBA YAOUNDE 1 HIGHER ENS PREPAID VISA ', N'UBA  YAO 1 HIGHER PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (268, 4, 5, N'UBA YAOUNDE 1 EDUCATION PREPAID VISA ', N'UBA  YAO 1 EDU PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (269, 4, 5, N'UBA YAOUNDE 1 MEDICINE PREPAID VISA ', N'UBA  YAO 1 MED PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (270, 4, 5, N'UBA YAOUNDE 1 ART PREPAID VISA ', N'UBA  YAO 1 ART PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (271, 4, 5, N'UBA YAOUNDE 1 ENGINEERING PREPAID VISA ', N'UBA  YAO 1 ENG PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (272, 4, 5, N'UBA ZAMBIA USD PREPAID VISA ', N'UBA ZMB USD PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (273, 4, 5, N'UBA ZPAY PREPAID VISA ', N'UBA ZPAY PRE VI ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (274, 4, 5, N'UBA FRSC VISA FRSC DEBIT', N'UBA FRSC VI FRSC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (275, 4, 5, N'UBA FRSC VISA FRSC PREPAID', N'UBA FRSC VI FRSC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (276, 4, 5, N'UBA SMART MONEY VISA GHANA', N'UBA SMT VI GH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (277, 4, 5, N'UBA SMART MONEY VISA KENYA', N'UBA SMT VI KENYA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (278, 4, 5, N'UBA SMART MONEY VISA BURKINA FASO', N'UBA SMT VI BURK FASO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (279, 4, 5, N'UBA SMART MONEY VISA NIGERIA', N'UBA SMT VI NIGERIA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (280, 4, 5, N'UBA CREDIT VISA CLASSIC', N'UBA CR VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (281, 4, 5, N'UBA CREDIT VISA GOLD', N'UBA CR VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (282, 4, 5, N'UBA CREDIT VISA BUSINESS', N'UBA CR VI BUS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (283, 4, 5, N'UBA CREDIT VISA PLATINUM', N'UBA CR VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (284, 4, 5, N'UBA CREDIT VISA GOLD DEBIT RUBBY', N'UBA CR VI GL DB RUBBY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (285, 4, 5, N'UBA CREDIT VISA DOLLAR', N'UBA CR VI USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (286, 5, 1, N'ABBEY PVC WHITE', N'ABBEY PVC WHITE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (287, 5, 1, N'ABBEY VERVE MEAL', N'ABBEY VE MEAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (288, 5, 4, N'ABBEY VERVE ', N'ABBEY VE ABBEY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (289, 5, 4, N'ABBEY VERVE BAZE UNIVERSITY', N'ABBEY VE BAZE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (290, 5, 4, N'ABBEY VERVE WHITE', N'ABBEY VE WHITE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (291, 6, 4, N'ACCION VERVE ', N'ACCION VE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (292, 6, 4, N'ACCION VERVE WHITE PLASTIC', N'ACCION VE WHITE PLASTIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (293, 8, 4, N'ASO VERVE', N'ASO VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (294, 10, 4, N'DIAMOND VERVE ', N'DBN VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (295, 10, 5, N'DIAMOND VISA ELECTRON', N'DBN VI ELEC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (296, 10, 5, N'DIAMOND VISA SWAG', N'DBN VI SWAG')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (297, 10, 5, N'DIAMOND VISA CLASSIC GREY', N'DBN VI CL GREY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (298, 10, 5, N'DIAMOND VISA CLASSIC GREEN', N'DBN VI CL GREN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (299, 10, 5, N'DIAMOND VISA CLASSIC YELLOW', N'DBN VI CL YEL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (300, 10, 5, N'DIAMOND VISA GOLD NEW', N'DBN VI GL NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (301, 10, 5, N'DIAMOND VISA PLATINUM', N'DBN VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (302, 10, 5, N'DIAMOND VISA PSP', N'DBN VI PSP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (303, 10, 5, N'DIAMOND VISA ACTOR', N'DBN VI ACTOR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (304, 10, 5, N'DIAMOND VISA EXCL', N'DBN VI EXCL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (305, 10, 5, N'DIAMOND VISA BLACK', N'DBN VI BLACK')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (306, 10, 5, N'DIAMOND VISA SOLARIN TASUED', N'DBN VI SOLARIN TASUED')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (307, 10, 5, N'DIAMOND VISA SOLARIN TASUED EMBEDDED', N'DBN VI SOLARIN TASUED EMBEDDED')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (308, 10, 5, N'DIAMOND VISA ENCRUSTED', N'DBN VI ENCRUSTED')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (309, 10, 5, N'DIAMOND VISA FITNESS CLUB', N'DBN VI FTNESS CLUB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (310, 10, 5, N'DIAMOND VISA CONVENANT', N'DBN VI CONVENANT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (311, 10, 5, N'DIAMOND VISA ABRAHAM ADESANYA', N'DBN VI ABRAHAM ADESANYA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (312, 10, 5, N'DIAMOND VISA PLATINUM PRIVILEDGE', N'DBN VI PL PRIV')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (313, 10, 5, N'DIAMOND VISA CONVENANT PHOTO CARD', N'DBN VI CONVENANT PH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (314, 10, 5, N'DIAMOND VISA CTA', N'DBN VI CTA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (315, 10, 5, N'DIAMOND VISA CTA EMBEDDED', N'DBN VI CTA EMBEDDED')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (316, 10, 5, N'DIAMOND VISA CTB', N'DBN VI CTB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (317, 10, 5, N'DIAMOND VISA PLAT ELECTRON  USD', N'DBN VI PL ELEC USD 4443')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (318, 10, 5, N'DIAMOND VISA PLAT ELECTRON GBP', N'DBN VI PL ELEC GBP 4834')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (319, 10, 5, N'DIAMOND VISA PLAT ELECTRON ', N'DBN VI PL ELEC 4960')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (320, 11, 1, N'ECOBANK VERVE PRIORITY PASS', N'ECO VE P.P')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (321, 11, 2, N'ECOBANK MC GOLD DDA', N'ECO MC GL DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (322, 11, 2, N'ECOBANK MC DEBIT DDA', N'ECO MC DB DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (323, 11, 2, N'ECOBANK MC DEBIT DDA USD', N'ECO MC DB DDA USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (324, 11, 2, N'ECOBANK MC DEBIT DDA GBP', N'ECO MC DB DDA GBP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (325, 11, 2, N'ECOBANK MC DEBIT DDA EURO', N'ECO MC DB DDA EURO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (326, 11, 2, N'ECOBANK MC PLAT CREDIT', N'ECO MC PL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (327, 11, 2, N'ECOBANK MC GOLD CREDIT', N'ECO MC GL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (328, 11, 2, N'ECOBANK MC CORPORATE', N'ECO MC COR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (329, 11, 2, N'ECOBANK MC GOLD CREDIT EMBEDED', N'ECO MC GL CR EMBEDED')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (330, 11, 2, N'ECOBANK MC PLAT DDA', N'ECO MC PL DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (331, 11, 2, N'ECOBANK MC PLAT ( PAC )', N'ECO MC PL ( PAC )')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (332, 11, 4, N'ECOBANK VERVE DEBIT', N'ECO VE DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (333, 11, 4, N'ECOBANK VERVE WHITE CARD', N'ECO VE WHITE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (334, 11, 4, N'ECOBANK VERVE BLACK/PLATINIUM VERVE', N'ECO VE BLACK/PL VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (335, 11, 4, N'ECOBANK VERVE SAVERS CLUB PROMO', N'ECO VE SAVERS CLUB PROMO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (336, 12, 4, N'EKONDO VERVE ', N'EKONDO VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (337, 12, 4, N'EKONDO VERVE STERLING', N'EKONDO VE STERLING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (338, 13, 1, N'ENTERPRISE VERVE ELITE', N'ENT VE ELITE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (339, 13, 2, N'ENTERPRISE MC DEBIT ', N'ENT MC DB ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (340, 13, 2, N'ENTERPRISE MC PREPAID NAIRA', N'ENT MC PRE NAIRA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (341, 13, 2, N'ENTERPRISE MC PREPAID DOLLAR', N'ENT MC PRE USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (342, 13, 2, N'ENTERPRISE MC GOLD USD', N'ENT MC GL USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (343, 13, 2, N'ENTERPRISE MC DOLLAR DEBIT', N'ENT MC USD DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (344, 13, 2, N'ENTERPRISE MC DEBIT NEW ', N'ENT MC DB NEW ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (345, 13, 2, N'ENTERPRISE MC PLATINUM USD ', N'ENT MC PL USD ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (346, 14, 1, N'FCMB VE PRIORITY PASS', N'FCMB VE P.P')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (347, 14, 2, N'FCMB MC GOLD DEBIT', N'FCMB MC GL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (348, 14, 2, N'FCMB MC PLAT DEBIT', N'FCMB MC PL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (349, 14, 2, N'FCMB MC PREPAID DOLLAR', N'FCMB MC PRE USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (350, 14, 2, N'FCMB MC CLASSIC CREDIT', N'FCMB MC CL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (351, 14, 2, N'FCMB MC CLASSIC DEBIT', N'FCMB MC CL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (352, 14, 2, N'FCMB MC PLATINIUM CREDIT', N'FCMB MC PL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (353, 14, 2, N'FCMB MC PLATINIUM CREDIT NEW', N'FCMB MC PL CR NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (354, 14, 2, N'FCMB MC PLATINIUM CREDIT OLD', N'FCMB MC PL CR OLD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (355, 14, 2, N'FCMB MC GOLD CREDIT', N'FCMB MC GL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (356, 14, 2, N'FCMB MC GOLD DEBIT NEW', N'FCMB MC GL DB NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (357, 14, 2, N'FCMB MC PREPAID DOLLAR', N'FCMB MC PRE USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (358, 14, 2, N'FCMB MC PL DOLLAR NEW', N'FCMB MC PL USD NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (359, 14, 2, N'FCMB MC  DEBIT NEW', N'FCMB MC  DB NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (360, 14, 2, N'FCMB MC PLAT NEW', N'FCMB MC PL NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (361, 14, 2, N'FCMB MC INSTANT KIDS', N'FCMB MC INSTANT KIDS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (362, 14, 2, N'FCMB MC CHRISTIAN PILGRIM', N'FCMB MC XTIAN PIL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (363, 14, 2, N'FCMB MC MUSLIM PILGRIM', N'FCMB MC MUSLIM PIL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (364, 14, 2, N'FCMB MC TREVO', N'FCMB MC TREVO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (365, 14, 2, N'FCMB MC SPAR', N'FCMB MC SPAR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (366, 14, 2, N'FCMB MC WHITE', N'FCMB MC WHITE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (367, 14, 2, N'FCMB MC VIBE 1', N'FCMB MC VIBE 1')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (368, 14, 2, N'FCMB MC VIBE 2', N'FCMB MC VIBE 2')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (369, 14, 4, N'FCMB VERVE GOLD', N'FCMB VE GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (370, 14, 4, N'FCMB VERVE BLUE', N'FCMB VE BLUE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (371, 14, 4, N'FCMB VERVE BLUE PURPLE', N'FCMB VE BLUE PURPLE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (372, 14, 4, N'FCMB VERVE PREMIUM/PLATINIUM', N'FCMB VE PREM/PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (373, 14, 4, N'FCMB VERVE WHITE PLASTIC SPAR / PREPAID', N'FCMB VE WHITE PLASTIC SPAR / PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (374, 14, 4, N'FCMB VERVE ESO', N'FCMB VE ESO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (375, 14, 4, N'FCMB VERVE CDL', N'FCMB VE CDL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (376, 14, 4, N'FCMB VERVE KIDDIES', N'FCMB VE KIDDIES')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (377, 14, 4, N'FCMB VERVE PREPAID', N'FCMB VE PREPAID')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (378, 14, 5, N'FCMB VISA CLASSIC DEBIT', N'FCMB VI CL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (379, 14, 5, N'FCMB VISA CLASSIC DEBIT PURPLE', N'FCMB VI CL DB PURPLE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (380, 14, 5, N'FCMB VISA CLASSIC CREDIT', N'FCMB VI CL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (381, 14, 5, N'FCMB VISA CLASSIC CREDIT PURPLE', N'FCMB VI CL CR PURPLE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (382, 14, 5, N'FCMB VISA PLATINIUM', N'FCMB VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (383, 14, 5, N'FCMB VISA PLATINIUM/PREMIUM DEBIT', N'FCMB VI PL/PREM DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (384, 14, 5, N'FCMB VISA PLATINIUM/PREMIUM CREDIT', N'FCMB VI PL/PREM CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (385, 14, 5, N'FCMB VISA GOLD CREDIT', N'FCMB VI GL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (386, 14, 5, N'FCMB VISA GOLD CREDIT NEW/OLD', N'FCMB VI GL NEW/OLD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (387, 14, 5, N'FCMB VISA PREPAID', N'FCMB VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (388, 15, 1, N'FIDELITY VERVE PRIORITY PASS', N'FBP VE P.P')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (389, 15, 2, N'FIDELITY MC NAIRA', N'FBP MC NAIRA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (390, 15, 2, N'FIDELITY MC DOLLAR ', N'FBP MC USD ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (391, 15, 4, N'FIDELITY VERVE WHITE PLASTIC VERVE', N'FBP VE WHITE PLASTIC VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (392, 15, 4, N'FIDELITY VERVE PRIORITY TRAVEL', N'FBP VE PRIORITY TRAVEL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (393, 15, 4, N'FIDELITY VERVE PREPAID KONA', N'FBP VE PRE KONA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (394, 15, 4, N'FIDELITY VERVE DEBIT CPA', N'FBP VE DB CPA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (395, 15, 4, N'FIDELITY VERVE DEBIT KONA', N'FBP VE DB KONA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (396, 15, 4, N'FIDELITY VERVE FCE KATSINA', N'FBP VE FCE KATSINA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (397, 15, 4, N'FIDELITY VERVE CHECK OUT', N'FBP VE CHECK OUT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (398, 15, 4, N'FIDELITY VERVE THREE CROWN', N'FBP VE THREE CROWN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (399, 15, 5, N'FIDELITY VISA CLASSIC', N'FBP VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (400, 15, 5, N'FIDELITY VISA GOLD', N'FBP VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (401, 15, 5, N'FIDELITY VISA DEBIT', N'FBP VI DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (402, 15, 5, N'FIDELITY VISA PREPAID', N'FBP VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (403, 15, 5, N'FIDELITY VISA ONE WORLD', N'FBP VI ONE WORLD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (404, 15, 5, N'FIDELITY VISA GOLD ONE WORLD', N'FBP VI GL ONE WORLD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (405, 15, 5, N'FIDELITY VISA PLATINUM', N'FBP VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (406, 17, 2, N'FIRSTBANK MC DEBIT NEW', N'FBN MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (407, 17, 2, N'FIRSTBANK MC DEBIT CPC', N'FBN MC DB CPC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (408, 17, 2, N'FIRSTBANK MC CLASSIC CREDIT', N'FBN MC CL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (409, 17, 2, N'FIRSTBANK MC PLATINUM NEW', N'FBN MC PL NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (410, 17, 2, N'FIRSTBANK MC HARROW PARK', N'FBN MC HARROW PARK')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (411, 17, 2, N'FIRSTBANK GHANA MASTERCARD DEBIT', N'FBN GH MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (412, 17, 4, N'FIRSTBANK VERVE CLASSIC CPC', N'FBN VE CL CPC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (413, 17, 4, N'FIRSTBANK VERVE KAKAWA WHITE CARD', N'FBN VE KAKAWA WHITE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (414, 17, 4, N'FIRSTBANK VERVE PREPAID', N'FBN VE PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (415, 17, 4, N'FIRSTBANK VERVE FUTO WHITE PLASTIC', N'FBN VE FUTO WHITE PLASTIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (416, 17, 4, N'FIRSTBANK VERVE CLASSIC GEMALTO', N'FBN VE CL GEMALTO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (417, 17, 4, N'FIRSTBANK VERVE CLASSIC KONA', N'FBN VE CL KONA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (418, 17, 4, N'FIRSTBANK VERVE UNILAG', N'FBN VE UNILAG')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (419, 17, 4, N'FIRSTBANK VERVE WHITE CARD EMERALD AND OTHERS', N'FBN VE WHITE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (420, 17, 4, N'FIRSTBANK VERVE TRUST BOND', N'FBN VE TRUST BOND')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (421, 17, 4, N'FIRSTBANK VERVE UDENU', N'FBN VE UDENU')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (422, 17, 4, N'FIRSTBANK VERVE FIRSTMONIE', N'FBN VE FIRSTMONIE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (423, 17, 4, N'FIRSTBANK VERVE FORTE OIL', N'FBN VE FORTE OIL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (424, 17, 4, N'FIRSTBANK GHANA VERVE EASY CASH GHANA', N'FBN GH VE EASY CASH GH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (425, 17, 4, N'FIRSTBANK SMARTGOV VERVE SMART GOV', N'FBN SMARTGOV VE SMART GOV')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (426, 17, 4, N'FIRSTBANK GUINEA MAGSTRIPE', N'FBN GUI MAG')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (427, 17, 5, N'FIRSTBANK VISA CLASSIC', N'FBN VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (428, 17, 5, N'FIRSTBANK VISA GOLD', N'FBN VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (429, 17, 5, N'FIRSTBANK VISA PLATINUM', N'FBN VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (430, 17, 5, N'FIRSTBANK VISA PREPAID', N'FBN VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (431, 17, 5, N'FIRSTBANK VISA INFINITE', N'FBN VI INF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (432, 17, 5, N'FIRSTBANK VISA PRIVATE INFINITE', N'FBN VI PRIVATE INF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (433, 17, 5, N'FIRSTBANK VISA CORP BLUE USD', N'FBN VI CORP BLUE USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (434, 17, 5, N'FIRSTBANK VISA KANO BOARD', N'FBN VI KANO BOARD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (435, 17, 5, N'FIRSTBANK VISA CORP YELLOW', N'FBN VI CORP YELLOW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (436, 17, 5, N'FIRSTBANK VISA GOPILGRIMAGE', N'FBN VI GOPILGRIMAGE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (437, 17, 5, N'FIRSTBANK VISA HEMMINGSWAY', N'FBN VI HEMMINGSWAY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (438, 17, 5, N'FIRSTBANK VISA PINK', N'FBN VI PINK')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (439, 17, 5, N'FIRSTBANK VISA NERD', N'FBN VI NERD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (440, 17, 5, N'FIRSTBANK VISA DIVA', N'FBN VI DIVA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (441, 17, 5, N'FIRSTBANK VISA BUZZ', N'FBN VI BUZZ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (442, 17, 5, N'FIRSTBANK VISA BOSS', N'FBN VI BOSS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (443, 17, 5, N'FIRSTBANK VISA CLASSIC NCC', N'FBN VI CL NCC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (444, 17, 5, N'FIRSTBANK BAYELSA VISA', N'FBN BYSG VI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (445, 18, 2, N'GTBRWA MC DEBIT', N'GTBRWA MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (446, 18, 2, N'GTBGAM MC PREPAID', N'GTBRWA MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (447, 18, 2, N'GTBGAM MC PLATINUM', N'GTBRWA MC PLAT ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (448, 18, 2, N'GTBGAM MC PLATINUM DEBIT', N'GTBRWA MC PLAT DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (449, 18, 2, N'GTBGAM MC CORPORATE CREDIT', N'GTBRWA MC CORP CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (450, 18, 5, N'GTBGAM VISA DEBIT', N'GTBGAM VI DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (451, 21, 2, N'GTBUG MC DEBIT', N'GTBUG MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (452, 21, 2, N'GTBUG MC DEBIT DOLLAR', N'GTBUG MC DB USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (453, 21, 2, N'GTBUG MC PREPAID', N'GTBUG MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (454, 21, 2, N'GTBUG MC PLATINUM', N'GTBUG MC PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (455, 22, 4, N'HASAL VERVE', N'HASAL VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (456, 20, 2, N'GTBGH MC DEBIT', N'GTBGH MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (457, 20, 2, N'GTBGH MC CREA8', N'GTBGH MC CREA8')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (458, 20, 2, N'GTBGH MC PREPAID', N'GTBGH MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (459, 20, 5, N'GTBGH VISA ELECTRON INTERNATIONALI', N'GTBGH VI ELECC I')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (460, 20, 5, N'GTBGH VISA ELECTRON DEBIT', N'GTBGH VI ELECT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (461, 20, 5, N'GTBGH VISA PREPAID', N'GTBGH VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (462, 20, 5, N'GTBGH VISA GOLD', N'GTBGH VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (463, 23, 2, N'HERITAGE MC DEBIT', N'HERITAGE MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (464, 23, 2, N'HERITAGE MC DEBIT NEW', N'HERITAGE MC DB NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (465, 23, 2, N'HERITAGE MC PREPAID', N'HERITAGE MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (466, 23, 2, N'HERITAGE MC SILVER DOLLAR', N'HERITAGE MC SILVER USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (467, 23, 2, N'HERITAGE MC PREPAID DOLLAR', N'HERITAGE MC PRE USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (468, 23, 2, N'HERITAGE MC STANDARD CREDIT', N'HERITAGE MC STANDARD CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (469, 23, 2, N'HERITAGE MC GOLD CREDIT', N'HERITAGE MC GL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (470, 23, 2, N'HERITAGE MC PLATINUM CREDIT', N'HERITAGE MC PL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (471, 23, 2, N'HERITAGE MC WHITE PLASTIC', N'HERITAGE MC WHITE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (472, 23, 4, N'HERITAGE VERVE', N'HERITAGE VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (473, 23, 4, N'HERITAGE VERVE EMBEDDED', N'HERITAGE VE EMBEDDED')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (474, 23, 4, N'HERITAGE VERVE WHITE PLASTICS/PRINTED', N'HERITAGE VE WHITE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (475, 23, 4, N'HERITAGE VERVE BUD DUDE', N'HERITAGE VE BDUD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (476, 23, 4, N'HERITAGE VERVE SPECIAL CARD', N'HERITAGE VE SPECIAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (477, 23, 4, N'HERITAGE VERVE BUD DIVA', N'HERITAGE VE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (478, 24, 4, N'IKEDC VERVE', N'IKEDC VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (479, 25, 4, N'JAIZ VERVE', N'JAIZ VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (480, 26, 4, N'KEYSTONE VERVE CLASSIC', N'KBL VE CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (481, 26, 4, N'KEYSTONE VERVE GRASSROOT', N'KBL VE GRASSROOT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (482, 26, 4, N'KEYSTONE VERVE FORTIS', N'KBL VE FORTIS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (483, 26, 4, N'KEYSTONE VERVE CCL', N'KBL VE CCL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (484, 26, 4, N'KEYSTONE VERVE APEKS', N'KBL VE APEKS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (485, 26, 4, N'KEYSTONE VERVE WHITE PLASTICS', N'KBL VE WHITE PLASTICS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (486, 26, 4, N'KEYSTONE VERVE 5 LINX', N'KBL VE 5 LINX')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (487, 26, 4, N'KEYSTONE VERVE GAMBIA MAGSTRIPE', N'KBL VE GAM MAG')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (488, 26, 4, N'KEYSTONE VERVE GAMBIA', N'KBL VE GAM ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (489, 26, 4, N'KEYSTONE VERVE SIERRA LEONE', N'KBL VE SL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (490, 26, 4, N'KEYSTONE VERVE IG GLOBAL', N'KBL VE IG GLOBAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (491, 26, 5, N'KEYSTONE VISA GOLD', N'KBL VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (492, 26, 5, N'KEYSTONE VISA PLATINUM', N'KBL VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (493, 26, 5, N'KEYSTONE VISA DEBIT', N'KBL VI DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (494, 26, 5, N'KEYSTONE VISA CLASSIC', N'KBL VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (495, 26, 5, N'KEYSTONE VISA PREPAID', N'KBL VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (496, 26, 5, N'KEYSTONE VISA VIP EXP', N'KBL VI VIP EXP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (497, 27, 4, N'LASRRA VERVE', N'LASRRA VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (498, 28, 3, N'LASU PREPRINTED STUDENT', N'LASU  STUDENT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (499, 28, 3, N'LASU WHITE STAFF', N'LASU WHITE STAFF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (500, 29, 4, N'LAVENDER VERVE', N'LAVENDER VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (501, 30, 4, N'MAINSTREAM VERVE', N'MAINSTREAM VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (502, 31, 4, N'PSH VERVE', N'PSH VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (503, 32, 4, N'RESORT VERVE', N'RESORT VE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (504, 32, 4, N'RESORT VERVE AGENT', N'RESORT VE AGENT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (505, 33, 5, N'ROKEL VISA DEBIT', N'ROKEL VI DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (506, 33, 5, N'ROKEL VISA DEBIT KONA DDA', N'ROKEL VI DB KONA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (507, 33, 5, N'ROKEL VISA PREPAID', N'ROKEL VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (508, 37, 5, N'SKYE GAMBIA VISA GOLD', N'SBP GAM VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (509, 37, 5, N'SKYE GAMBIA VISA CLASSIC', N'SBP GAM VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (510, 38, 5, N'SKYE GUINEA VISA GOLD', N'SBP GUINEA VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (511, 38, 5, N'SKYE GUINEA VISA CLASSIC', N'SBP GUINEA VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (512, 38, 5, N'SKYE GUINEA VISA GOLD NEW', N'SBP GUINEA VI GL NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (513, 39, 5, N'UBAG VISA PREPAID', N'UBAG VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (514, 39, 5, N'UBAG VISA DEBIT', N'UBAG VI DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (515, 39, 5, N'UBAG VISA GOLD', N'UBAG VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (516, 39, 5, N'UBAG VISA CLASSIC', N'UBAG VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (517, 39, 5, N'UBAG VISA PLATINUM', N'UBAG VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (518, 40, 4, N'UNILORIN VERVE MIFARE', N'UNILORIN VE MIFARE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (519, 40, 4, N'UNILORIN VERVE NON MIFARE', N'UNILORIN  VE NON MIFARE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (520, 40, 4, N'UNILORIN VERVE MICROFINANCE', N'UNILORIN  VE MFB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (521, 40, 4, N'UNILORIN VERVE PREPRINTED', N'UNILORIN  VE PREPRINTED')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (522, 42, 2, N'UNITY MC PREPAID', N'UNITY MC PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (523, 42, 2, N'UNITY MC HAJJ', N'UNITY MC HAJJ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (524, 42, 2, N'UNITY MC DEBIT', N'UNITY MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (525, 42, 4, N'UNITY VERVE DEBIT', N'UNITY VE DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (526, 42, 4, N'UNITY VERVE PREPAID BOA', N'UNITY VE PRE BOA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (527, 44, 4, N'MAINSTREET VERVE', N'AFN VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (528, 44, 5, N'MAINSTREET VISA BLUE PREPAID', N'AFN VI BLUE PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (529, 44, 5, N'MAINSTREET VISA CLASSIC DEBIT', N'AFN VI CL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (530, 34, 1, N'SBN PRIORITY PASS', N'SBN P.P')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (531, 34, 3, N'STERLING FINANCIAL INCLUSION', N'SBN FI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (532, 34, 4, N'STERLING VERVE DEBIT', N'SBN VE DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (533, 34, 4, N'STERLING VERVE SAFE TRUST', N'SBN VE SAFE TRUST')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (534, 34, 4, N'STERLING VERVE NPF DEBIT', N'SBN VE NPF DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (535, 34, 4, N'STERLING VERVE NPF CREDIT', N'SBN VE NPF CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (536, 34, 4, N'STERLING VERVE MUTUAL BENEFIT', N'SBN VE MUTUAL BENEFIT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (537, 34, 4, N'STERLING VERVE PREPAID', N'SBN VE PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (538, 34, 4, N'STERLING VERVE WHITE PLASTICS', N'SBN VE WHITE PLASTICS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (539, 34, 4, N'STERLING VERVE FINA TRUST', N'SBN VE FINA TRUST')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (540, 34, 4, N'STERLING VERVE CREDIT', N'SBN VE CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (541, 34, 4, N'STERLING VERVE APAPA LGA', N'SBN VE APAPA LGA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (542, 34, 4, N'STERLING VERVE PROGRESSIVE LINK', N'SBN VE PROGRESSIVE LINK')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (543, 34, 4, N'STERLING VERVE GUFAX', N'SBN VE GUFAX')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (544, 34, 4, N'STERLING VERVE AFEMAI', N'SBN VE AFEMAI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (545, 34, 4, N'STERLING VERVE ECHO', N'SBN VE ECHO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (546, 34, 4, N'STERLING VERVE NIFI', N'SBN VE NIFI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (547, 34, 4, N'STERLING VERVE ARSENAL', N'SBN VE ARSENAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (548, 34, 4, N'STERLING VERVE RIC', N'SBN VE RIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (549, 34, 4, N'STERLING VERVE PARALLAX', N'SBN VE PARALLAX')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (550, 34, 4, N'STERLING VERVE CALM', N'SBN VE CALM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (551, 34, 4, N'STERLING VERVE CONPRO', N'SBN VE CONPRO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (552, 34, 4, N'STERLING VERVE OHAFIA', N'SBN VE OHAFIA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (553, 34, 4, N'STERLING VERVE PRINCE TEJUOSHO', N'SBN VE TEJUOSHO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (554, 34, 4, N'STERLING VERVE ACE', N'SBN VE ACE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (555, 34, 4, N'STERLING VERVE UDA', N'SBN VE UDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (556, 34, 4, N'STERLING VERVE KCMB', N'SBN VE KCMB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (557, 34, 4, N'STERLING VERVE CONSUMER', N'SBN VE CONSUMER')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (558, 34, 4, N'STERLING VERVE VISA', N'SBN VE VI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (559, 34, 4, N'STERLING VERVE AUCHI', N'SBN VE AUCHI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (560, 34, 4, N'STERLING VERVE SOVEREIGN', N'SBN VE SOVEREIGN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (561, 34, 4, N'STERLING VERVE CALABAR', N'SBN VE CAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (562, 34, 4, N'STERLING VERVE FIRST ROYAL', N'SBN VE FIRST ROYAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (563, 34, 4, N'STERLING VERVE CEDAR', N'SBN VE CEDAR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (564, 34, 4, N'STERLING VERVE BOKKOS', N'SBN VE BOKKOS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (565, 34, 4, N'STERLING VERVE KADPOLY', N'SBN VE KADPOLY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (566, 34, 4, N'STERLING VERVE GARKI', N'SBN VE GARKI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (567, 34, 4, N'STERLING VERVE QUICKING', N'SBN VE QUICKING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (568, 34, 4, N'STERLING VERVE AL HAYAT', N'SBN VE AL HAYAT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (569, 34, 4, N'STERLING VERVE PAYCOM', N'SBN VE PAYCOM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (570, 34, 4, N'STERLING VERVE MARITIME', N'SBN VE MARITIME')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (571, 34, 4, N'STERLING VERVE ABU', N'SBN VE ABU')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (572, 34, 4, N'STERLING VERVE IMODI IMOSAN', N'SBN VE IMODI IMOSAN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (573, 34, 4, N'STERLING VERVE IMOWO', N'SBN VE IMOWO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (574, 34, 4, N'STERLING VERVE ESO.E', N'SBN VE ESO.E')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (575, 34, 4, N'STERLING VERVE EMPIRE', N'SBN VE EMPIRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (576, 34, 4, N'STERLING VERVE FIDFUND', N'SBN VE FIDFUND')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (577, 34, 4, N'STERLING VERVE APPLE', N'SBN VE APPLE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (578, 34, 4, N'STERLING VERVE FINANCE NIFI', N'SBN VE FINANCE NIFI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (579, 34, 4, N'STERLING VERVE HEADWAY', N'SBN VE HEADWAY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (580, 34, 4, N'STERLING VERVE APPZONE', N'SBN VE APPZONE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (581, 34, 4, N'STERLING VERVE ALEKUN', N'SBN VE ALEKUN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (582, 34, 4, N'STERLING VERVE TCF', N'SBN VE TCF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (583, 34, 4, N'STERLING VERVE ESADO', N'SBN VE ESADO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (584, 34, 4, N'STERLING VERVE DGTSAYANGA', N'SBN VE DGTSAYANGA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (585, 34, 4, N'STERLING VERVE METRO', N'SBN VE METRO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (586, 34, 4, N'SBN VE REFUGE HOME & SAVINGS', N'SBN VE REFUGE HOME & SAVINGS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (587, 34, 4, N'SBN VE GATEWAY', N'SBN VE GATEWAY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (588, 34, 4, N'SBN VE FIMS WHITE PLASTIC', N'SBN VE FIMS WHITE PLASTIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (589, 34, 4, N'SBN VE GARU WHITE PLASTIC', N'SBN VE GARU WHITE PLASTIC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (590, 34, 4, N'SBN VE OOU', N'SBN VE OOU')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (591, 34, 4, N'SBN VE IRO NPF', N'SBN VE IRO NPF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (592, 34, 4, N'SBN VE BC KASH', N'SBN VE BC KASH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (593, 34, 4, N'SBN VE CHASE', N'SBN VE CHASE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (594, 34, 4, N'SBN VE ROYAL EXCHANGE', N'SBN VE ROYAL EXCHANGE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (595, 34, 5, N'STERLING VISA CLASSIC DEBIT', N'SBN VI CL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (596, 34, 5, N'STERLING VISA GOLD', N'SBN VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (597, 34, 5, N'STERLING VISA GOLD DDA', N'SBN VI GL DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (598, 34, 5, N'STERLING VISA ARSENAL', N'SBN VI ARSENAL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (599, 34, 5, N'STERLING VISA CLASSIC CREDIT', N'SBN VI CL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (600, 34, 5, N'STERLING VISA PREPAID NAIRA', N'SBN VI PRE NAIRA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (601, 34, 5, N'STERLING VISA PREPAID DOLLAR', N'SBN VI PRE USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (602, 34, 5, N'STERLING VISA WHITE PICTURE VISA', N'SBN VI WHITE PICTURE VI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (603, 34, 5, N'STERLING VISA PLATINUM', N'SBN VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (604, 34, 5, N'STERLING VISA PLATINUM DDA', N'SBN VI PL DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (605, 34, 5, N'STERLING VISA PREPAID HAJJ', N'SBN VI PRE HAJJ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (606, 34, 5, N'STERLING VISA NIB DEBIT', N'SBN VI NIB DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (607, 34, 5, N'STERLING VISA PLTINUM DOLLAR', N'SBN VI PL USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (608, 35, 1, N'SKYE VISA PRIORITY', N'SBP VI PRIORITY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (609, 35, 2, N'SKYE MC BLUE', N'SBP MC BLUE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (610, 35, 2, N'SKYE MC PENYA', N'SBP MC PENYA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (611, 35, 2, N'SKYE MC BLACK', N'SBP MC BLACK')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (612, 35, 2, N'SKYE MC DEBIT', N'SBP MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (613, 35, 2, N'SKYE MC NURTW', N'SBP MC NURTW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (614, 35, 2, N'SBP MC PAGE', N'SBP MC PAGE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (615, 35, 2, N'SBP MC PLATINUM DEBIT', N'SBP MC PL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (616, 35, 2, N'SBP MC PLATINUM CREDIT', N'SBP MC PL CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (617, 35, 4, N'SKYE VERVE explorer', N'SBP VE explorer')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (618, 35, 4, N'SKYE VERVE LASG OTHER PRINTED', N'SBP VE LASG OTHER')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (619, 35, 4, N'SKYE VERVE LASU PRINTED', N'SBP VE LASU ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (620, 35, 4, N'SKYE VERVE PLEDGE', N'SBP VE PLEDGE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (621, 35, 4, N'SKYE VERVE READY CASH', N'SBP VE READY CASH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (622, 35, 4, N'SKYE VERVE', N'SBP VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (623, 35, 4, N'SKYE VERVE PRIORITY', N'SBP VE PRIORITY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (624, 35, 4, N'SKYE VERVE OOU', N'SBP VE OOU')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (625, 35, 4, N'SKYE VERVE WEBLINK', N'SBP VE WEBLINK')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (626, 35, 4, N'SKYE VERVE FLITCASH', N'SBP VE FLITCASH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (627, 35, 4, N'SKYE VERVE PRIORITY TRAVEL', N'SBP VE PRIORITY TRAVEL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (628, 35, 4, N'SKYE VERVE PRIORITY TRAVEL TAG', N'SBP VE PRIORITY TRAVEL TAG')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (629, 35, 5, N'SKYE VISA PREPAID', N'SBP VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (630, 35, 5, N'SKYE VISA PREPAID DEBIT', N'SBP VI PRE DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (631, 35, 5, N'SKYE VISA GOLD PREMIUM', N'SBP VI GL PREM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (632, 35, 5, N'SKYE VISA GOLD', N'SBP VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (633, 35, 5, N'SKYE VISA GOLD DEBIT', N'SBP VI GL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (634, 35, 5, N'SKYE VISA GOLD NGN/PREMIUM', N'SBP VI GL NGN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (635, 35, 5, N'SKYE VISA GOLD DOLLAR/CREDIT', N'SBP VI GL USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (636, 35, 5, N'SKYE VISA CORPORATE', N'SBP VI COR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (637, 35, 5, N'SKYE VISA CLASSIC', N'SBP VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (638, 35, 5, N'SKYE VISA DEBIT', N'SBP VI DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (639, 35, 5, N'SKYE VISA PLATINUM', N'SBP VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (640, 35, 5, N'SKYE VISA MALL OF AFRICA', N'SBP VI MAF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (641, 35, 5, N'SKYE VISA DEBIT REGULAR', N'SBP VI DB REGULAR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (642, 35, 5, N'SKYE VISA CLASS DB NAIRA', N'SBP VI CLASS DB NAIRA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (643, 35, 5, N'SKYE VISA NTDC', N'SBP VI NTDC')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (644, 35, 5, N'SKYE VISA RAINBOW', N'SBP VI RAINBOW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (645, 35, 5, N'SKYE VISA CAMPUS', N'SBP VI CAMPUS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (646, 35, 5, N'SKYE VISA WORKPLACE', N'SBP VI WORKPLACE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (647, 35, 5, N'SKYE VISA CLASSIC REGULAR NEW', N'SBP VI CL REGULAR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (648, 35, 5, N'SKYE VISA KEGOW', N'SBP VI KEGOW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (649, 36, 2, N'SIBN MASTERCARD DEBIT', N'SIBN MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (650, 36, 2, N'SIBN MASTERCARD DEBIT DOLLAR', N'SIBN MC DB USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (651, 36, 2, N'SIBN MASTERCARD DEBIT NIFI', N'SIBN MC DB NIFI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (652, 36, 2, N'SIBN MASTERCARD PLATINUM', N'SIBN MC  PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (653, 36, 2, N'SIBN MASTERCARD WORLD', N'SIBN MC  WORLD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (654, 36, 2, N'SIBN MASTERCARD CHIKUM', N'SIBN MC  CHIKUM')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (655, 36, 2, N'SIBN MASTERCARD DHT', N'SIBN MC  DHT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (656, 36, 2, N'SIBN MASTERCARD SKYOBUS', N'SIBN MC  SKYOBUS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (657, 36, 2, N'SIBN MASTERCARD PREPAID', N'SIBN MC  PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (658, 36, 2, N'SIBN MASTERCARD SHARIA', N'SIBN MC  SHARIA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (659, 36, 2, N'SIBN MASTERCARD SILVER', N'SIBN MC  SIL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (660, 36, 2, N'SIBN MASTERCARD GOLD', N'SIBN MC  GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (661, 36, 2, N'SIBN MASTERCARD PLATINUM DDA', N'SIBN MC  PL DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (662, 36, 2, N'SIBN MASTERCARD VFD', N'SIBN MC  VFD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (663, 36, 4, N'SIBN VERVE PREPAID EXPENSE', N'SIBN VE PRE EXPENSE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (664, 36, 4, N'SIBN VERVE MICROLEVERAGE', N'SIBN VE MICROLEVERAGE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (665, 36, 4, N'SIBN VERVE HAVESTER ', N'SIBN VE HAVESTER ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (666, 36, 4, N'SIBN VERVE PREPAID MTN', N'SIBN VE PRE MTN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (667, 36, 4, N'SIBN VERVE WHITE VERVE', N'SIBN VE WHITE VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (668, 36, 4, N'SIBN VERVE DEBIT', N'SIBN VE DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (669, 36, 4, N'SIBN VERVE ADVANS', N'SIBN VE ADVANS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (670, 36, 4, N'SIBN VERVE EMERALDS', N'SIBN VE EMERALDS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (671, 36, 4, N'SIBN VERVE GIFT', N'SIBN VE GIFT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (672, 36, 4, N'SIBN VERVE AGO SASA', N'SIBN VE AGO SASA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (673, 36, 4, N'SIBN VERVE SEAP', N'SIBN VE SEAP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (674, 36, 4, N'SIBN VERVE BARAKKAK', N'SIBN VE BARAKAH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (675, 36, 4, N'SIBN VERVE MUTUAL TRUST', N'SIBN VE MUTUAL TRUST')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (676, 36, 4, N'SIBN VERVE AZABE', N'SIBN VE AZABE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (677, 36, 4, N'SIBN VERVE WHITE CARD NEW', N'SIBN VE WHITE CARD NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (678, 36, 4, N'SIBN VERVE EXCELLENCE', N'SIBN VE EXCELLENCE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (679, 36, 4, N'SIBN VERVE APEKS', N'SIBN VE APEKS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (680, 36, 4, N'SIBN VERVE LOVONUS', N'SIBN VE LOVONUS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (681, 36, 4, N'SIBN VERVE MAUTECH', N'SIBN VE MAUTECH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (682, 36, 4, N'SIBN VERVE PURPLE MONEY', N'SIBN VE PURPLE MONEY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (683, 36, 4, N'SIBN VERVE GIANT STRIDE', N'SIBN VE GIANT STRIDE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (684, 36, 5, N'SIBN VISA GOLD', N'SIBN VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (685, 36, 5, N'SIBN VISA GOLD CREDIT DDA', N'SIBN VI GL CR DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (686, 36, 5, N'SIBN VISA PREPAID', N'SIBN VI PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (687, 36, 5, N'SIBN VISA NIFE', N'SIBN VI NIFE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (688, 36, 5, N'SIBN VISA INFINITE', N'SIBN VI INF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (689, 36, 5, N'SIBN VISA CORPORATE', N'SIBN VI COR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (690, 36, 5, N'SIBN VISA PLATINUM NAIRA', N'SIBN VI PL NAIRA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (691, 36, 5, N'SIBN VISA PLATINUM USD ', N'SIBN VI PL USD ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (692, 36, 5, N'SIBN VISA PLATINUM CREDIT DDA', N'SIBN VI PL CR DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (693, 36, 5, N'SIBN VISA SILVER CREDIT DDA', N'SIBN VI SILVER CR DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (694, 36, 5, N'SIBN VISA CORPORATE USD', N'SIBN VI COR USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (695, 36, 5, N'SIBN VISA INFINITE USD', N'SIBN VI INF USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (696, 36, 5, N'SIBN VISA GOLD USD', N'SIBN VI GL USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (697, 36, 5, N'SIBN VISA PLATINUM BLUE CREDIT', N'SIBN VI PL BLUE CR')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (698, 36, 5, N'SIBN VISA ICAN GOLD', N'SIBN VI ICAN GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (699, 36, 5, N'SIBN VISA GIFT', N'SIBN VI GIFT ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (700, 36, 5, N'SIBN VISA DHT', N'SIBN VI DHT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (701, 36, 5, N'SIBN VISA SKOBUS', N'SIBN VI SKOBUS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (702, 36, 5, N'SIBN VI STNGASTN', N'SIBN VI STNGASTN')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (703, 41, 2, N'UNION MC DEBIT', N'UNION MC DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (704, 41, 2, N'UNION MC CORPORATE', N'UNION MC CORP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (705, 41, 2, N'UNION MC PERSONAL BANKING', N'UNION MC PERSONAL BANKING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (706, 41, 2, N'UNION MC PLATINUM ELITE BANKING', N'UNION MC PL ELITE BANKING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (707, 41, 2, N'UNION MC PLATINUM ROYALTY', N'UNION MC PL ROYALTY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (708, 41, 4, N'UNION VERVE', N'UNION VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (709, 41, 4, N'UNION VERVE NEW', N'UNION VE NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (710, 41, 4, N'UNION VERVE  PERSONAL BANKING', N'UNION VE PERSONAL BANKING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (711, 41, 4, N'UNION VERVE  WHITE CARD', N'UNION VE WHITE CARD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (712, 41, 5, N'UNION VISA ROYALTY BANKING', N'UNION VI ROYALTY BANKING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (713, 41, 5, N'UNION VISA PERSONAL BANKING', N'UNION VI PERSONAL BANKING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (714, 41, 5, N'UNION VISA ELITE BANKING', N'UNION VI ELITE BANKING')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (715, 43, 4, N'ZENN VERVE', N'ZENN VE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (716, 43, 4, N'ZENN VERVE MCHIP', N'ZENN VE MCHIP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (717, 43, 4, N'ZENN VERVE WHITE STANFORD', N'ZENN VE WHITE STANFORD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (718, 43, 4, N'ZENN VERVE WHITE', N'ZENN VE WHITE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (719, 43, 5, N'ZENN VISA DEBIT DDA', N'ZENN VI DB DDA')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (720, 43, 5, N'ZENN VISA DEBIT DDA OLD', N'ZENN VI DB DDA OLD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (721, 43, 5, N'ZENN VISA PREPAID USD', N'ZENN VI PRE USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (722, 43, 5, N'ZENN VISA PREPAID EURO', N'ZENN VI PRE EURO')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (723, 43, 5, N'ZENN VISA PREPAID GBP', N'ZENN VI PRE GBP')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (724, 43, 5, N'ZENN VISA CLASSIC', N'ZENN VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (725, 43, 5, N'ZENN VISA CLASSIC NEW', N'ZENN VI CL NEW')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (726, 43, 5, N'ZENN VISA PLATINUM', N'ZENN VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (727, 43, 5, N'ZENN VISA INFINITE', N'ZENN VI INF')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (728, 43, 5, N'ZENN VISA GOLD', N'ZENN VI GL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (729, 43, 5, N'ZENN VISA IMT', N'ZENN VI IMT')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (730, 43, 5, N'ZENN VISA OKO POLY', N'ZENN VI OKO POLY')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (731, 43, 5, N'ZENN VISA GAMBIA DEBIT', N'ZENN VI GAM DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (732, 43, 5, N'ZENN VISA GAMBIA PREPAID', N'ZENN VI GAM PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (733, 43, 5, N'ZENN VISA SIERRA LEONE DEBIT', N'ZENN VI SL DB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (734, 43, 5, N'ZENN VISA SIERRA LEONE PREPAID', N'ZENN VI SL PRE')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (735, 43, 5, N'ZENG VISA PREPAID ', N'ZENG VI PRE ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (736, 43, 5, N'ZENG VISA CLASSIC', N'ZENG VI CL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (737, 43, 5, N'ZENG VISA CLASSIC ', N'ZENG VI CL ')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (738, 43, 5, N'ZENG VISA PLATINUM', N'ZENG VI PL')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (739, 43, 5, N'ZENG VISA TRAVEL WALLET', N'ZENG VI TRAVEL WALLET')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (740, 43, 5, N'ZENG VISA UNIVERSITY OF GHANA', N'ZENG VI UNIV OF GH')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (741, 43, 5, N'ZENG VISA KUDI', N'ZENG VI KUDI')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (742, 43, 5, N'ZENG VISA SHELL EAZY PASS VIVO', N'ZENG VI SHELL EAZY PASS')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (743, 1, 2, N'GTB MC PRIORITY PASS USD', N'GTB MC PRIORITY PASS USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (744, 1, 2, N'GTB MC PRIORITY PASS USD', N'GTB MC PRIORITY PASS USD')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (745, 1, 2, N'GTB MC PRIORITY PASS BB', N'GTB MC PRIORITY PASS BB')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (746, 1, 2, N'GTB MC PRIORITY PASS B', N'GTB MC PRIORITY PASS B')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (747, 1, 2, N'ppp', N'ppp')
GO
INSERT [dbo].[SidProduct] ([Id], [SidClientId], [SidCardTypeId], [Name], [ShortCode]) VALUES (748, 1, 2, N'GTB MC SKS 2', N'GTB MC SKS 2')
GO
SET IDENTITY_INSERT [dbo].[SidProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[SidSector] ON 

GO
INSERT [dbo].[SidSector] ([Id], [Name]) VALUES (1, N'Bank')
GO
INSERT [dbo].[SidSector] ([Id], [Name]) VALUES (2, N'Public Sector')
GO
INSERT [dbo].[SidSector] ([Id], [Name]) VALUES (3, N'Telecommunication')
GO
INSERT [dbo].[SidSector] ([Id], [Name]) VALUES (4, N'Special Projects')
GO
SET IDENTITY_INSERT [dbo].[SidSector] OFF
GO
SET IDENTITY_INSERT [dbo].[SidVariant] ON 

GO
INSERT [dbo].[SidVariant] ([Id], [Name], [ShortCode]) VALUES (1, N'Naira', N'NGN')
GO
INSERT [dbo].[SidVariant] ([Id], [Name], [ShortCode]) VALUES (2, N'Dollar', N'USN')
GO
INSERT [dbo].[SidVariant] ([Id], [Name], [ShortCode]) VALUES (3, N'---', N'---')
GO
SET IDENTITY_INSERT [dbo].[SidVariant] OFF
GO
SET IDENTITY_INSERT [dbo].[Vendor] ON 

GO
INSERT [dbo].[Vendor] ([Id], [Name]) VALUES (1, N'SCM')
GO
INSERT [dbo].[Vendor] ([Id], [Name]) VALUES (2, N'Others')
GO
SET IDENTITY_INSERT [dbo].[Vendor] OFF
GO
SET IDENTITY_INSERT [dbo].[WasteErrorSource] ON 

GO
INSERT [dbo].[WasteErrorSource] ([Id], [Name]) VALUES (1, N'Partly Perso Error')
GO
INSERT [dbo].[WasteErrorSource] ([Id], [Name]) VALUES (2, N'Human Error')
GO
INSERT [dbo].[WasteErrorSource] ([Id], [Name]) VALUES (3, N'Machine Error')
GO
INSERT [dbo].[WasteErrorSource] ([Id], [Name]) VALUES (4, N'Manufacturer Error')
GO
SET IDENTITY_INSERT [dbo].[WasteErrorSource] OFF
GO
SET IDENTITY_INSERT [dbo].[WasteErrorSourceCode] ON 

GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (1, 1, N'Card Status')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (2, 1, N'Perso TimeOut')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (3, 1, N'Partly Perso')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (4, 1, N'Others')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (5, 2, N'Client Error')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (6, 2, N'Duplicate Card')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (7, 2, N'Printing Error')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (8, 2, N'Wrong Issuance')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (9, 2, N'Wrongly Persoed')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (10, 2, N'Wrong Data')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (11, 2, N'Card Mix Up')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (12, 2, N'Human')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (13, 2, N'Others')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (14, 3, N'CVV Defect')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (15, 3, N'Duplicate Card')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (16, 3, N'Machine Defect')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (17, 3, N'Mechanical')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (18, 3, N'Perso Overlapping')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (19, 3, N'Print Defect')
GO
INSERT [dbo].[WasteErrorSourceCode] ([Id], [WasteErrorSourceId], [Name]) VALUES (20, 3, N'Setting Adjustment')
GO
SET IDENTITY_INSERT [dbo].[WasteErrorSourceCode] OFF
GO
SET IDENTITY_INSERT [dbo].[WasteType] ON 

GO
INSERT [dbo].[WasteType] ([Id], [Name]) VALUES (1, N'Card')
GO
INSERT [dbo].[WasteType] ([Id], [Name]) VALUES (2, N'Stationary')
GO
SET IDENTITY_INSERT [dbo].[WasteType] OFF
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
ALTER TABLE [dbo].[CardDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDelivery_dbo.AspNetUsers_ConfirmedById] FOREIGN KEY([ConfirmedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardDelivery] CHECK CONSTRAINT [FK_dbo.CardDelivery_dbo.AspNetUsers_ConfirmedById]
GO
ALTER TABLE [dbo].[CardDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDelivery_dbo.AspNetUsers_DeliveredById] FOREIGN KEY([DeliveredById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardDelivery] CHECK CONSTRAINT [FK_dbo.CardDelivery_dbo.AspNetUsers_DeliveredById]
GO
ALTER TABLE [dbo].[CardDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDelivery_dbo.Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[CardDelivery] CHECK CONSTRAINT [FK_dbo.CardDelivery_dbo.Department_DepartmentId]
GO
ALTER TABLE [dbo].[CardDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDelivery_dbo.Department_TargetDepartmentId] FOREIGN KEY([TargetDepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[CardDelivery] CHECK CONSTRAINT [FK_dbo.CardDelivery_dbo.Department_TargetDepartmentId]
GO
ALTER TABLE [dbo].[CardDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDelivery_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
GO
ALTER TABLE [dbo].[CardDelivery] CHECK CONSTRAINT [FK_dbo.CardDelivery_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[CardDeliveryLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDeliveryLog_dbo.AspNetUsers_ConfirmedById] FOREIGN KEY([ConfirmedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardDeliveryLog] CHECK CONSTRAINT [FK_dbo.CardDeliveryLog_dbo.AspNetUsers_ConfirmedById]
GO
ALTER TABLE [dbo].[CardDeliveryLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDeliveryLog_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardDeliveryLog] CHECK CONSTRAINT [FK_dbo.CardDeliveryLog_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[CardDeliveryLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDeliveryLog_dbo.CardDelivery_CardDeliveryId] FOREIGN KEY([CardDeliveryId])
REFERENCES [dbo].[CardDelivery] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardDeliveryLog] CHECK CONSTRAINT [FK_dbo.CardDeliveryLog_dbo.CardDelivery_CardDeliveryId]
GO
ALTER TABLE [dbo].[CardDeliveryLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardDeliveryLog_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardDeliveryLog] CHECK CONSTRAINT [FK_dbo.CardDeliveryLog_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[CardHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardHeldAnalysis] CHECK CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[CardHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardHeldAnalysis] CHECK CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[CardHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.Department_WasteByUnitId] FOREIGN KEY([WasteByUnitId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardHeldAnalysis] CHECK CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.Department_WasteByUnitId]
GO
ALTER TABLE [dbo].[CardHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.JobSplit_JobSplitId] FOREIGN KEY([JobSplitId])
REFERENCES [dbo].[JobSplit] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardHeldAnalysis] CHECK CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.JobSplit_JobSplitId]
GO
ALTER TABLE [dbo].[CardHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardHeldAnalysis] CHECK CONSTRAINT [FK_dbo.CardHeldAnalysis_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[CardIssuance]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardIssuance_dbo.AspNetUsers_CollectorId] FOREIGN KEY([CollectorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardIssuance] CHECK CONSTRAINT [FK_dbo.CardIssuance_dbo.AspNetUsers_CollectorId]
GO
ALTER TABLE [dbo].[CardIssuance]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardIssuance_dbo.AspNetUsers_IssuanceId] FOREIGN KEY([IssuanceId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardIssuance] CHECK CONSTRAINT [FK_dbo.CardIssuance_dbo.AspNetUsers_IssuanceId]
GO
ALTER TABLE [dbo].[CardIssuance]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardIssuance_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
GO
ALTER TABLE [dbo].[CardIssuance] CHECK CONSTRAINT [FK_dbo.CardIssuance_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[CardIssuanceLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.AspNetUsers_CollectorId] FOREIGN KEY([CollectorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardIssuanceLog] CHECK CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.AspNetUsers_CollectorId]
GO
ALTER TABLE [dbo].[CardIssuanceLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.AspNetUsers_IssuanceId] FOREIGN KEY([IssuanceId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardIssuanceLog] CHECK CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.AspNetUsers_IssuanceId]
GO
ALTER TABLE [dbo].[CardIssuanceLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.CardIssuance_CardIssuanceId] FOREIGN KEY([CardIssuanceId])
REFERENCES [dbo].[CardIssuance] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardIssuanceLog] CHECK CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.CardIssuance_CardIssuanceId]
GO
ALTER TABLE [dbo].[CardIssuanceLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.IssuanceType_IssuanceTypeId] FOREIGN KEY([IssuanceTypeId])
REFERENCES [dbo].[IssuanceType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardIssuanceLog] CHECK CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.IssuanceType_IssuanceTypeId]
GO
ALTER TABLE [dbo].[CardIssuanceLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardIssuanceLog] CHECK CONSTRAINT [FK_dbo.CardIssuanceLog_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[CardWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardWasteAnalysis] CHECK CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[CardWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CardWasteAnalysis] CHECK CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[CardWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.Department_WasteByUnitId] FOREIGN KEY([WasteByUnitId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardWasteAnalysis] CHECK CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.Department_WasteByUnitId]
GO
ALTER TABLE [dbo].[CardWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.JobSplit_JobSplitId] FOREIGN KEY([JobSplitId])
REFERENCES [dbo].[JobSplit] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardWasteAnalysis] CHECK CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.JobSplit_JobSplitId]
GO
ALTER TABLE [dbo].[CardWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.JobSplitCEAnalysis_JobSplitCEAnalysisId] FOREIGN KEY([JobSplitCEAnalysisId])
REFERENCES [dbo].[JobSplitCEAnalysis] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardWasteAnalysis] CHECK CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.JobSplitCEAnalysis_JobSplitCEAnalysisId]
GO
ALTER TABLE [dbo].[CardWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardWasteAnalysis] CHECK CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[CardWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.WasteErrorSource_WasteErrorSourceId] FOREIGN KEY([WasteErrorSourceId])
REFERENCES [dbo].[WasteErrorSource] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CardWasteAnalysis] CHECK CONSTRAINT [FK_dbo.CardWasteAnalysis_dbo.WasteErrorSource_WasteErrorSourceId]
GO
ALTER TABLE [dbo].[ClientReturnLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientReturnLog_dbo.ClientStockReport_ClientStockReportId] FOREIGN KEY([ClientStockReportId])
REFERENCES [dbo].[ClientStockReport] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientReturnLog] CHECK CONSTRAINT [FK_dbo.ClientReturnLog_dbo.ClientStockReport_ClientStockReportId]
GO
ALTER TABLE [dbo].[ClientStockLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientStockLog_dbo.CardIssuance_CardIssuanceId] FOREIGN KEY([CardIssuanceId])
REFERENCES [dbo].[CardIssuance] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientStockLog] CHECK CONSTRAINT [FK_dbo.ClientStockLog_dbo.CardIssuance_CardIssuanceId]
GO
ALTER TABLE [dbo].[ClientStockLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientStockLog_dbo.ClientStockReport_ClientStockReportId] FOREIGN KEY([ClientStockReportId])
REFERENCES [dbo].[ClientStockReport] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientStockLog] CHECK CONSTRAINT [FK_dbo.ClientStockLog_dbo.ClientStockReport_ClientStockReportId]
GO
ALTER TABLE [dbo].[ClientStockReport]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientStockReport_dbo.ClientVaultReport_ClientVaultReportId] FOREIGN KEY([ClientVaultReportId])
REFERENCES [dbo].[ClientVaultReport] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientStockReport] CHECK CONSTRAINT [FK_dbo.ClientStockReport_dbo.ClientVaultReport_ClientVaultReportId]
GO
ALTER TABLE [dbo].[ClientStockReport]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientStockReport_dbo.SidProduct_SidProductId] FOREIGN KEY([SidProductId])
REFERENCES [dbo].[SidProduct] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientStockReport] CHECK CONSTRAINT [FK_dbo.ClientStockReport_dbo.SidProduct_SidProductId]
GO
ALTER TABLE [dbo].[ClientUser]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientUser_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ClientUser] CHECK CONSTRAINT [FK_dbo.ClientUser_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ClientUser]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientUser_dbo.SidClient_SidClientId] FOREIGN KEY([SidClientId])
REFERENCES [dbo].[SidClient] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ClientUser] CHECK CONSTRAINT [FK_dbo.ClientUser_dbo.SidClient_SidClientId]
GO
ALTER TABLE [dbo].[ClientVaultReport]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ClientVaultReport_dbo.SidProduct_SidProductId] FOREIGN KEY([SidProductId])
REFERENCES [dbo].[SidProduct] ([Id])
GO
ALTER TABLE [dbo].[ClientVaultReport] CHECK CONSTRAINT [FK_dbo.ClientVaultReport_dbo.SidProduct_SidProductId]
GO
ALTER TABLE [dbo].[DeliveryNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNote_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DeliveryNote] CHECK CONSTRAINT [FK_dbo.DeliveryNote_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[DeliveryNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNote_dbo.DeliveryProfile_DeliveryProfileId] FOREIGN KEY([DeliveryProfileId])
REFERENCES [dbo].[DeliveryProfile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeliveryNote] CHECK CONSTRAINT [FK_dbo.DeliveryNote_dbo.DeliveryProfile_DeliveryProfileId]
GO
ALTER TABLE [dbo].[DeliveryNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNote_dbo.SidClient_SidClientId] FOREIGN KEY([SidClientId])
REFERENCES [dbo].[SidClient] ([Id])
GO
ALTER TABLE [dbo].[DeliveryNote] CHECK CONSTRAINT [FK_dbo.DeliveryNote_dbo.SidClient_SidClientId]
GO
ALTER TABLE [dbo].[DeliveryNoteClientTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNoteClientTemplate_dbo.DeliveryNoteTemplate_DeliveryNoteTemplateId] FOREIGN KEY([DeliveryNoteTemplateId])
REFERENCES [dbo].[DeliveryNoteTemplate] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeliveryNoteClientTemplate] CHECK CONSTRAINT [FK_dbo.DeliveryNoteClientTemplate_dbo.DeliveryNoteTemplate_DeliveryNoteTemplateId]
GO
ALTER TABLE [dbo].[DeliveryNoteClientTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNoteClientTemplate_dbo.DeliveryProfile_DeliveryNoteId] FOREIGN KEY([DeliveryNoteId])
REFERENCES [dbo].[DeliveryProfile] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeliveryNoteClientTemplate] CHECK CONSTRAINT [FK_dbo.DeliveryNoteClientTemplate_dbo.DeliveryProfile_DeliveryNoteId]
GO
ALTER TABLE [dbo].[DeliveryNoteLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNoteLog_dbo.DeliveryNote_DeliveryNoteId] FOREIGN KEY([DeliveryNoteId])
REFERENCES [dbo].[DeliveryNote] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeliveryNoteLog] CHECK CONSTRAINT [FK_dbo.DeliveryNoteLog_dbo.DeliveryNote_DeliveryNoteId]
GO
ALTER TABLE [dbo].[DeliveryNoteLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNoteLog_dbo.DispatchDelivery_DispatchDeliveryId] FOREIGN KEY([DispatchDeliveryId])
REFERENCES [dbo].[DispatchDelivery] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeliveryNoteLog] CHECK CONSTRAINT [FK_dbo.DeliveryNoteLog_dbo.DispatchDelivery_DispatchDeliveryId]
GO
ALTER TABLE [dbo].[DeliveryNoteLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNoteLog_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DeliveryNoteLog] CHECK CONSTRAINT [FK_dbo.DeliveryNoteLog_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[DeliveryNoteMaterialAudit]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNoteMaterialAudit_dbo.AspNetUsers_AssignedDriverId] FOREIGN KEY([AssignedDriverId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DeliveryNoteMaterialAudit] CHECK CONSTRAINT [FK_dbo.DeliveryNoteMaterialAudit_dbo.AspNetUsers_AssignedDriverId]
GO
ALTER TABLE [dbo].[DeliveryNoteMaterialAudit]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DeliveryNoteMaterialAudit_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DeliveryNoteMaterialAudit] CHECK CONSTRAINT [FK_dbo.DeliveryNoteMaterialAudit_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[DictionaryCardType]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DictionaryCardType_dbo.SidCardType_SidCardTypeId] FOREIGN KEY([SidCardTypeId])
REFERENCES [dbo].[SidCardType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DictionaryCardType] CHECK CONSTRAINT [FK_dbo.DictionaryCardType_dbo.SidCardType_SidCardTypeId]
GO
ALTER TABLE [dbo].[DictionaryClientName]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DictonaryClientName_dbo.SidClient_SidClientId] FOREIGN KEY([SidClientId])
REFERENCES [dbo].[SidClient] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DictionaryClientName] CHECK CONSTRAINT [FK_dbo.DictonaryClientName_dbo.SidClient_SidClientId]
GO
ALTER TABLE [dbo].[DictionaryServiceType]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DictionaryServiceType_dbo.ServiceType_ServiceTypeId] FOREIGN KEY([ServiceTypeId])
REFERENCES [dbo].[ServiceType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DictionaryServiceType] CHECK CONSTRAINT [FK_dbo.DictionaryServiceType_dbo.ServiceType_ServiceTypeId]
GO
ALTER TABLE [dbo].[DictionaryServiceType]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DictionaryServiceType_dbo.SidCardType_SidCardTypeId] FOREIGN KEY([SidCardTypeId])
REFERENCES [dbo].[SidCardType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DictionaryServiceType] CHECK CONSTRAINT [FK_dbo.DictionaryServiceType_dbo.SidCardType_SidCardTypeId]
GO
ALTER TABLE [dbo].[DictionaryServiceType]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DictionaryServiceType_dbo.SidClient_SidClientId] FOREIGN KEY([SidClientId])
REFERENCES [dbo].[SidClient] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DictionaryServiceType] CHECK CONSTRAINT [FK_dbo.DictionaryServiceType_dbo.SidClient_SidClientId]
GO
ALTER TABLE [dbo].[DispatchDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DispatchDelivery_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[DispatchDelivery] CHECK CONSTRAINT [FK_dbo.DispatchDelivery_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[DispatchDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DispatchDelivery_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
GO
ALTER TABLE [dbo].[DispatchDelivery] CHECK CONSTRAINT [FK_dbo.DispatchDelivery_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[DispatchDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.DispatchDelivery_dbo.SidClient_SidClientId] FOREIGN KEY([SidClientId])
REFERENCES [dbo].[SidClient] ([Id])
GO
ALTER TABLE [dbo].[DispatchDelivery] CHECK CONSTRAINT [FK_dbo.DispatchDelivery_dbo.SidClient_SidClientId]
GO
ALTER TABLE [dbo].[EmbedCardReceipt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmbedCardReceipt_dbo.AspNetUsers_SIDReceiverId] FOREIGN KEY([SIDReceiverId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[EmbedCardReceipt] CHECK CONSTRAINT [FK_dbo.EmbedCardReceipt_dbo.AspNetUsers_SIDReceiverId]
GO
ALTER TABLE [dbo].[EmbedCardReceipt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmbedCardReceipt_dbo.EmbedCardRequest_EmbedCardRequestId] FOREIGN KEY([EmbedCardRequestId])
REFERENCES [dbo].[EmbedCardRequest] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmbedCardReceipt] CHECK CONSTRAINT [FK_dbo.EmbedCardReceipt_dbo.EmbedCardRequest_EmbedCardRequestId]
GO
ALTER TABLE [dbo].[EmbedCardReceipt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmbedCardReceipt_dbo.SidProduct_SidProductId] FOREIGN KEY([SidProductId])
REFERENCES [dbo].[SidProduct] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmbedCardReceipt] CHECK CONSTRAINT [FK_dbo.EmbedCardReceipt_dbo.SidProduct_SidProductId]
GO
ALTER TABLE [dbo].[EmbedCardReceipt]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmbedCardReceipt_dbo.Vendor_VendorId] FOREIGN KEY([VendorId])
REFERENCES [dbo].[Vendor] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmbedCardReceipt] CHECK CONSTRAINT [FK_dbo.EmbedCardReceipt_dbo.Vendor_VendorId]
GO
ALTER TABLE [dbo].[EmbedCardRequest]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmbedCardRequest_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[EmbedCardRequest] CHECK CONSTRAINT [FK_dbo.EmbedCardRequest_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[EmbedCardRequest]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmbedCardRequest_dbo.SidProduct_SidProductId] FOREIGN KEY([SidProductId])
REFERENCES [dbo].[SidProduct] ([Id])
GO
ALTER TABLE [dbo].[EmbedCardRequest] CHECK CONSTRAINT [FK_dbo.EmbedCardRequest_dbo.SidProduct_SidProductId]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.JobStatus_JobStatusId] FOREIGN KEY([JobStatusId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.JobStatus_JobStatusId]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.ServiceType_ServiceTypeId] FOREIGN KEY([ServiceTypeId])
REFERENCES [dbo].[ServiceType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.ServiceType_ServiceTypeId]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.SidCardType_SidCardTypeId] FOREIGN KEY([SidCardTypeId])
REFERENCES [dbo].[SidCardType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.SidCardType_SidCardTypeId]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.SidClient_SidClientId] FOREIGN KEY([SidClientId])
REFERENCES [dbo].[SidClient] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.SidClient_SidClientId]
GO
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.SidSector_SidSectorId] FOREIGN KEY([SidSectorId])
REFERENCES [dbo].[SidSector] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.SidSector_SidSectorId]
GO
ALTER TABLE [dbo].[JobFlag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobFlag_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobFlag] CHECK CONSTRAINT [FK_dbo.JobFlag_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[JobFlag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobFlag_dbo.AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobFlag] CHECK CONSTRAINT [FK_dbo.JobFlag_dbo.AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[JobFlag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobFlag_dbo.AspNetUsers_ResolvedById] FOREIGN KEY([ResolvedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobFlag] CHECK CONSTRAINT [FK_dbo.JobFlag_dbo.AspNetUsers_ResolvedById]
GO
ALTER TABLE [dbo].[JobFlag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobFlag_dbo.Department_TargetUnitId] FOREIGN KEY([TargetUnitId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobFlag] CHECK CONSTRAINT [FK_dbo.JobFlag_dbo.Department_TargetUnitId]
GO
ALTER TABLE [dbo].[JobFlag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobFlag_dbo.FlagType_FlagTypeId] FOREIGN KEY([FlagTypeId])
REFERENCES [dbo].[FlagType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobFlag] CHECK CONSTRAINT [FK_dbo.JobFlag_dbo.FlagType_FlagTypeId]
GO
ALTER TABLE [dbo].[JobFlag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobFlag_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobFlag] CHECK CONSTRAINT [FK_dbo.JobFlag_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[JobHandler]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobHandler_dbo.AspNetUsers_HandlerId] FOREIGN KEY([HandlerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobHandler] CHECK CONSTRAINT [FK_dbo.JobHandler_dbo.AspNetUsers_HandlerId]
GO
ALTER TABLE [dbo].[JobHandler]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobHandler_dbo.JobSplit_JobSplitId] FOREIGN KEY([JobSplitId])
REFERENCES [dbo].[JobSplit] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobHandler] CHECK CONSTRAINT [FK_dbo.JobHandler_dbo.JobSplit_JobSplitId]
GO
ALTER TABLE [dbo].[JobHandler]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobHandler_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobHandler] CHECK CONSTRAINT [FK_dbo.JobHandler_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[JobSplit]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplit_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobSplit] CHECK CONSTRAINT [FK_dbo.JobSplit_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[JobSplit]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplit_dbo.Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[JobSplit] CHECK CONSTRAINT [FK_dbo.JobSplit_dbo.Department_DepartmentId]
GO
ALTER TABLE [dbo].[JobSplit]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplit_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
GO
ALTER TABLE [dbo].[JobSplit] CHECK CONSTRAINT [FK_dbo.JobSplit_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[JobSplit]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplit_dbo.SidMachine_SidMachineId] FOREIGN KEY([SidMachineId])
REFERENCES [dbo].[SidMachine] ([Id])
GO
ALTER TABLE [dbo].[JobSplit] CHECK CONSTRAINT [FK_dbo.JobSplit_dbo.SidMachine_SidMachineId]
GO
ALTER TABLE [dbo].[JobSplitCEAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplitCEAnalysis_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobSplitCEAnalysis] CHECK CONSTRAINT [FK_dbo.JobSplitCEAnalysis_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[JobSplitCEAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplitCEAnalysis_dbo.AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobSplitCEAnalysis] CHECK CONSTRAINT [FK_dbo.JobSplitCEAnalysis_dbo.AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[JobSplitCEAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplitCEAnalysis_dbo.JobSplit_JobSplitId] FOREIGN KEY([JobSplitId])
REFERENCES [dbo].[JobSplit] ([Id])
GO
ALTER TABLE [dbo].[JobSplitCEAnalysis] CHECK CONSTRAINT [FK_dbo.JobSplitCEAnalysis_dbo.JobSplit_JobSplitId]
GO
ALTER TABLE [dbo].[JobSplitCEAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplitCEAnalysis_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
GO
ALTER TABLE [dbo].[JobSplitCEAnalysis] CHECK CONSTRAINT [FK_dbo.JobSplitCEAnalysis_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[JobSplitPrintCEAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplitPrintCEAnalysis_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobSplitPrintCEAnalysis] CHECK CONSTRAINT [FK_dbo.JobSplitPrintCEAnalysis_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[JobSplitPrintCEAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplitPrintCEAnalysis_dbo.AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobSplitPrintCEAnalysis] CHECK CONSTRAINT [FK_dbo.JobSplitPrintCEAnalysis_dbo.AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[JobSplitPrintCEAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplitPrintCEAnalysis_dbo.JobSplit_JobSplitId] FOREIGN KEY([JobSplitId])
REFERENCES [dbo].[JobSplit] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobSplitPrintCEAnalysis] CHECK CONSTRAINT [FK_dbo.JobSplitPrintCEAnalysis_dbo.JobSplit_JobSplitId]
GO
ALTER TABLE [dbo].[JobSplitPrintCEAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSplitPrintCEAnalysis_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobSplitPrintCEAnalysis] CHECK CONSTRAINT [FK_dbo.JobSplitPrintCEAnalysis_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_CardEngrId] FOREIGN KEY([CardEngrId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_CardEngrId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_CardEngrResumeId] FOREIGN KEY([CardEngrResumeId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_CardEngrResumeId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_CardOpsId] FOREIGN KEY([CardOpsId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_CardOpsId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_CustomerServiceId] FOREIGN KEY([CustomerServiceId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_CustomerServiceId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_DispatchId] FOREIGN KEY([DispatchId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_DispatchId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_FirstJobRunId] FOREIGN KEY([FirstJobRunId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_FirstJobRunId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_InventoryId] FOREIGN KEY([InventoryId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_InventoryId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_JobStatusId] FOREIGN KEY([JobStatusId])
REFERENCES [dbo].[JobStatus] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_JobStatusId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_MailingId] FOREIGN KEY([MailingId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_MailingId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_MAudId] FOREIGN KEY([MAudId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_MAudId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_PrintingId] FOREIGN KEY([PrintingId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_PrintingId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_PrintQAId] FOREIGN KEY([PrintQAId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_PrintQAId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_PrintQCId] FOREIGN KEY([PrintQCId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_PrintQCId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_QAId] FOREIGN KEY([QAId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_QAId]
GO
ALTER TABLE [dbo].[JobTracker]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_QCId] FOREIGN KEY([QCId])
REFERENCES [dbo].[JobStatus] ([Id])
GO
ALTER TABLE [dbo].[JobTracker] CHECK CONSTRAINT [FK_dbo.JobTracker_dbo.JobStatus_QCId]
GO
ALTER TABLE [dbo].[JobVariant]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobVariant_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobVariant] CHECK CONSTRAINT [FK_dbo.JobVariant_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[JobVariant]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobVariant_dbo.SidProduct_SidProductId] FOREIGN KEY([SidProductId])
REFERENCES [dbo].[SidProduct] ([Id])
GO
ALTER TABLE [dbo].[JobVariant] CHECK CONSTRAINT [FK_dbo.JobVariant_dbo.SidProduct_SidProductId]
GO
ALTER TABLE [dbo].[JobVariant]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobVariant_dbo.SidVariant_SidVariantId] FOREIGN KEY([SidVariantId])
REFERENCES [dbo].[SidVariant] ([Id])
GO
ALTER TABLE [dbo].[JobVariant] CHECK CONSTRAINT [FK_dbo.JobVariant_dbo.SidVariant_SidVariantId]
GO
ALTER TABLE [dbo].[JobWaste]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobWaste_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobWaste] CHECK CONSTRAINT [FK_dbo.JobWaste_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[JobWaste]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobWaste_dbo.Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobWaste] CHECK CONSTRAINT [FK_dbo.JobWaste_dbo.Department_DepartmentId]
GO
ALTER TABLE [dbo].[JobWaste]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobWaste_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobWaste] CHECK CONSTRAINT [FK_dbo.JobWaste_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[JobWaste]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobWaste_dbo.WasteType_WasteTypeId] FOREIGN KEY([WasteTypeId])
REFERENCES [dbo].[WasteType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobWaste] CHECK CONSTRAINT [FK_dbo.JobWaste_dbo.WasteType_WasteTypeId]
GO
ALTER TABLE [dbo].[JobWasteLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobWasteLog_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[JobWasteLog] CHECK CONSTRAINT [FK_dbo.JobWasteLog_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[JobWasteLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobWasteLog_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobWasteLog] CHECK CONSTRAINT [FK_dbo.JobWasteLog_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[JobWasteLog]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobWasteLog_dbo.WasteType_WasteTypeId] FOREIGN KEY([WasteTypeId])
REFERENCES [dbo].[WasteType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JobWasteLog] CHECK CONSTRAINT [FK_dbo.JobWasteLog_dbo.WasteType_WasteTypeId]
GO
ALTER TABLE [dbo].[NonPersoJob]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NonPersoJob_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NonPersoJob] CHECK CONSTRAINT [FK_dbo.NonPersoJob_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[NonPersoJob]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NonPersoJob_dbo.AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[NonPersoJob] CHECK CONSTRAINT [FK_dbo.NonPersoJob_dbo.AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[NonPersoJob]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NonPersoJob_dbo.ServiceType_ServiceTypeId] FOREIGN KEY([ServiceTypeId])
REFERENCES [dbo].[ServiceType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NonPersoJob] CHECK CONSTRAINT [FK_dbo.NonPersoJob_dbo.ServiceType_ServiceTypeId]
GO
ALTER TABLE [dbo].[NonPersoJob]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NonPersoJob_dbo.SidProduct_SidProductId] FOREIGN KEY([SidProductId])
REFERENCES [dbo].[SidProduct] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NonPersoJob] CHECK CONSTRAINT [FK_dbo.NonPersoJob_dbo.SidProduct_SidProductId]
GO
ALTER TABLE [dbo].[PrintDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintDelivery_dbo.AspNetUsers_ConfirmedById] FOREIGN KEY([ConfirmedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PrintDelivery] CHECK CONSTRAINT [FK_dbo.PrintDelivery_dbo.AspNetUsers_ConfirmedById]
GO
ALTER TABLE [dbo].[PrintDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintDelivery_dbo.AspNetUsers_DeliveredById] FOREIGN KEY([DeliveredById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PrintDelivery] CHECK CONSTRAINT [FK_dbo.PrintDelivery_dbo.AspNetUsers_DeliveredById]
GO
ALTER TABLE [dbo].[PrintDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintDelivery_dbo.Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintDelivery] CHECK CONSTRAINT [FK_dbo.PrintDelivery_dbo.Department_DepartmentId]
GO
ALTER TABLE [dbo].[PrintDelivery]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintDelivery_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintDelivery] CHECK CONSTRAINT [FK_dbo.PrintDelivery_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[PrintHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PrintHeldAnalysis] CHECK CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[PrintHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PrintHeldAnalysis] CHECK CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[PrintHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.Department_WasteByUnitId] FOREIGN KEY([WasteByUnitId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintHeldAnalysis] CHECK CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.Department_WasteByUnitId]
GO
ALTER TABLE [dbo].[PrintHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.JobSplit_JobSplitId] FOREIGN KEY([JobSplitId])
REFERENCES [dbo].[JobSplit] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintHeldAnalysis] CHECK CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.JobSplit_JobSplitId]
GO
ALTER TABLE [dbo].[PrintHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.JobSplitPrintCEAnalysis_JobSplitPrintCEAnalysisId] FOREIGN KEY([JobSplitPrintCEAnalysisId])
REFERENCES [dbo].[JobSplitPrintCEAnalysis] ([Id])
GO
ALTER TABLE [dbo].[PrintHeldAnalysis] CHECK CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.JobSplitPrintCEAnalysis_JobSplitPrintCEAnalysisId]
GO
ALTER TABLE [dbo].[PrintHeldAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintHeldAnalysis] CHECK CONSTRAINT [FK_dbo.PrintHeldAnalysis_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[PrintWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PrintWasteAnalysis] CHECK CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[PrintWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.AspNetUsers_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PrintWasteAnalysis] CHECK CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.AspNetUsers_ModifiedById]
GO
ALTER TABLE [dbo].[PrintWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.Department_WasteByUnitId] FOREIGN KEY([WasteByUnitId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintWasteAnalysis] CHECK CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.Department_WasteByUnitId]
GO
ALTER TABLE [dbo].[PrintWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.JobSplit_JobSplitId] FOREIGN KEY([JobSplitId])
REFERENCES [dbo].[JobSplit] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintWasteAnalysis] CHECK CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.JobSplit_JobSplitId]
GO
ALTER TABLE [dbo].[PrintWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.JobSplitPrintCEAnalysis_JobSplitPrintCEAnalysisId] FOREIGN KEY([JobSplitPrintCEAnalysisId])
REFERENCES [dbo].[JobSplitPrintCEAnalysis] ([Id])
GO
ALTER TABLE [dbo].[PrintWasteAnalysis] CHECK CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.JobSplitPrintCEAnalysis_JobSplitPrintCEAnalysisId]
GO
ALTER TABLE [dbo].[PrintWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintWasteAnalysis] CHECK CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[PrintWasteAnalysis]  WITH CHECK ADD  CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.WasteErrorSource_WasteErrorSourceId] FOREIGN KEY([WasteErrorSourceId])
REFERENCES [dbo].[WasteErrorSource] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrintWasteAnalysis] CHECK CONSTRAINT [FK_dbo.PrintWasteAnalysis_dbo.WasteErrorSource_WasteErrorSourceId]
GO
ALTER TABLE [dbo].[Sid01CardOps]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid01CardOps_dbo.AspNetUsers_CreatedUserId] FOREIGN KEY([CreatedUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sid01CardOps] CHECK CONSTRAINT [FK_dbo.Sid01CardOps_dbo.AspNetUsers_CreatedUserId]
GO
ALTER TABLE [dbo].[Sid03FirstCard]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid03FirstCard_dbo.AspNetUsers_InitializedById] FOREIGN KEY([InitializedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sid03FirstCard] CHECK CONSTRAINT [FK_dbo.Sid03FirstCard_dbo.AspNetUsers_InitializedById]
GO
ALTER TABLE [dbo].[Sid03FirstCard]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid03FirstCard_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid03FirstCard] CHECK CONSTRAINT [FK_dbo.Sid03FirstCard_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[Sid04Printing]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid04Printing_dbo.AspNetUsers_InitializedById] FOREIGN KEY([InitializedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sid04Printing] CHECK CONSTRAINT [FK_dbo.Sid04Printing_dbo.AspNetUsers_InitializedById]
GO
ALTER TABLE [dbo].[Sid04Printing]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid04Printing_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid04Printing] CHECK CONSTRAINT [FK_dbo.Sid04Printing_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[Sid05QA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid05QA_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sid05QA] CHECK CONSTRAINT [FK_dbo.Sid05QA_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[Sid05QA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid05QA_dbo.JobSplit_JobSplitId] FOREIGN KEY([JobSplitId])
REFERENCES [dbo].[JobSplit] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid05QA] CHECK CONSTRAINT [FK_dbo.Sid05QA_dbo.JobSplit_JobSplitId]
GO
ALTER TABLE [dbo].[Sid05QA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid05QA_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid05QA] CHECK CONSTRAINT [FK_dbo.Sid05QA_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[Sid06QC]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid06QC_dbo.AspNetUsers_RunById] FOREIGN KEY([RunById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sid06QC] CHECK CONSTRAINT [FK_dbo.Sid06QC_dbo.AspNetUsers_RunById]
GO
ALTER TABLE [dbo].[Sid06QC]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid06QC_dbo.JobTracker_JobTrackerId] FOREIGN KEY([JobTrackerId])
REFERENCES [dbo].[JobTracker] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid06QC] CHECK CONSTRAINT [FK_dbo.Sid06QC_dbo.JobTracker_JobTrackerId]
GO
ALTER TABLE [dbo].[Sid07Mailing]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid07Mailing_dbo.AspNetUsers_RunById] FOREIGN KEY([RunById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sid07Mailing] CHECK CONSTRAINT [FK_dbo.Sid07Mailing_dbo.AspNetUsers_RunById]
GO
ALTER TABLE [dbo].[Sid07Mailing]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid07Mailing_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid07Mailing] CHECK CONSTRAINT [FK_dbo.Sid07Mailing_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[Sid07Mailing]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid07Mailing_dbo.MailingMode_MailingModeId] FOREIGN KEY([MailingModeId])
REFERENCES [dbo].[MailingMode] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid07Mailing] CHECK CONSTRAINT [FK_dbo.Sid07Mailing_dbo.MailingMode_MailingModeId]
GO
ALTER TABLE [dbo].[Sid08Dispatch]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid08Dispatch_dbo.AspNetUsers_ReceivedById] FOREIGN KEY([ReceivedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sid08Dispatch] CHECK CONSTRAINT [FK_dbo.Sid08Dispatch_dbo.AspNetUsers_ReceivedById]
GO
ALTER TABLE [dbo].[Sid08Dispatch]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid08Dispatch_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid08Dispatch] CHECK CONSTRAINT [FK_dbo.Sid08Dispatch_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[Sid09CustomerService]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid09CustomerService_dbo.AspNetUsers_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Sid09CustomerService] CHECK CONSTRAINT [FK_dbo.Sid09CustomerService_dbo.AspNetUsers_CreatedById]
GO
ALTER TABLE [dbo].[Sid09CustomerService]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Sid09CustomerService_dbo.DeliveryNoteLog_DeliveryNoteLogId] FOREIGN KEY([DeliveryNoteLogId])
REFERENCES [dbo].[DeliveryNoteLog] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sid09CustomerService] CHECK CONSTRAINT [FK_dbo.Sid09CustomerService_dbo.DeliveryNoteLog_DeliveryNoteLogId]
GO
ALTER TABLE [dbo].[SidChipType]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SidChipType_dbo.SidCardType_SidCardTypeId] FOREIGN KEY([SidCardTypeId])
REFERENCES [dbo].[SidCardType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SidChipType] CHECK CONSTRAINT [FK_dbo.SidChipType_dbo.SidCardType_SidCardTypeId]
GO
ALTER TABLE [dbo].[SidClient]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SidClient_dbo.SidSector_SectorId] FOREIGN KEY([SectorId])
REFERENCES [dbo].[SidSector] ([Id])
GO
ALTER TABLE [dbo].[SidClient] CHECK CONSTRAINT [FK_dbo.SidClient_dbo.SidSector_SectorId]
GO
ALTER TABLE [dbo].[SidMachine]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SidMachine_dbo.Department_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SidMachine] CHECK CONSTRAINT [FK_dbo.SidMachine_dbo.Department_DepartmentId]
GO
ALTER TABLE [dbo].[SidProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SidProduct_dbo.SidCardType_SidCardTypeId] FOREIGN KEY([SidCardTypeId])
REFERENCES [dbo].[SidCardType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SidProduct] CHECK CONSTRAINT [FK_dbo.SidProduct_dbo.SidCardType_SidCardTypeId]
GO
ALTER TABLE [dbo].[SidProduct]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SidProduct_dbo.SidClient_SidClientId] FOREIGN KEY([SidClientId])
REFERENCES [dbo].[SidClient] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SidProduct] CHECK CONSTRAINT [FK_dbo.SidProduct_dbo.SidClient_SidClientId]
GO
ALTER TABLE [dbo].[StockStatus]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StockStatus_dbo.AspNetUsers_CardCollectedById] FOREIGN KEY([CardCollectedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[StockStatus] CHECK CONSTRAINT [FK_dbo.StockStatus_dbo.AspNetUsers_CardCollectedById]
GO
ALTER TABLE [dbo].[StockStatus]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StockStatus_dbo.AspNetUsers_CardIssuedById] FOREIGN KEY([CardIssuedById])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[StockStatus] CHECK CONSTRAINT [FK_dbo.StockStatus_dbo.AspNetUsers_CardIssuedById]
GO
ALTER TABLE [dbo].[StockStatus]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StockStatus_dbo.SidClient_SidClientId] FOREIGN KEY([SidClientId])
REFERENCES [dbo].[SidClient] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StockStatus] CHECK CONSTRAINT [FK_dbo.StockStatus_dbo.SidClient_SidClientId]
GO
ALTER TABLE [dbo].[StockStatus]  WITH CHECK ADD  CONSTRAINT [FK_dbo.StockStatus_dbo.SidVariant_SidVariantId] FOREIGN KEY([SidVariantId])
REFERENCES [dbo].[SidVariant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[StockStatus] CHECK CONSTRAINT [FK_dbo.StockStatus_dbo.SidVariant_SidVariantId]
GO
ALTER TABLE [dbo].[WasteErrorSourceCode]  WITH CHECK ADD  CONSTRAINT [FK_dbo.WasteErrorSourceCode_dbo.WasteErrorSource_WasteErrorSourceId] FOREIGN KEY([WasteErrorSourceId])
REFERENCES [dbo].[WasteErrorSource] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WasteErrorSourceCode] CHECK CONSTRAINT [FK_dbo.WasteErrorSourceCode_dbo.WasteErrorSource_WasteErrorSourceId]
GO
