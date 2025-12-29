SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisplg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisplg__](
	[hplg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[plg_refr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanko__r] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vertr__r] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pauze__r] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plg_refc] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanko__c] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vertr__c] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pauze__c] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[su___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duur____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisplgi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisplg__]') AND name = N'hisplgi1')
CREATE NONCLUSTERED INDEX [hisplgi1] ON [dbo].[hisplg__]
(
	[hplg_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisplg__]') AND name = N'hisplgi2')
CREATE NONCLUSTERED INDEX [hisplgi2] ON [dbo].[hisplg__]
(
	[wn___ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisplg__]') AND name = N'hisplgi3')
CREATE NONCLUSTERED INDEX [hisplgi3] ON [dbo].[hisplg__]
(
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__hplg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__hplg_ref]  DEFAULT ('') FOR [hplg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__plg_refr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__plg_refr]  DEFAULT ('') FOR [plg_refr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__aanko__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__aanko__r]  DEFAULT ('') FOR [aanko__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__vertr__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__vertr__r]  DEFAULT ('') FOR [vertr__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__pauze__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__pauze__r]  DEFAULT ('') FOR [pauze__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__plg_refc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__plg_refc]  DEFAULT ('') FOR [plg_refc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__aanko__c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__aanko__c]  DEFAULT ('') FOR [aanko__c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__vertr__c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__vertr__c]  DEFAULT ('') FOR [vertr__c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__pauze__c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__pauze__c]  DEFAULT ('') FOR [pauze__c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__su___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__su___ref]  DEFAULT ('') FOR [su___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisplg__duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisplg__] ADD  CONSTRAINT [DF_hisplg__duur____]  DEFAULT ('') FOR [duur____]
END

