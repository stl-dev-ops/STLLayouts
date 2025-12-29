SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisawz__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisawz__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[aankomst] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vertrek_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[manueel_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisawzi2] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisawz__]') AND name = N'hisawid1')
CREATE NONCLUSTERED INDEX [hisawid1] ON [dbo].[hisawz__]
(
	[wn___ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisawz__]') AND name = N'hisawid2')
CREATE NONCLUSTERED INDEX [hisawid2] ON [dbo].[hisawz__]
(
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__aankomst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__aankomst]  DEFAULT ('') FOR [aankomst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__vertrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__vertrek_]  DEFAULT ('') FOR [vertrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisawz__manueel_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisawz__] ADD  CONSTRAINT [DF_hisawz__manueel_]  DEFAULT ('') FOR [manueel_]
END

