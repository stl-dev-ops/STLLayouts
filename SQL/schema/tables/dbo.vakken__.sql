SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vakken__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vakken__](
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[klas_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prio____] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokk___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laatstbw] [date] NOT NULL,
	[tel__dat] [date] NOT NULL,
	[kommen_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[halfvrd_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[halffab_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[hulpmat_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgklm__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaks_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[tonen___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[leeg____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_stock] [float] NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[breedte_] [int] NOT NULL,
	[lengte__] [int] NOT NULL,
	[looprich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vakkeni1] PRIMARY KEY CLUSTERED 
(
	[vak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vakken__]') AND name = N'vakkeni2')
CREATE UNIQUE NONCLUSTERED INDEX [vakkeni2] ON [dbo].[vakken__]
(
	[leeg____] ASC,
	[blokk___] ASC,
	[klas_ref] ASC,
	[prio____] ASC,
	[vak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vakken__]') AND name = N'vakkeni3')
CREATE UNIQUE NONCLUSTERED INDEX [vakkeni3] ON [dbo].[vakken__]
(
	[vaks_ref] ASC,
	[vak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vakken__]') AND name = N'vakkeni4')
CREATE UNIQUE NONCLUSTERED INDEX [vakkeni4] ON [dbo].[vakken__]
(
	[art__ref] ASC,
	[tonen___] ASC,
	[klas_ref] ASC,
	[prio____] ASC,
	[vak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__klas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__klas_ref]  DEFAULT ('') FOR [klas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__prio____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__prio____]  DEFAULT ('') FOR [prio____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__blokk___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__blokk___]  DEFAULT ('N') FOR [blokk___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__laatstbw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__laatstbw]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [laatstbw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__tel__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__tel__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [tel__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__kommen_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__kommen_1]  DEFAULT ('') FOR [kommen_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__kommen_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__kommen_2]  DEFAULT ('') FOR [kommen_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__kommen_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__kommen_3]  DEFAULT ('') FOR [kommen_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__grd_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__grd_____]  DEFAULT ('Y') FOR [grd_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__halfvrd_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__halfvrd_]  DEFAULT ('Y') FOR [halfvrd_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__afg_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__afg_____]  DEFAULT ('Y') FOR [afg_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__halffab_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__halffab_]  DEFAULT ('Y') FOR [halffab_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__hulpmat_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__hulpmat_]  DEFAULT ('Y') FOR [hulpmat_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__afgklm__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__afgklm__]  DEFAULT ('Y') FOR [afgklm__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__vaks_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__vaks_ref]  DEFAULT ('') FOR [vaks_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__tonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__tonen___]  DEFAULT ('') FOR [tonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__leeg____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__leeg____]  DEFAULT ('') FOR [leeg____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__art__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__art__rpn]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__in_stock]  DEFAULT ((0)) FOR [in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__grammage]  DEFAULT ('') FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__lengte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__lengte__]  DEFAULT ((0)) FOR [lengte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__looprich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__looprich]  DEFAULT ('') FOR [looprich]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vakken__klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vakken__] ADD  CONSTRAINT [DF_vakken__klr__ref]  DEFAULT ('') FOR [klr__ref]
END

