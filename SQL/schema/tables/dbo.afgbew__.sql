SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgbew__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgbew__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[aant_rol] [float] NOT NULL,
	[aantprol] [float] NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrijveld] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[aflbnref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volg_lbl] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afak_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vdgbkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbkj_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[vfak_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss_] [float] NOT NULL,
	[bedv__bm] [float] NOT NULL,
	[pr_stock] [float] NOT NULL,
	[pr_incl_] [float] NOT NULL,
	[pr_excl_] [float] NOT NULL,
	[pr_inclv] [float] NOT NULL,
	[pr_exclv] [float] NOT NULL,
	[pr_inclo] [float] NOT NULL,
	[pr_exclo] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[koersvkp] [float] NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgb_id2] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC,
	[soort___] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgbew__]') AND name = N'afgb_id1')
CREATE NONCLUSTERED INDEX [afgb_id1] ON [dbo].[afgbew__]
(
	[afg__ref] ASC,
	[datum___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__afg__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__afg__rpn]  DEFAULT ('') FOR [afg__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__aant_rol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__aant_rol]  DEFAULT ((0)) FOR [aant_rol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__aantprol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__aantprol]  DEFAULT ((0)) FOR [aantprol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__vrijveld]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__vrijveld]  DEFAULT ('') FOR [vrijveld]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__aflbnref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__aflbnref]  DEFAULT ('') FOR [aflbnref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__volg_lbl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__volg_lbl]  DEFAULT ('') FOR [volg_lbl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__lev__tst]  DEFAULT ('') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__afak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__afak_ref]  DEFAULT ('') FOR [afak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__vdgbkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__vdgbkref]  DEFAULT ('') FOR [vdgbkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__vbkj_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__vbkj_ref]  DEFAULT ('') FOR [vbkj_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__vfak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__vfak_ref]  DEFAULT ('') FOR [vfak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__kommiss_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__kommiss_]  DEFAULT ((0)) FOR [kommiss_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__bedv__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__bedv__bm]  DEFAULT ((0)) FOR [bedv__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__pr_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__pr_stock]  DEFAULT ((0)) FOR [pr_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__pr_incl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__pr_incl_]  DEFAULT ((0)) FOR [pr_incl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__pr_excl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__pr_excl_]  DEFAULT ((0)) FOR [pr_excl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__pr_inclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__pr_inclv]  DEFAULT ((0)) FOR [pr_inclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__pr_exclv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__pr_exclv]  DEFAULT ((0)) FOR [pr_exclv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__pr_inclo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__pr_inclo]  DEFAULT ((0)) FOR [pr_inclo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__pr_exclo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__pr_exclo]  DEFAULT ((0)) FOR [pr_exclo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__koersvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__koersvkp]  DEFAULT ((0)) FOR [koersvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgbew__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgbew__] ADD  CONSTRAINT [DF_afgbew__prys_srt]  DEFAULT ('') FOR [prys_srt]
END

