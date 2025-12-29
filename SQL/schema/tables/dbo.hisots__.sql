SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisots__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisots__](
	[his__vnr] [int] NOT NULL,
	[jobnr___] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[compl___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__new] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstw_dat] [date] NOT NULL,
	[tstw_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstw_com] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat__ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkoa_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prof__vm] [float] NOT NULL,
	[prof__om] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisotsi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisots__]') AND name = N'hisotsi2')
CREATE NONCLUSTERED INDEX [hisotsi2] ON [dbo].[hisots__]
(
	[bsbonref] ASC,
	[tstw_dat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__his__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__his__vnr]  DEFAULT ((0)) FOR [his__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__jobnr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__jobnr___]  DEFAULT ('') FOR [jobnr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__bsbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__bsbonref]  DEFAULT ('') FOR [bsbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__compl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__compl___]  DEFAULT ('') FOR [compl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__tst__new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__tst__new]  DEFAULT ('') FOR [tst__new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__tstw_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__tstw_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [tstw_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__tstw_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__tstw_uur]  DEFAULT ('') FOR [tstw_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__tstw_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__tstw_com]  DEFAULT ('') FOR [tstw_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__fiat__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__fiat__ok]  DEFAULT ('') FOR [fiat__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__fiat_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__fiat_com]  DEFAULT ('') FOR [fiat_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__fkoa_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__fkoa_ref]  DEFAULT ('') FOR [fkoa_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__prof__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__prof__vm]  DEFAULT ((0)) FOR [prof__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__prof__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__prof__om]  DEFAULT ((0)) FOR [prof__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisots__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisots__] ADD  CONSTRAINT [DF_hisots__koers___]  DEFAULT ((0)) FOR [koers___]
END

