SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlRowellImport]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlRowellImport](
	[stl_rowellImportID] [int] IDENTITY(1,1) NOT NULL,
	[RecordType] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[SiteCode] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[SiteTag] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[SiteName] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[CardNumber] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[EmployeeName] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[EmployeeSSN] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[PayRate] [money] NULL,
	[Department] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[PunchDate] [date] NULL,
	[Category] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[NonOTHours] [money] NULL,
	[OTHours] [money] NULL,
	[OTIndex] [money] NULL,
	[UTCOffset] [int] NULL,
	[InTime] [datetime] NULL,
	[OutTime] [datetime] NULL,
	[Tips] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[LS1] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Lunch] [money] NULL,
	[Hours] [money] NULL,
	[MissCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[Pay] [money] NULL,
	[J] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[K] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[LS2] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[LS3] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[InUnrounded] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[OutUnrounded] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[EmployeeCode] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[EmployeeID] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlRowellImport] PRIMARY KEY CLUSTERED 
(
	[stl_rowellImportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
