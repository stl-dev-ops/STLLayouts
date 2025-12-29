SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stnsps__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stnsps__](
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stnspsi0] PRIMARY KEY CLUSTERED 
(
	[stns_ref] ASC,
	[prs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnsps__stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnsps__] ADD  CONSTRAINT [DF_stnsps__stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnsps__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnsps__] ADD  CONSTRAINT [DF_stnsps__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

