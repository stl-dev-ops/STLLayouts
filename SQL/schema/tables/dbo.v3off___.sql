SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3off___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3off___](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[off1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[best_dat] [date] NOT NULL,
	[user____] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[wij__dat] [date] NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aard____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rfrt_kla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[lock_usr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vdt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gesl_bre] [float] NOT NULL,
	[gesl_len] [float] NOT NULL,
	[rug_____] [float] NOT NULL,
	[vouw____] [float] NOT NULL,
	[vouw___2] [float] NOT NULL,
	[open_bre] [float] NOT NULL,
	[open_len] [float] NOT NULL,
	[oplage__] [float] NOT NULL,
	[opl__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opl__oms] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opl__brf] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantprod] [int] NOT NULL,
	[plts_kod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knplkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__brf] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fsc__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[krit___1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[krit___2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[klassemt] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[offa_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[offq_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type__oa] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pct__fin] [float] NOT NULL,
	[pct__stk] [float] NOT NULL,
	[brf____1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf____2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf____3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf____4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf____5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf__opl] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_fmt_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_fmt1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_fmt2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_fmt3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lmd__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_gram] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blauwdrk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[uithalen] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pos_neg_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nasndn__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[katinoff] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inextgew] [float] NOT NULL,
	[extgew__] [float] NOT NULL,
	[extgewst] [float] NOT NULL,
	[tot__gew] [float] NOT NULL,
	[vrbpapm2] [float] NOT NULL,
	[vrbpap__] [float] NOT NULL,
	[pry__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rekprykd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reken___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp____b] [float] NOT NULL,
	[vkp__bvm] [float] NOT NULL,
	[vkp____s] [float] NOT NULL,
	[supp_ant] [float] NOT NULL,
	[supp_vkp] [float] NOT NULL,
	[suppvkvm] [float] NOT NULL,
	[vkp_1000] [float] NOT NULL,
	[vk1000vm] [float] NOT NULL,
	[vkp_eenh] [float] NOT NULL,
	[vkeenhvm] [float] NOT NULL,
	[brf_eenh] [int] NOT NULL,
	[kommiss_] [float] NOT NULL,
	[kommiss2] [float] NOT NULL,
	[vkp_uren] [float] NOT NULL,
	[vkpsuren] [float] NOT NULL,
	[stdvkp_b] [float] NOT NULL,
	[stdvkp_s] [float] NOT NULL,
	[marge__b] [float] NOT NULL,
	[min__twb] [float] NOT NULL,
	[marge2_b] [float] NOT NULL,
	[ratio1_b] [float] NOT NULL,
	[ratio2_b] [float] NOT NULL,
	[tw_drukb] [float] NOT NULL,
	[dek_tw_b] [float] NOT NULL,
	[vkp_tw_b] [float] NOT NULL,
	[vkpakp_b] [float] NOT NULL,
	[vkppap_b] [float] NOT NULL,
	[vkp_twlb] [float] NOT NULL,
	[loo____b] [float] NOT NULL,
	[mac____b] [float] NOT NULL,
	[ovh____b] [float] NOT NULL,
	[paper__b] [float] NOT NULL,
	[grdst__b] [float] NOT NULL,
	[onda___b] [float] NOT NULL,
	[gross_margin_m2] [float] NULL,
	[gross_margin] [float] NULL,
	[gross_margin_pct] [float] NULL,
	[vkp__kom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp___ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp__his] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vk_k_pct] [float] NOT NULL,
	[vk_k_vst] [float] NOT NULL,
	[vk_kmpct] [float] NOT NULL,
	[vk_kfpct] [float] NOT NULL,
	[vk_topct] [float] NOT NULL,
	[vk_tovst] [float] NOT NULL,
	[vkpan_pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[offbr_pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plts__pp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[uptodate] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst____b] [float] NOT NULL,
	[kst____s] [float] NOT NULL,
	[kstb_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage_1] [float] NOT NULL,
	[oplage_2] [float] NOT NULL,
	[oplage_3] [float] NOT NULL,
	[oplage_4] [float] NOT NULL,
	[oplage_5] [float] NOT NULL,
	[vkp____1] [float] NOT NULL,
	[vkp____2] [float] NOT NULL,
	[vkp____3] [float] NOT NULL,
	[vkp____4] [float] NOT NULL,
	[vkp____5] [float] NOT NULL,
	[stukp__1] [float] NOT NULL,
	[stukp__2] [float] NOT NULL,
	[stukp__3] [float] NOT NULL,
	[stukp__4] [float] NOT NULL,
	[stukp__5] [float] NOT NULL,
	[kst_afgw] [float] NOT NULL,
	[uitgeput] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom_afsl] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[weblabel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prijsweb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[internet] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodcalc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp_calc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tijd_wij] [float] NOT NULL,
	[fmtpag_x] [float] NOT NULL,
	[fmtpag_y] [float] NOT NULL,
	[aant_vrs] [int] NOT NULL,
	[prodcrea] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_jdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[url__lay] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[gang_job] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gang_kst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tmpl_ref] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[editeren] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[editordo] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__inh] [int] NOT NULL,
	[grp__oms] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__brf] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[virt_vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[ppjob_id] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [i3_off_1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3off___]') AND name = N'i3_off_2')
CREATE UNIQUE NONCLUSTERED INDEX [i3_off_2] ON [dbo].[v3off___]
(
	[off__rpn] ASC,
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3off___]') AND name = N'i3_off_4')
CREATE NONCLUSTERED INDEX [i3_off_4] ON [dbo].[v3off___]
(
	[bon__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___off__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___off__vnr]  DEFAULT ('') FOR [off__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___off__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___off__rpn]  DEFAULT ('') FOR [off__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___off1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___off1_ref]  DEFAULT ('') FOR [off1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___best_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___best_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [best_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___wij__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___aard____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___aard____]  DEFAULT ('') FOR [aard____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___rfrt_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___rfrt_kla]  DEFAULT ('') FOR [rfrt_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___lock_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___lock_usr]  DEFAULT ('') FOR [lock_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kpn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kpn__srt]  DEFAULT ('') FOR [kpn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___afw__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___afw__srt]  DEFAULT ('') FOR [afw__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vdt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vdt__ref]  DEFAULT ('') FOR [vdt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___gesl_bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___gesl_bre]  DEFAULT ((0)) FOR [gesl_bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___gesl_len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___gesl_len]  DEFAULT ((0)) FOR [gesl_len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___rug_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___rug_____]  DEFAULT ((0)) FOR [rug_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vouw____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vouw____]  DEFAULT ((0)) FOR [vouw____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vouw___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vouw___2]  DEFAULT ((0)) FOR [vouw___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___open_bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___open_bre]  DEFAULT ((0)) FOR [open_bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___open_len]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___open_len]  DEFAULT ((0)) FOR [open_len]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___opl__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___opl__typ]  DEFAULT ('') FOR [opl__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___opl__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___opl__oms]  DEFAULT ('') FOR [opl__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___opl__brf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___opl__brf]  DEFAULT ('') FOR [opl__brf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___aantprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___aantprod]  DEFAULT ((0)) FOR [aantprod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___plts_kod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___plts_kod]  DEFAULT ('') FOR [plts_kod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___knplkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___knplkref]  DEFAULT ('') FOR [knplkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___trn__brf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___trn__brf]  DEFAULT ('') FOR [trn__brf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___fsc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___fsc__ref]  DEFAULT ('') FOR [fsc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___krit___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___krit___1]  DEFAULT ('') FOR [krit___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___krit___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___krit___2]  DEFAULT ('') FOR [krit___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___klassemt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___klassemt]  DEFAULT ('') FOR [klassemt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___offa_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___offa_ref]  DEFAULT ('') FOR [offa_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___offq_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___offq_ref]  DEFAULT ('') FOR [offq_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___fiat____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___fiat____]  DEFAULT ('') FOR [fiat____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___type_prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___type_prd]  DEFAULT ('') FOR [type_prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___type__oa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___type__oa]  DEFAULT ('') FOR [type__oa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___pct__fin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___pct__fin]  DEFAULT ((0)) FOR [pct__fin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___pct__stk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___pct__stk]  DEFAULT ((0)) FOR [pct__stk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf____1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf____1]  DEFAULT ('') FOR [brf____1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf____2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf____2]  DEFAULT ('') FOR [brf____2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf____3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf____3]  DEFAULT ('') FOR [brf____3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf____4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf____4]  DEFAULT ('') FOR [brf____4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf____5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf____5]  DEFAULT ('') FOR [brf____5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf__opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf__opl]  DEFAULT ('') FOR [brf__opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf_fmt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf_fmt_]  DEFAULT ('') FOR [brf_fmt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf_fmt1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf_fmt1]  DEFAULT ('') FOR [brf_fmt1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf_fmt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf_fmt2]  DEFAULT ('') FOR [brf_fmt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf_fmt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf_fmt3]  DEFAULT ('') FOR [brf_fmt3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___omd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___omd__ref]  DEFAULT ('') FOR [omd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___pmd1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___pmd1_ref]  DEFAULT ('') FOR [pmd1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___pmd2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___pmd2_ref]  DEFAULT ('') FOR [pmd2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___tmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___tmd__ref]  DEFAULT ('') FOR [tmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___lmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___lmd__ref]  DEFAULT ('') FOR [lmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf_gram]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf_gram]  DEFAULT ('') FOR [brf_gram]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___blauwdrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___blauwdrk]  DEFAULT ('') FOR [blauwdrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___uithalen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___uithalen]  DEFAULT ('') FOR [uithalen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___pos_neg_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___pos_neg_]  DEFAULT ('') FOR [pos_neg_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___nasndn__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___nasndn__]  DEFAULT ('') FOR [nasndn__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___katinoff]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___katinoff]  DEFAULT ('') FOR [katinoff]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___inextgew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___inextgew]  DEFAULT ((0)) FOR [inextgew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___extgew__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___extgew__]  DEFAULT ((0)) FOR [extgew__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___extgewst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___extgewst]  DEFAULT ((0)) FOR [extgewst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___tot__gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___tot__gew]  DEFAULT ((0)) FOR [tot__gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vrbpapm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vrbpapm2]  DEFAULT ((0)) FOR [vrbpapm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vrbpap__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vrbpap__]  DEFAULT ((0)) FOR [vrbpap__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___pry__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___pry__ref]  DEFAULT ('') FOR [pry__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___rekprykd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___rekprykd]  DEFAULT ('') FOR [rekprykd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___reken___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___reken___]  DEFAULT ('') FOR [reken___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp____b]  DEFAULT ((0)) FOR [vkp____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp__bvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp__bvm]  DEFAULT ((0)) FOR [vkp__bvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp____s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp____s]  DEFAULT ((0)) FOR [vkp____s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___supp_ant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___supp_ant]  DEFAULT ((0)) FOR [supp_ant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___supp_vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___supp_vkp]  DEFAULT ((0)) FOR [supp_vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___suppvkvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___suppvkvm]  DEFAULT ((0)) FOR [suppvkvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp_1000]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp_1000]  DEFAULT ((0)) FOR [vkp_1000]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vk1000vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vk1000vm]  DEFAULT ((0)) FOR [vk1000vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp_eenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp_eenh]  DEFAULT ((0)) FOR [vkp_eenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkeenhvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkeenhvm]  DEFAULT ((0)) FOR [vkeenhvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___brf_eenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___brf_eenh]  DEFAULT ((0)) FOR [brf_eenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kommiss_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kommiss_]  DEFAULT ((0)) FOR [kommiss_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kommiss2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kommiss2]  DEFAULT ((0)) FOR [kommiss2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp_uren]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp_uren]  DEFAULT ((0)) FOR [vkp_uren]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkpsuren]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkpsuren]  DEFAULT ((0)) FOR [vkpsuren]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___stdvkp_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___stdvkp_b]  DEFAULT ((0)) FOR [stdvkp_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___stdvkp_s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___stdvkp_s]  DEFAULT ((0)) FOR [stdvkp_s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___marge__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___marge__b]  DEFAULT ((0)) FOR [marge__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___min__twb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___min__twb]  DEFAULT ((0)) FOR [min__twb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___marge2_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___marge2_b]  DEFAULT ((0)) FOR [marge2_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___ratio1_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___ratio1_b]  DEFAULT ((0)) FOR [ratio1_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___ratio2_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___ratio2_b]  DEFAULT ((0)) FOR [ratio2_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___tw_drukb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___tw_drukb]  DEFAULT ((0)) FOR [tw_drukb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___dek_tw_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___dek_tw_b]  DEFAULT ((0)) FOR [dek_tw_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp_tw_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp_tw_b]  DEFAULT ((0)) FOR [vkp_tw_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkpakp_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkpakp_b]  DEFAULT ((0)) FOR [vkpakp_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkppap_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkppap_b]  DEFAULT ((0)) FOR [vkppap_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp_twlb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp_twlb]  DEFAULT ((0)) FOR [vkp_twlb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___loo____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___loo____b]  DEFAULT ((0)) FOR [loo____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___mac____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___mac____b]  DEFAULT ((0)) FOR [mac____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___ovh____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___ovh____b]  DEFAULT ((0)) FOR [ovh____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___paper__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___paper__b]  DEFAULT ((0)) FOR [paper__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___grdst__b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___grdst__b]  DEFAULT ((0)) FOR [grdst__b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___onda___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___onda___b]  DEFAULT ((0)) FOR [onda___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp__kom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp__kom]  DEFAULT ('') FOR [vkp__kom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp___ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp___ok]  DEFAULT ('') FOR [vkp___ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp__his]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp__his]  DEFAULT ('') FOR [vkp__his]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kst__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kst__vkp]  DEFAULT ('') FOR [kst__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vk_k_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vk_k_pct]  DEFAULT ((0)) FOR [vk_k_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vk_k_vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vk_k_vst]  DEFAULT ((0)) FOR [vk_k_vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vk_kmpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vk_kmpct]  DEFAULT ((0)) FOR [vk_kmpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vk_kfpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vk_kfpct]  DEFAULT ((0)) FOR [vk_kfpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vk_topct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vk_topct]  DEFAULT ((0)) FOR [vk_topct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vk_tovst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vk_tovst]  DEFAULT ((0)) FOR [vk_tovst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkpan_pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkpan_pp]  DEFAULT ('') FOR [vkpan_pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___offbr_pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___offbr_pp]  DEFAULT ('') FOR [offbr_pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___plts__pp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___plts__pp]  DEFAULT ('') FOR [plts__pp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___uptodate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___uptodate]  DEFAULT ('') FOR [uptodate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kst____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kst____b]  DEFAULT ((0)) FOR [kst____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kst____s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kst____s]  DEFAULT ((0)) FOR [kst____s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kstb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kstb_ref]  DEFAULT ('') FOR [kstb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___oplage_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___oplage_1]  DEFAULT ((0)) FOR [oplage_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___oplage_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___oplage_2]  DEFAULT ((0)) FOR [oplage_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___oplage_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___oplage_3]  DEFAULT ((0)) FOR [oplage_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___oplage_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___oplage_4]  DEFAULT ((0)) FOR [oplage_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___oplage_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___oplage_5]  DEFAULT ((0)) FOR [oplage_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp____1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp____1]  DEFAULT ((0)) FOR [vkp____1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp____2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp____2]  DEFAULT ((0)) FOR [vkp____2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp____3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp____3]  DEFAULT ((0)) FOR [vkp____3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp____4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp____4]  DEFAULT ((0)) FOR [vkp____4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp____5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp____5]  DEFAULT ((0)) FOR [vkp____5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___stukp__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___stukp__1]  DEFAULT ((0)) FOR [stukp__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___stukp__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___stukp__2]  DEFAULT ((0)) FOR [stukp__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___stukp__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___stukp__3]  DEFAULT ((0)) FOR [stukp__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___stukp__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___stukp__4]  DEFAULT ((0)) FOR [stukp__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___stukp__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___stukp__5]  DEFAULT ((0)) FOR [stukp__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kst_afgw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kst_afgw]  DEFAULT ((0)) FOR [kst_afgw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___uitgeput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___uitgeput]  DEFAULT ('') FOR [uitgeput]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___kom_afsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___kom_afsl]  DEFAULT ('') FOR [kom_afsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___weblabel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___weblabel]  DEFAULT ('') FOR [weblabel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___prijsweb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___prijsweb]  DEFAULT ('') FOR [prijsweb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___internet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___internet]  DEFAULT ('') FOR [internet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___prodcalc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___prodcalc]  DEFAULT ('') FOR [prodcalc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___vkp_calc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___vkp_calc]  DEFAULT ('') FOR [vkp_calc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___tijd_wij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___tijd_wij]  DEFAULT ((0)) FOR [tijd_wij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___fmtpag_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___fmtpag_x]  DEFAULT ((0)) FOR [fmtpag_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___fmtpag_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___fmtpag_y]  DEFAULT ((0)) FOR [fmtpag_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___aant_vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___aant_vrs]  DEFAULT ((0)) FOR [aant_vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___prodcrea]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___prodcrea]  DEFAULT ('') FOR [prodcrea]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___prod_jdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___prod_jdf]  DEFAULT ('') FOR [prod_jdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___url__lay]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___url__lay]  DEFAULT ('') FOR [url__lay]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___gang_job]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___gang_job]  DEFAULT ('') FOR [gang_job]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___gang_kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___gang_kst]  DEFAULT ('') FOR [gang_kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___tmpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___tmpl_ref]  DEFAULT ('') FOR [tmpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___editeren]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___editeren]  DEFAULT ('') FOR [editeren]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___editordo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___editordo]  DEFAULT ('') FOR [editordo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___grp__prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___grp__prd]  DEFAULT ('') FOR [grp__prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___grp__inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___grp__inh]  DEFAULT ((0)) FOR [grp__inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___grp__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___grp__oms]  DEFAULT ('') FOR [grp__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___grp__brf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___grp__brf]  DEFAULT ('') FOR [grp__brf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___virt_vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___virt_vrs]  DEFAULT ('') FOR [virt_vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3off___ppjob_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3off___] ADD  CONSTRAINT [DF_v3off___ppjob_id]  DEFAULT ('') FOR [ppjob_id]
END

