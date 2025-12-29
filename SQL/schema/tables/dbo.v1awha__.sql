SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1awha__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1awha__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[awha_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[awha_vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aw___oms] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf__oms] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_2] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[aantprod] [int] NOT NULL,
	[vast_pry] [float] NOT NULL,
	[vast_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_grd1] [float] NOT NULL,
	[ant_hlp1] [int] NOT NULL,
	[usrinvst] [int] NOT NULL,
	[aantal__] [float] NOT NULL,
	[aant_prc] [float] NOT NULL,
	[inssttot] [float] NOT NULL,
	[insprtot] [float] NOT NULL,
	[ant_grd2] [float] NOT NULL,
	[ant_norm] [float] NOT NULL,
	[tyd_norm] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_hlp2] [int] NOT NULL,
	[usrinpct] [float] NOT NULL,
	[pry_aant] [float] NOT NULL,
	[supp_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr_vstrn] [float] NOT NULL,
	[pr_vrtrn] [float] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[lonen__s] [float] NOT NULL,
	[machi__s] [float] NOT NULL,
	[overh__s] [float] NOT NULL,
	[grdvb__s] [float] NOT NULL,
	[oa_____s] [float] NOT NULL,
	[grdvb_t_] [float] NOT NULL,
	[oa____t_] [float] NOT NULL,
	[grdvb_ts] [float] NOT NULL,
	[oa____ts] [float] NOT NULL,
	[prijs___] [float] NOT NULL,
	[suppl___] [float] NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_vast] [float] NOT NULL,
	[kst__var] [float] NOT NULL,
	[awpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[keus_ant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[alledruk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[automat_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[use_ostf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typeostf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[firstjob] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__len] [float] NOT NULL,
	[afw__gap] [float] NOT NULL,
	[ch_vsins] [float] NOT NULL,
	[ch_vrins] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i1_awha1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[sub__ref] ASC,
	[awst_srt] ASC,
	[awha_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1awha__]') AND name = N'i1_awha2')
CREATE NONCLUSTERED INDEX [i1_awha2] ON [dbo].[v1awha__]
(
	[off__ref] ASC,
	[awst_srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__awst_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__awst_srt]  DEFAULT ('') FOR [awst_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__awha_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__awha_ref]  DEFAULT ('') FOR [awha_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__awha_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__awha_vnr]  DEFAULT ('') FOR [awha_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__awst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__awst_ref]  DEFAULT ('') FOR [awst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__aw___oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__aw___oms]  DEFAULT ('') FOR [aw___oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__brf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__brf__oms]  DEFAULT ('') FOR [brf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__in_brief]  DEFAULT ('') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__kommen_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__kommen_1]  DEFAULT ('') FOR [kommen_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__aantprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__aantprod]  DEFAULT ((0)) FOR [aantprod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__vast_pry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__vast_pry]  DEFAULT ((0)) FOR [vast_pry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__vast_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__vast_tyd]  DEFAULT ('') FOR [vast_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__ant_grd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__ant_grd1]  DEFAULT ((0)) FOR [ant_grd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__ant_hlp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__ant_hlp1]  DEFAULT ((0)) FOR [ant_hlp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__usrinvst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__usrinvst]  DEFAULT ((0)) FOR [usrinvst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__aant_prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__aant_prc]  DEFAULT ((0)) FOR [aant_prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__inssttot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__inssttot]  DEFAULT ((0)) FOR [inssttot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__insprtot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__insprtot]  DEFAULT ((0)) FOR [insprtot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__ant_grd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__ant_grd2]  DEFAULT ((0)) FOR [ant_grd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__ant_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__ant_norm]  DEFAULT ((0)) FOR [ant_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__tyd_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__tyd_norm]  DEFAULT ('') FOR [tyd_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__prod_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__prod_tyd]  DEFAULT ('') FOR [prod_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__ant_hlp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__ant_hlp2]  DEFAULT ((0)) FOR [ant_hlp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__usrinpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__usrinpct]  DEFAULT ((0)) FOR [usrinpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__pry_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__pry_aant]  DEFAULT ((0)) FOR [pry_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__supp_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__supp_tyd]  DEFAULT ('') FOR [supp_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__pr_vstrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__pr_vstrn]  DEFAULT ((0)) FOR [pr_vstrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__pr_vrtrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__pr_vrtrn]  DEFAULT ((0)) FOR [pr_vrtrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__lonen__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__lonen__s]  DEFAULT ((0)) FOR [lonen__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__machi__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__machi__s]  DEFAULT ((0)) FOR [machi__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__overh__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__overh__s]  DEFAULT ((0)) FOR [overh__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__grdvb__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__grdvb__s]  DEFAULT ((0)) FOR [grdvb__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__oa_____s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__oa_____s]  DEFAULT ((0)) FOR [oa_____s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__grdvb_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__grdvb_t_]  DEFAULT ((0)) FOR [grdvb_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__oa____t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__oa____t_]  DEFAULT ((0)) FOR [oa____t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__grdvb_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__grdvb_ts]  DEFAULT ((0)) FOR [grdvb_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__oa____ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__oa____ts]  DEFAULT ((0)) FOR [oa____ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__prijs___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__prijs___]  DEFAULT ((0)) FOR [prijs___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__suppl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__suppl___]  DEFAULT ((0)) FOR [suppl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__rbkvrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__rbkvrref]  DEFAULT ('') FOR [rbkvrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__kst_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__kst_vast]  DEFAULT ((0)) FOR [kst_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__kst__var]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__kst__var]  DEFAULT ((0)) FOR [kst__var]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__awpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__awpr_ref]  DEFAULT ('') FOR [awpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__keus_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__keus_ant]  DEFAULT ('') FOR [keus_ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__alledruk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__alledruk]  DEFAULT ('') FOR [alledruk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__automat_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__automat_]  DEFAULT ('') FOR [automat_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__use_ostf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__use_ostf]  DEFAULT ('') FOR [use_ostf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__typeostf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__typeostf]  DEFAULT ('') FOR [typeostf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__firstjob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__firstjob]  DEFAULT ('') FOR [firstjob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__afw__len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__afw__len]  DEFAULT ((0)) FOR [afw__len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__afw__gap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__afw__gap]  DEFAULT ((0)) FOR [afw__gap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__ch_vsins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__ch_vsins]  DEFAULT ((0)) FOR [ch_vsins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1awha__ch_vrins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1awha__] ADD  CONSTRAINT [DF_v1awha__ch_vrins]  DEFAULT ((0)) FOR [ch_vrins]
END

