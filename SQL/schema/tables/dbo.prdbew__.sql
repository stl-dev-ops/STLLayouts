SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prdbew__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[prdbew__](
	[prdbwref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__uit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aant] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_beg] [float] NOT NULL,
	[dat__beg] [date] NOT NULL,
	[uur__beg] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_b] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdb_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wpb__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wnb__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_end] [float] NOT NULL,
	[dat__end] [date] NOT NULL,
	[uur__end] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_e] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[prde_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wpe__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wne__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [prdbewi4] PRIMARY KEY CLUSTERED 
(
	[prdbwref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[prdbew__]') AND name = N'prdbewi1')
CREATE NONCLUSTERED INDEX [prdbewi1] ON [dbo].[prdbew__]
(
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[prdbew__]') AND name = N'prdbewi2')
CREATE NONCLUSTERED INDEX [prdbewi2] ON [dbo].[prdbew__]
(
	[drg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[prdbew__]') AND name = N'prdbewi3')
CREATE NONCLUSTERED INDEX [prdbewi3] ON [dbo].[prdbew__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__prdbwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__prdbwref]  DEFAULT ('') FOR [prdbwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__typ__uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__typ__uit]  DEFAULT ('') FOR [typ__uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__oms_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__oms_aant]  DEFAULT ('') FOR [oms_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__aant_beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__aant_beg]  DEFAULT ((0)) FOR [aant_beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__dat__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__dat__beg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__uur__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__uur__beg]  DEFAULT ('') FOR [uur__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__kommen_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__kommen_b]  DEFAULT ('') FOR [kommen_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__prdb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__prdb_ref]  DEFAULT ('') FOR [prdb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__wpb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__wpb__ref]  DEFAULT ('') FOR [wpb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__wnb__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__wnb__ref]  DEFAULT ('') FOR [wnb__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__aant_end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__aant_end]  DEFAULT ((0)) FOR [aant_end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__dat__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__dat__end]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__uur__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__uur__end]  DEFAULT ('') FOR [uur__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__kommen_e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__kommen_e]  DEFAULT ('') FOR [kommen_e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__prde_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__prde_ref]  DEFAULT ('') FOR [prde_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__wpe__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__wpe__ref]  DEFAULT ('') FOR [wpe__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_prdbew__wne__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[prdbew__] ADD  CONSTRAINT [DF_prdbew__wne__ref]  DEFAULT ('') FOR [wne__ref]
END

