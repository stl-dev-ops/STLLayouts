SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vkdtrg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vkdtrg__](
	[vdok__nr] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz_mij_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__trg] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__dat] [date] NOT NULL,
	[vrvl_dat] [date] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[koers___] [float] NOT NULL,
	[aant_dec] [int] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[totf__vm] [float] NOT NULL,
	[totf__bm] [float] NOT NULL,
	[betd__vm] [float] NOT NULL,
	[betd__bm] [float] NOT NULL,
	[ngbet_vm] [float] NOT NULL,
	[ngbet_bm] [float] NOT NULL,
	[belf____] [float] NOT NULL,
	[btwf____] [float] NOT NULL,
	[wissel__] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[comment_] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [vkdtrgi3] PRIMARY KEY CLUSTERED 
(
	[vdok__nr] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vkdtrg__]') AND name = N'idx1vdtg')
CREATE NONCLUSTERED INDEX [idx1vdtg] ON [dbo].[vkdtrg__]
(
	[dossier_] ASC,
	[vrz_mij_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vkdtrg__]') AND name = N'idx2vdtg')
CREATE NONCLUSTERED INDEX [idx2vdtg] ON [dbo].[vkdtrg__]
(
	[kla__ref] ASC,
	[vrvl_dat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vkdtrg__]') AND name = N'idx3vdtg')
CREATE NONCLUSTERED INDEX [idx3vdtg] ON [dbo].[vkdtrg__]
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__vdok__nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__vdok__nr]  DEFAULT ('') FOR [vdok__nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__vrz_mij_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__vrz_mij_]  DEFAULT ('') FOR [vrz_mij_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__job__trg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__job__trg]  DEFAULT ('') FOR [job__trg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__vrvl_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__vrvl_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrvl_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__totf__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__totf__vm]  DEFAULT ((0)) FOR [totf__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__totf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__totf__bm]  DEFAULT ((0)) FOR [totf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__betd__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__betd__bm]  DEFAULT ((0)) FOR [betd__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__ngbet_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__ngbet_vm]  DEFAULT ((0)) FOR [ngbet_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__ngbet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__ngbet_bm]  DEFAULT ((0)) FOR [ngbet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__belf____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__belf____]  DEFAULT ((0)) FOR [belf____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__btwf____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__btwf____]  DEFAULT ((0)) FOR [btwf____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__wissel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__wissel__]  DEFAULT ('') FOR [wissel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkdtrg__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkdtrg__] ADD  CONSTRAINT [DF_vkdtrg__comment_]  DEFAULT ('') FOR [comment_]
END

