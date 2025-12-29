SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ondaan__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ondaan__](
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[onda_rpn] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_kalk] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms1_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms2_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms3_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms4_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms5_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms6_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms7_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms8_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms9_kln] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fromus__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[trspltyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsplref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fromyou_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[onderweg] [int] NOT NULL,
	[pr_form_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[forf__bm] [float] NOT NULL,
	[preen_bm] [float] NOT NULL,
	[pr_veenh] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wd___ptn] [float] NOT NULL,
	[wd___vtn] [float] NOT NULL,
	[aantdflt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk6] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk7] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fko__rk8] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev4_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev5_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev4_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev5_knp] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev4_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev5_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[offlulnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[offwrdnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[oa_bonnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdwlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[levlaynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prform_m] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[forfbm_m] [float] NOT NULL,
	[preenbmm] [float] NOT NULL,
	[proc___m] [float] NOT NULL,
	[wdoms_01] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_02] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_03] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_04] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_05] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_06] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_07] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_08] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_09] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_10] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_11] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_12] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_13] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_14] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_15] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[wdoms_16] [nvarchar](78) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[krd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_6] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ondaani0] PRIMARY KEY CLUSTERED 
(
	[onda_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ondaan__]') AND name = N'ondaani1')
CREATE NONCLUSTERED INDEX [ondaani1] ON [dbo].[ondaan__]
(
	[rbk__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__onda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__onda_ref]  DEFAULT ('') FOR [onda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__onda_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__onda_rpn]  DEFAULT ('') FOR [onda_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms_kalk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms_kalk]  DEFAULT ('') FOR [oms_kalk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms1_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms1_kln]  DEFAULT ('') FOR [oms1_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms2_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms2_kln]  DEFAULT ('') FOR [oms2_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms3_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms3_kln]  DEFAULT ('') FOR [oms3_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms4_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms4_kln]  DEFAULT ('') FOR [oms4_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms5_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms5_kln]  DEFAULT ('') FOR [oms5_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms6_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms6_kln]  DEFAULT ('') FOR [oms6_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms7_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms7_kln]  DEFAULT ('') FOR [oms7_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms8_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms8_kln]  DEFAULT ('') FOR [oms8_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oms9_kln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oms9_kln]  DEFAULT ('') FOR [oms9_kln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev1_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev1_srt]  DEFAULT ('') FOR [lev1_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fromus__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fromus__]  DEFAULT ('') FOR [fromus__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__trspltyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__trspltyp]  DEFAULT ('') FOR [trspltyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__trsplref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__trsplref]  DEFAULT ('') FOR [trsplref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev2_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev2_srt]  DEFAULT ('') FOR [lev2_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fromyou_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fromyou_]  DEFAULT ('') FOR [fromyou_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__trsp_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__trsp_typ]  DEFAULT ('') FOR [trsp_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__trsp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__trsp_ref]  DEFAULT ('') FOR [trsp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__onderweg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__onderweg]  DEFAULT ((0)) FOR [onderweg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__pr_form_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__pr_form_]  DEFAULT ('') FOR [pr_form_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__forf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__forf__bm]  DEFAULT ((0)) FOR [forf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__preen_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__preen_bm]  DEFAULT ((0)) FOR [preen_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__pr_veenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__pr_veenh]  DEFAULT ('') FOR [pr_veenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wd___ptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wd___ptn]  DEFAULT ((0)) FOR [wd___ptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wd___vtn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wd___vtn]  DEFAULT ((0)) FOR [wd___vtn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__aantdflt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__aantdflt]  DEFAULT ('') FOR [aantdflt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fko__rek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fko__rek]  DEFAULT ('') FOR [fko__rek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fko__rk2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fko__rk2]  DEFAULT ('') FOR [fko__rk2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fko__rk3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fko__rk3]  DEFAULT ('') FOR [fko__rk3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fko__rk4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fko__rk4]  DEFAULT ('') FOR [fko__rk4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fko__rk5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fko__rk5]  DEFAULT ('') FOR [fko__rk5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fko__rk6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fko__rk6]  DEFAULT ('') FOR [fko__rk6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fko__rk7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fko__rk7]  DEFAULT ('') FOR [fko__rk7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__fko__rk8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__fko__rk8]  DEFAULT ('') FOR [fko__rk8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__kst_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__kst_rek1]  DEFAULT ('') FOR [kst_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__kst_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__kst_rek2]  DEFAULT ('') FOR [kst_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__kst_rek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__kst_rek3]  DEFAULT ('') FOR [kst_rek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__kst_rek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__kst_rek4]  DEFAULT ('') FOR [kst_rek4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev1_ref]  DEFAULT ('') FOR [lev1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev2_ref]  DEFAULT ('') FOR [lev2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev3_ref]  DEFAULT ('') FOR [lev3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev4_ref]  DEFAULT ('') FOR [lev4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev5_ref]  DEFAULT ('') FOR [lev5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev1_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev1_knp]  DEFAULT ('') FOR [lev1_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev2_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev2_knp]  DEFAULT ('') FOR [lev2_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev3_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev3_knp]  DEFAULT ('') FOR [lev3_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev4_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev4_knp]  DEFAULT ('') FOR [lev4_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev5_knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev5_knp]  DEFAULT ('') FOR [lev5_knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev1_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev1_kom]  DEFAULT ('') FOR [lev1_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev2_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev2_kom]  DEFAULT ('') FOR [lev2_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev3_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev3_kom]  DEFAULT ('') FOR [lev3_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev4_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev4_kom]  DEFAULT ('') FOR [lev4_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__lev5_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__lev5_kom]  DEFAULT ('') FOR [lev5_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__offlulnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__offlulnr]  DEFAULT ('') FOR [offlulnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__offwrdnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__offwrdnr]  DEFAULT ('') FOR [offwrdnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__oa_bonnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__oa_bonnr]  DEFAULT ('') FOR [oa_bonnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdwlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdwlaynr]  DEFAULT ('') FOR [wdwlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__levlaynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__levlaynr]  DEFAULT ('') FOR [levlaynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__prform_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__prform_m]  DEFAULT ('') FOR [prform_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__forfbm_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__forfbm_m]  DEFAULT ((0)) FOR [forfbm_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__preenbmm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__preenbmm]  DEFAULT ((0)) FOR [preenbmm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__proc___m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__proc___m]  DEFAULT ((0)) FOR [proc___m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_01]  DEFAULT ('') FOR [wdoms_01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_02]  DEFAULT ('') FOR [wdoms_02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_03]  DEFAULT ('') FOR [wdoms_03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_04]  DEFAULT ('') FOR [wdoms_04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_05]  DEFAULT ('') FOR [wdoms_05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_06]  DEFAULT ('') FOR [wdoms_06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_07]  DEFAULT ('') FOR [wdoms_07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_08]  DEFAULT ('') FOR [wdoms_08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_09]  DEFAULT ('') FOR [wdoms_09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_10]  DEFAULT ('') FOR [wdoms_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_11]  DEFAULT ('') FOR [wdoms_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_12]  DEFAULT ('') FOR [wdoms_12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_13]  DEFAULT ('') FOR [wdoms_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_14]  DEFAULT ('') FOR [wdoms_14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_15]  DEFAULT ('') FOR [wdoms_15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__wdoms_16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__wdoms_16]  DEFAULT ('') FOR [wdoms_16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__krd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__krd__ref]  DEFAULT ('') FOR [krd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__tsttag_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__tsttag_1]  DEFAULT ('') FOR [tsttag_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__tsttag_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__tsttag_2]  DEFAULT ('') FOR [tsttag_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__tsttag_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__tsttag_3]  DEFAULT ('') FOR [tsttag_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__tsttag_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__tsttag_4]  DEFAULT ('') FOR [tsttag_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__tsttag_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__tsttag_5]  DEFAULT ('') FOR [tsttag_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ondaan__tsttag_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ondaan__] ADD  CONSTRAINT [DF_ondaan__tsttag_6]  DEFAULT ('') FOR [tsttag_6]
END

