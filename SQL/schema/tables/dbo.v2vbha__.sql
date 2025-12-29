SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2vbha__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2vbha__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbst_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbha_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbha_vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vb___oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf__oms] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast_pry] [float] NOT NULL,
	[vast_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_grd1] [float] NOT NULL,
	[aantal__] [float] NOT NULL,
	[ant_grd2] [float] NOT NULL,
	[ant_norm] [float] NOT NULL,
	[tyd_norm] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry_aant] [float] NOT NULL,
	[rek_meth] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolomvkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsl_vast] [float] NOT NULL,
	[tsl__prc] [float] NOT NULL,
	[vkp_vast] [float] NOT NULL,
	[vkp_prpa] [float] NOT NULL,
	[vkp_prgr] [float] NOT NULL,
	[vkpr_wij] [float] NOT NULL,
	[uitl_wij] [nvarchar](35) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkpr_gvp] [float] NOT NULL,
	[vkpr_tsl] [float] NOT NULL,
	[vkprijs_] [float] NOT NULL,
	[formt__1] [float] NOT NULL,
	[formt__2] [float] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[grdvb_t_] [float] NOT NULL,
	[oa____t_] [float] NOT NULL,
	[prijs___] [float] NOT NULL,
	[rbkvsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvrref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_vast] [float] NOT NULL,
	[kst__var] [float] NOT NULL,
	[vbpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[keus_ant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i2_vbha1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[sub__ref] ASC,
	[vbst_srt] ASC,
	[vbha_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vbst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vbst_ref]  DEFAULT ('') FOR [vbst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vbst_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vbst_srt]  DEFAULT ('') FOR [vbst_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vbha_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vbha_ref]  DEFAULT ('') FOR [vbha_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vbha_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vbha_vnr]  DEFAULT ('') FOR [vbha_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vb___oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vb___oms]  DEFAULT ('') FOR [vb___oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__brf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__brf__oms]  DEFAULT ('') FOR [brf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__in_brief]  DEFAULT ('') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__kommen_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__kommen_1]  DEFAULT ('') FOR [kommen_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__kommen_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__kommen_2]  DEFAULT ('') FOR [kommen_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vast_pry]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vast_pry]  DEFAULT ((0)) FOR [vast_pry]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vast_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vast_tyd]  DEFAULT ('') FOR [vast_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__ant_grd1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__ant_grd1]  DEFAULT ((0)) FOR [ant_grd1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__ant_grd2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__ant_grd2]  DEFAULT ((0)) FOR [ant_grd2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__ant_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__ant_norm]  DEFAULT ((0)) FOR [ant_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__tyd_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__tyd_norm]  DEFAULT ('') FOR [tyd_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__prod_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__prod_tyd]  DEFAULT ('') FOR [prod_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__pry_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__pry_aant]  DEFAULT ((0)) FOR [pry_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__rek_meth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__rek_meth]  DEFAULT ('') FOR [rek_meth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__kolomvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__kolomvkp]  DEFAULT ('') FOR [kolomvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__tsl_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__tsl_vast]  DEFAULT ((0)) FOR [tsl_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__tsl__prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__tsl__prc]  DEFAULT ((0)) FOR [tsl__prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vkp_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vkp_vast]  DEFAULT ((0)) FOR [vkp_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vkp_prpa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vkp_prpa]  DEFAULT ((0)) FOR [vkp_prpa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vkp_prgr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vkp_prgr]  DEFAULT ((0)) FOR [vkp_prgr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vkpr_wij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vkpr_wij]  DEFAULT ((0)) FOR [vkpr_wij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__uitl_wij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__uitl_wij]  DEFAULT ('') FOR [uitl_wij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vkpr_gvp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vkpr_gvp]  DEFAULT ((0)) FOR [vkpr_gvp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vkpr_tsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vkpr_tsl]  DEFAULT ((0)) FOR [vkpr_tsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vkprijs_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vkprijs_]  DEFAULT ((0)) FOR [vkprijs_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__formt__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__formt__1]  DEFAULT ((0)) FOR [formt__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__formt__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__formt__2]  DEFAULT ((0)) FOR [formt__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__grdvb_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__grdvb_t_]  DEFAULT ((0)) FOR [grdvb_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__oa____t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__oa____t_]  DEFAULT ((0)) FOR [oa____t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__prijs___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__prijs___]  DEFAULT ((0)) FOR [prijs___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__rbkvsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__rbkvsref]  DEFAULT ('') FOR [rbkvsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__rbkvrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__rbkvrref]  DEFAULT ('') FOR [rbkvrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__kst_vast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__kst_vast]  DEFAULT ((0)) FOR [kst_vast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__kst__var]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__kst__var]  DEFAULT ((0)) FOR [kst__var]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__vbpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__vbpr_ref]  DEFAULT ('') FOR [vbpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2vbha__keus_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2vbha__] ADD  CONSTRAINT [DF_v2vbha__keus_ant]  DEFAULT ('') FOR [keus_ant]
END

