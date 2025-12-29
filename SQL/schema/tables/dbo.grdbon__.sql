SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[grdbon__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[grdbon__](
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bs___dat] [date] NOT NULL,
	[glev_dat] [date] NOT NULL,
	[glev_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gvrz_dat] [date] NOT NULL,
	[gvrz_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc1] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[knplocrf] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd__com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd_com2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd__lay] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prjct_pr] [float] NOT NULL,
	[lev1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1__nm] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2__nm] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3__nm] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev3_kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1__pr] [float] NOT NULL,
	[lev2__pr] [float] NOT NULL,
	[lev3__pr] [float] NOT NULL,
	[verantw1] [nvarchar](70) COLLATE Latin1_General_CI_AS NOT NULL,
	[verantw2] [nvarchar](70) COLLATE Latin1_General_CI_AS NOT NULL,
	[verantw3] [nvarchar](70) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [grbonidx] PRIMARY KEY CLUSTERED 
(
	[grbonref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[grdbon__]') AND name = N'grbonid2')
CREATE NONCLUSTERED INDEX [grbonid2] ON [dbo].[grdbon__]
(
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__bs___dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__bs___dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bs___dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__glev_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__glev_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [glev_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__glev_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__glev_uur]  DEFAULT ('') FOR [glev_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__gvrz_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__gvrz_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gvrz_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__gvrz_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__gvrz_uur]  DEFAULT ('') FOR [gvrz_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev_loc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev_loc1]  DEFAULT ('') FOR [lev_loc1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev_loc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev_loc2]  DEFAULT ('') FOR [lev_loc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev_loc3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev_loc3]  DEFAULT ('') FOR [lev_loc3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__knplocrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__knplocrf]  DEFAULT ('') FOR [knplocrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__grd__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__grd__com]  DEFAULT ('') FOR [grd__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__grd_com2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__grd_com2]  DEFAULT ('') FOR [grd_com2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__grd__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__grd__lay]  DEFAULT ('') FOR [grd__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__edi__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__edi__tst]  DEFAULT ('') FOR [edi__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__prjct_pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__prjct_pr]  DEFAULT ((0)) FOR [prjct_pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev1_ref]  DEFAULT ('') FOR [lev1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev2_ref]  DEFAULT ('') FOR [lev2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev3_ref]  DEFAULT ('') FOR [lev3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev1__nm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev1__nm]  DEFAULT ('') FOR [lev1__nm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev2__nm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev2__nm]  DEFAULT ('') FOR [lev2__nm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev3__nm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev3__nm]  DEFAULT ('') FOR [lev3__nm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev1_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev1_kom]  DEFAULT ('') FOR [lev1_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev2_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev2_kom]  DEFAULT ('') FOR [lev2_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev3_kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev3_kom]  DEFAULT ('') FOR [lev3_kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev1__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev1__pr]  DEFAULT ((0)) FOR [lev1__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev2__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev2__pr]  DEFAULT ((0)) FOR [lev2__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__lev3__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__lev3__pr]  DEFAULT ((0)) FOR [lev3__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__verantw1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__verantw1]  DEFAULT ('') FOR [verantw1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__verantw2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__verantw2]  DEFAULT ('') FOR [verantw2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__verantw3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__verantw3]  DEFAULT ('') FOR [verantw3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grdbon__levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grdbon__] ADD  CONSTRAINT [DF_grdbon__levvwref]  DEFAULT ('') FOR [levvwref]
END

