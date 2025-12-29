SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vkpar2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vkpar2__](
	[blauwdrk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[uithalen] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pos_neg_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nasndn__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[haaks_sn] [float] NOT NULL,
	[hoopakpa] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nsnpaksa] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vsnpaksa] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[flms_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_peh] [float] NOT NULL,
	[prysrpeh] [float] NOT NULL,
	[kern_wis] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__kat] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__kft] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__lk_] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[txt__pag] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry1_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry2_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry3_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[pry__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[alt__opl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stf__opl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp__wiz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kststvkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt__vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_pvkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt_svkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd__bas] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grddup_t] [float] NOT NULL,
	[grdmnt_t] [float] NOT NULL,
	[grdbld_t] [float] NOT NULL,
	[grdplk_t] [float] NOT NULL,
	[grdink_t] [float] NOT NULL,
	[grdlak_t] [float] NOT NULL,
	[grdpla_t] [float] NOT NULL,
	[kst__drk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_i] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_5] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_6] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_7] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_8] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[brftrn_9] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_pref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkafref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkasref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkapref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkvrzkl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbkoatrn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__tsl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__fin] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__stk] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pct__stk] [float] NOT NULL,
	[kstb_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstb_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[marge__l] [float] NOT NULL,
	[marge__r] [float] NOT NULL,
	[lblgp_mn] [float] NOT NULL,
	[lblgp_mx] [float] NOT NULL,
	[radius__] [float] NOT NULL,
	[tol__rad] [float] NOT NULL,
	[tol_etkh] [float] NOT NULL,
	[tol_etkb] [float] NOT NULL,
	[lblbleed] [float] NOT NULL,
	[grammage] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[gramm___] [float] NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[diktemic] [float] NOT NULL,
	[flm__peh] [float] NOT NULL,
	[plt__peh] [float] NOT NULL,
	[rostnpeh] [float] NOT NULL,
	[vlstnpeh] [float] NOT NULL,
	[cal1wiss] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cal4wiss] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komm_eti] [nvarchar](22) COLLATE Latin1_General_CI_AS NOT NULL,
	[pinsoffl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodoffl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tol__pap] [float] NOT NULL,
	[rbexetkb] [float] NOT NULL,
	[kst__var] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kathelio] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[katrotat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kies_drg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reken___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_staf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[beperk__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstklins] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_1] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_2] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_3] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_4] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_5] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_6] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_7] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_8] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmteti_9] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_5] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_6] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_7] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_8] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[klreti_9] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[eti__gui] [int] NOT NULL,
	[prd__web] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_vrst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[webcent_] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek__spd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rekbgspd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[w4l__url] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[w4l__pfl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[w4lklant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdg__afw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cal_edec] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[autoplvw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[autpltxt] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[w4l_appr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vkpar2i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__blauwdrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__blauwdrk]  DEFAULT ('') FOR [blauwdrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__uithalen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__uithalen]  DEFAULT ('') FOR [uithalen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pos_neg_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pos_neg_]  DEFAULT ('') FOR [pos_neg_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__nasndn__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__nasndn__]  DEFAULT ('') FOR [nasndn__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__haaks_sn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__haaks_sn]  DEFAULT ((0)) FOR [haaks_sn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__hoopakpa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__hoopakpa]  DEFAULT ('') FOR [hoopakpa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__nsnpaksa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__nsnpaksa]  DEFAULT ('') FOR [nsnpaksa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__vsnpaksa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__vsnpaksa]  DEFAULT ('') FOR [vsnpaksa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__flms_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__flms_ref]  DEFAULT ('') FOR [flms_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__prys_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__prys_typ]  DEFAULT ('') FOR [prys_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__prys_peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__prys_peh]  DEFAULT ((0)) FOR [prys_peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__prysrpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__prysrpeh]  DEFAULT ((0)) FOR [prysrpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kern_wis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kern_wis]  DEFAULT ('') FOR [kern_wis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__txt__kat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__txt__kat]  DEFAULT ('') FOR [txt__kat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__txt__kft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__txt__kft]  DEFAULT ('') FOR [txt__kft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__txt__lk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__txt__lk_]  DEFAULT ('') FOR [txt__lk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__txt__pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__txt__pag]  DEFAULT ('') FOR [txt__pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pry1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pry1_ref]  DEFAULT ('') FOR [pry1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pry2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pry2_ref]  DEFAULT ('') FOR [pry2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pry3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pry3_ref]  DEFAULT ('') FOR [pry3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pry__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pry__typ]  DEFAULT ('') FOR [pry__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__alt__opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__alt__opl]  DEFAULT ('') FOR [alt__opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__stf__opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__stf__opl]  DEFAULT ('') FOR [stf__opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__vkp__wiz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__vkp__wiz]  DEFAULT ('') FOR [vkp__wiz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kst__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kst__vkp]  DEFAULT ('') FOR [kst__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kststvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kststvkp]  DEFAULT ('') FOR [kststvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__srt__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__srt__vkp]  DEFAULT ('') FOR [srt__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__srt_pvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__srt_pvkp]  DEFAULT ('') FOR [srt_pvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__srt_svkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__srt_svkp]  DEFAULT ('') FOR [srt_svkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pmd__bas]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pmd__bas]  DEFAULT ('') FOR [pmd__bas]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__grddup_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__grddup_t]  DEFAULT ((0)) FOR [grddup_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__grdmnt_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__grdmnt_t]  DEFAULT ((0)) FOR [grdmnt_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__grdbld_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__grdbld_t]  DEFAULT ((0)) FOR [grdbld_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__grdplk_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__grdplk_t]  DEFAULT ((0)) FOR [grdplk_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__grdink_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__grdink_t]  DEFAULT ((0)) FOR [grdink_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__grdlak_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__grdlak_t]  DEFAULT ((0)) FOR [grdlak_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__grdpla_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__grdpla_t]  DEFAULT ((0)) FOR [grdpla_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kst__drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kst__drk]  DEFAULT ('') FOR [kst__drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_i]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_i]  DEFAULT ('') FOR [brftrn_i]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_1]  DEFAULT ('') FOR [brftrn_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_2]  DEFAULT ('') FOR [brftrn_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_3]  DEFAULT ('') FOR [brftrn_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_4]  DEFAULT ('') FOR [brftrn_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_5]  DEFAULT ('') FOR [brftrn_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_6]  DEFAULT ('') FOR [brftrn_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_7]  DEFAULT ('') FOR [brftrn_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_8]  DEFAULT ('') FOR [brftrn_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__brftrn_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__brftrn_9]  DEFAULT ('') FOR [brftrn_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbk_pref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbk_pref]  DEFAULT ('') FOR [rbk_pref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbkafref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbkafref]  DEFAULT ('') FOR [rbkafref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbkasref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbkasref]  DEFAULT ('') FOR [rbkasref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbkapref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbkapref]  DEFAULT ('') FOR [rbkapref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbkvrzkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbkvrzkl]  DEFAULT ('') FOR [rbkvrzkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbk__trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbk__trn]  DEFAULT ('') FOR [rbk__trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbkoatrn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbkoatrn]  DEFAULT ('') FOR [rbkoatrn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbk__tsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbk__tsl]  DEFAULT ('') FOR [rbk__tsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbk__fin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbk__fin]  DEFAULT ('') FOR [rbk__fin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbk__stk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbk__stk]  DEFAULT ('') FOR [rbk__stk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pct__stk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pct__stk]  DEFAULT ((0)) FOR [pct__stk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kstb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kstb_ref]  DEFAULT ('') FOR [kstb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kstb_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kstb_srt]  DEFAULT ('') FOR [kstb_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__marge__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__marge__l]  DEFAULT ((0)) FOR [marge__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__marge__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__marge__r]  DEFAULT ((0)) FOR [marge__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__lblgp_mn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__lblgp_mn]  DEFAULT ((0)) FOR [lblgp_mn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__lblgp_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__lblgp_mx]  DEFAULT ((0)) FOR [lblgp_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__radius__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__radius__]  DEFAULT ((0)) FOR [radius__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__tol__rad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__tol__rad]  DEFAULT ((0)) FOR [tol__rad]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__tol_etkh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__tol_etkh]  DEFAULT ((0)) FOR [tol_etkh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__tol_etkb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__tol_etkb]  DEFAULT ((0)) FOR [tol_etkb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__lblbleed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__lblbleed]  DEFAULT ((0)) FOR [lblbleed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__grammage]  DEFAULT ('') FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__gramm___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__gramm___]  DEFAULT ((0)) FOR [gramm___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__diktemic]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__diktemic]  DEFAULT ((0)) FOR [diktemic]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__flm__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__flm__peh]  DEFAULT ((0)) FOR [flm__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__plt__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__plt__peh]  DEFAULT ((0)) FOR [plt__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rostnpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rostnpeh]  DEFAULT ((0)) FOR [rostnpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__vlstnpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__vlstnpeh]  DEFAULT ((0)) FOR [vlstnpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__cal1wiss]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__cal1wiss]  DEFAULT ('') FOR [cal1wiss]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__cal4wiss]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__cal4wiss]  DEFAULT ('') FOR [cal4wiss]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__komm_eti]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__komm_eti]  DEFAULT ('') FOR [komm_eti]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pinsoffl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pinsoffl]  DEFAULT ('') FOR [pinsoffl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__prodoffl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__prodoffl]  DEFAULT ('') FOR [prodoffl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__tol__pap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__tol__pap]  DEFAULT ((0)) FOR [tol__pap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rbexetkb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rbexetkb]  DEFAULT ((0)) FOR [rbexetkb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kst__var]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kst__var]  DEFAULT ('') FOR [kst__var]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kathelio]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kathelio]  DEFAULT ('') FOR [kathelio]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__katrotat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__katrotat]  DEFAULT ('') FOR [katrotat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kies_drg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kies_drg]  DEFAULT ('') FOR [kies_drg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__reken___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__reken___]  DEFAULT ('') FOR [reken___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rek_staf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rek_staf]  DEFAULT ('') FOR [rek_staf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__beperk__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__beperk__]  DEFAULT ('') FOR [beperk__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__kstklins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__kstklins]  DEFAULT ('') FOR [kstklins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_1]  DEFAULT ('') FOR [fmteti_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_2]  DEFAULT ('') FOR [fmteti_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_3]  DEFAULT ('') FOR [fmteti_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_4]  DEFAULT ('') FOR [fmteti_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_5]  DEFAULT ('') FOR [fmteti_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_6]  DEFAULT ('') FOR [fmteti_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_7]  DEFAULT ('') FOR [fmteti_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_8]  DEFAULT ('') FOR [fmteti_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__fmteti_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__fmteti_9]  DEFAULT ('') FOR [fmteti_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_1]  DEFAULT ('') FOR [klreti_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_2]  DEFAULT ('') FOR [klreti_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_3]  DEFAULT ('') FOR [klreti_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_4]  DEFAULT ('') FOR [klreti_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_5]  DEFAULT ('') FOR [klreti_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_6]  DEFAULT ('') FOR [klreti_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_7]  DEFAULT ('') FOR [klreti_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_8]  DEFAULT ('') FOR [klreti_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__klreti_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__klreti_9]  DEFAULT ('') FOR [klreti_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__eti__gui]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__eti__gui]  DEFAULT ((0)) FOR [eti__gui]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__prd__web]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__prd__web]  DEFAULT ('') FOR [prd__web]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__art_vrst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__art_vrst]  DEFAULT ('') FOR [art_vrst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__webcent_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__webcent_]  DEFAULT ('') FOR [webcent_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rek__spd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rek__spd]  DEFAULT ('') FOR [rek__spd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__rekbgspd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__rekbgspd]  DEFAULT ('') FOR [rekbgspd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__w4l__url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__w4l__url]  DEFAULT ('') FOR [w4l__url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__w4l__pfl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__w4l__pfl]  DEFAULT ('') FOR [w4l__pfl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__w4lklant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__w4lklant]  DEFAULT ('') FOR [w4lklant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__bdg__afw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__bdg__afw]  DEFAULT ('') FOR [bdg__afw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__cal_edec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__cal_edec]  DEFAULT ('') FOR [cal_edec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__autoplvw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__autoplvw]  DEFAULT ('') FOR [autoplvw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__autpltxt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__autpltxt]  DEFAULT ('') FOR [autpltxt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpar2__w4l_appr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpar2__] ADD  CONSTRAINT [DF_vkpar2__w4l_appr]  DEFAULT ('') FOR [w4l_appr]
END

