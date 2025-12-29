SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisoaa__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisoaa__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[oaaf_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom_afsl] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_afsl] [date] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wacht___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkoa_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[faant___] [float] NOT NULL,
	[prof__vm] [float] NOT NULL,
	[prof__bm] [float] NOT NULL,
	[prof__om] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisoaai0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisoaa__]') AND name = N'hisoaai1')
CREATE NONCLUSTERED INDEX [hisoaai1] ON [dbo].[hisoaa__]
(
	[bsbonref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__oaaf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__oaaf_ref]  DEFAULT ('') FOR [oaaf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__bsbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__bsbonref]  DEFAULT ('') FOR [bsbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__kom_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__kom_afsl]  DEFAULT ('') FOR [kom_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__dat_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__dat_afsl]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__wacht___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__wacht___]  DEFAULT ('') FOR [wacht___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__fkoa_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__fkoa_ref]  DEFAULT ('') FOR [fkoa_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__prof__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__prof__vm]  DEFAULT ((0)) FOR [prof__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__prof__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__prof__bm]  DEFAULT ((0)) FOR [prof__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoaa__prof__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoaa__] ADD  CONSTRAINT [DF_hisoaa__prof__om]  DEFAULT ((0)) FOR [prof__om]
END

