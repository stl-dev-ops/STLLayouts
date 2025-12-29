SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgfac__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgfac__](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkla_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[f_aantal] [float] NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgfaci0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgfac__]') AND name = N'afgfaci1')
CREATE UNIQUE NONCLUSTERED INDEX [afgfaci1] ON [dbo].[afgfac__]
(
	[afg__ref] ASC,
	[ord__ref] ASC,
	[vrs__ref] ASC,
	[levr_vnr] ASC,
	[lyn__ref] ASC,
	[fkla_ref] ASC,
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__fkla_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__fkla_ref]  DEFAULT ('') FOR [fkla_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__f_aantal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__f_aantal]  DEFAULT ((0.0)) FOR [f_aantal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgfac__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgfac__] ADD  CONSTRAINT [DF_afgfac__fac__tst]  DEFAULT ('W') FOR [fac__tst]
END

