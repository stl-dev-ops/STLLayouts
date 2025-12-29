SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlOSS_OffSiteStorage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlOSS_OffSiteStorage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[SentToOffsiteStorage] [date] NOT NULL,
	[RetrievedFromOffsiteStorage] [date] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlOSS_OffSiteStorage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOSS_OffSiteStorage_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOSS_OffSiteStorage] ADD  CONSTRAINT [DF_stlOSS_OffSiteStorage_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOSS_OffSiteStorage_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOSS_OffSiteStorage] ADD  CONSTRAINT [DF_stlOSS_OffSiteStorage_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOSS_OffSiteStorage_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOSS_OffSiteStorage] ADD  CONSTRAINT [DF_stlOSS_OffSiteStorage_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

