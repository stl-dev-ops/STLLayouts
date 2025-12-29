SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisplc__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisplc__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[plg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[manueel_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisplci0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisplc__]') AND name = N'hisplci1')
CREATE NONCLUSTERED INDEX [hisplci1] ON [dbo].[hisplc__]
(
	[wn___ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisplc__]') AND name = N'hisplci2')
CREATE NONCLUSTERED INDEX [hisplci2] ON [dbo].[hisplc__]
(
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplc__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplc__] ADD  CONSTRAINT [DF_hisplc__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplc__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplc__] ADD  CONSTRAINT [DF_hisplc__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplc__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplc__] ADD  CONSTRAINT [DF_hisplc__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplc__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplc__] ADD  CONSTRAINT [DF_hisplc__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplc__plg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplc__] ADD  CONSTRAINT [DF_hisplc__plg__ref]  DEFAULT ('') FOR [plg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplc__manueel_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplc__] ADD  CONSTRAINT [DF_hisplc__manueel_]  DEFAULT ('') FOR [manueel_]
END

