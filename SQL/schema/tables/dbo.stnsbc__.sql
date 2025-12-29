SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stnsbc__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stnsbc__](
	[bc___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_h] [float] NOT NULL,
	[aantal_h] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stnsbci0] PRIMARY KEY CLUSTERED 
(
	[bc___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stnsbc__]') AND name = N'stnsbci1')
CREATE NONCLUSTERED INDEX [stnsbci1] ON [dbo].[stnsbc__]
(
	[stns_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnsbc__bc___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnsbc__] ADD  CONSTRAINT [DF_stnsbc__bc___ref]  DEFAULT ('') FOR [bc___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnsbc__stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnsbc__] ADD  CONSTRAINT [DF_stnsbc__stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnsbc__etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnsbc__] ADD  CONSTRAINT [DF_stnsbc__etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnsbc__aantal_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnsbc__] ADD  CONSTRAINT [DF_stnsbc__aantal_h]  DEFAULT ((0)) FOR [aantal_h]
END

