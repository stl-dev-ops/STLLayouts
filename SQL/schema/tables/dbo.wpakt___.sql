SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wpakt___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[wpakt___](
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt_oms_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordergeb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klasse__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_aant] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ref_stuk] [float] NOT NULL,
	[ref_min_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[max_stuk] [float] NOT NULL,
	[max_min_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[acc1_wp_] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[acc1_akt] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[acc2_wp_] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[acc2_akt] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[opl_toon] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_grd_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aant] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_grd_] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_komm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[konv_mtr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[status__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[planning] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[status_k] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_stat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tsttag_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[send_jdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdopvlg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdrgtyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wph__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akth_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[aktn_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kostprys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stukprys] [float] NOT NULL,
	[vastprys] [float] NOT NULL,
	[stuk_vkp] [float] NOT NULL,
	[vast_vkp] [float] NOT NULL,
	[loonkost] [float] NOT NULL,
	[machkost] [float] NOT NULL,
	[overkost] [float] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrb__uur] [float] NOT NULL,
	[vrb__stk] [float] NOT NULL,
	[vtrf_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan_uur] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv__nrm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm01vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm02vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm03vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm04vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm05vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm06vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm07vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm08vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm09vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm10vrg] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm01exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm02exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm03exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm04exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm05exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm06exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm07exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm08exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm09exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm10exp] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm01btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm02btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm03btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm04btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm05btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm06btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm07btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm08btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm09btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm10btd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm01tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm02tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm03tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm04tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm05tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm06tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm07tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm08tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm09tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nrm10tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ_prln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_chkl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[chl_vrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn__chkl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[versies_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg01ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg02ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg03ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg04ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg05ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg06ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg07ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg08ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg09ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg10ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_pbew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_adrg] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_tool] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev_stat] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[job_stat] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_det] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[avt__job] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pl_klaar] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__grp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [wpakt_id] PRIMARY KEY CLUSTERED 
(
	[wp___ref] ASC,
	[akt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wpakt___]') AND name = N'wpakt_i1')
CREATE NONCLUSTERED INDEX [wpakt_i1] ON [dbo].[wpakt___]
(
	[plpl_ref] ASC,
	[geblokk_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[wpakt___]') AND name = N'wpakt_i2')
CREATE NONCLUSTERED INDEX [wpakt_i2] ON [dbo].[wpakt___]
(
	[wph__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___akt_oms_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___akt_oms_]  DEFAULT ('') FOR [akt_oms_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___ordergeb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___ordergeb]  DEFAULT ('') FOR [ordergeb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___klasse__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___klasse__]  DEFAULT ('') FOR [klasse__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opv_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opv_aant]  DEFAULT ('') FOR [opv_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___ref_stuk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___ref_stuk]  DEFAULT ((0)) FOR [ref_stuk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___ref_min_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___ref_min_]  DEFAULT ('') FOR [ref_min_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___max_stuk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___max_stuk]  DEFAULT ((0)) FOR [max_stuk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___max_min_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___max_min_]  DEFAULT ('') FOR [max_min_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___acc1_wp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___acc1_wp_]  DEFAULT ('') FOR [acc1_wp_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___acc1_akt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___acc1_akt]  DEFAULT ('') FOR [acc1_akt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___acc2_wp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___acc2_wp_]  DEFAULT ('') FOR [acc2_wp_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___acc2_akt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___acc2_akt]  DEFAULT ('') FOR [acc2_akt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opl_toon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opl_toon]  DEFAULT ('') FOR [opl_toon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opv_grd_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opv_grd_]  DEFAULT ('') FOR [opv_grd_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___oms_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___oms_aant]  DEFAULT ('') FOR [oms_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___oms_grd_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___oms_grd_]  DEFAULT ('') FOR [oms_grd_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opv_komm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opv_komm]  DEFAULT ('') FOR [opv_komm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___konv_mtr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___konv_mtr]  DEFAULT ('') FOR [konv_mtr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___status__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___status__]  DEFAULT ('') FOR [status__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___planning]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___planning]  DEFAULT ('') FOR [planning]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___status_k]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___status_k]  DEFAULT ('') FOR [status_k]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opv_stat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opv_stat]  DEFAULT ('') FOR [opv_stat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___tsttag_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___tsttag_1]  DEFAULT ('') FOR [tsttag_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___send_jdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___send_jdf]  DEFAULT ('') FOR [send_jdf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___prdopvlg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___prdopvlg]  DEFAULT ('') FOR [prdopvlg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___prdrgtyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___prdrgtyp]  DEFAULT ('') FOR [prdrgtyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___wph__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___wph__ref]  DEFAULT ('') FOR [wph__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___akth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___akth_ref]  DEFAULT ('') FOR [akth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___aktn_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___aktn_ref]  DEFAULT ('') FOR [aktn_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___kostprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___kostprys]  DEFAULT ('') FOR [kostprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___stukprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___stukprys]  DEFAULT ((0)) FOR [stukprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vastprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vastprys]  DEFAULT ((0)) FOR [vastprys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___stuk_vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___stuk_vkp]  DEFAULT ((0)) FOR [stuk_vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vast_vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vast_vkp]  DEFAULT ((0)) FOR [vast_vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___loonkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___loonkost]  DEFAULT ((0)) FOR [loonkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___machkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___machkost]  DEFAULT ((0)) FOR [machkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___overkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___overkost]  DEFAULT ((0)) FOR [overkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrb__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrb__uur]  DEFAULT ((0)) FOR [vrb__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrb__stk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrb__stk]  DEFAULT ((0)) FOR [vrb__stk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vtrf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vtrf_ref]  DEFAULT ('') FOR [vtrf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___plan_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___plan_uur]  DEFAULT ('') FOR [plan_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opv__nrm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opv__nrm]  DEFAULT ('') FOR [opv__nrm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm01vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm01vrg]  DEFAULT ('') FOR [nrm01vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm02vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm02vrg]  DEFAULT ('') FOR [nrm02vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm03vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm03vrg]  DEFAULT ('') FOR [nrm03vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm04vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm04vrg]  DEFAULT ('') FOR [nrm04vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm05vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm05vrg]  DEFAULT ('') FOR [nrm05vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm06vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm06vrg]  DEFAULT ('') FOR [nrm06vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm07vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm07vrg]  DEFAULT ('') FOR [nrm07vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm08vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm08vrg]  DEFAULT ('') FOR [nrm08vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm09vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm09vrg]  DEFAULT ('') FOR [nrm09vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm10vrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm10vrg]  DEFAULT ('') FOR [nrm10vrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm01exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm01exp]  DEFAULT ('') FOR [nrm01exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm02exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm02exp]  DEFAULT ('') FOR [nrm02exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm03exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm03exp]  DEFAULT ('') FOR [nrm03exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm04exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm04exp]  DEFAULT ('') FOR [nrm04exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm05exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm05exp]  DEFAULT ('') FOR [nrm05exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm06exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm06exp]  DEFAULT ('') FOR [nrm06exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm07exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm07exp]  DEFAULT ('') FOR [nrm07exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm08exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm08exp]  DEFAULT ('') FOR [nrm08exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm09exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm09exp]  DEFAULT ('') FOR [nrm09exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm10exp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm10exp]  DEFAULT ('') FOR [nrm10exp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm01btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm01btd]  DEFAULT ('') FOR [nrm01btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm02btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm02btd]  DEFAULT ('') FOR [nrm02btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm03btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm03btd]  DEFAULT ('') FOR [nrm03btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm04btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm04btd]  DEFAULT ('') FOR [nrm04btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm05btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm05btd]  DEFAULT ('') FOR [nrm05btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm06btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm06btd]  DEFAULT ('') FOR [nrm06btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm07btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm07btd]  DEFAULT ('') FOR [nrm07btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm08btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm08btd]  DEFAULT ('') FOR [nrm08btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm09btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm09btd]  DEFAULT ('') FOR [nrm09btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm10btd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm10btd]  DEFAULT ('') FOR [nrm10btd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm01tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm01tyd]  DEFAULT ('') FOR [nrm01tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm02tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm02tyd]  DEFAULT ('') FOR [nrm02tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm03tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm03tyd]  DEFAULT ('') FOR [nrm03tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm04tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm04tyd]  DEFAULT ('') FOR [nrm04tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm05tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm05tyd]  DEFAULT ('') FOR [nrm05tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm06tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm06tyd]  DEFAULT ('') FOR [nrm06tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm07tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm07tyd]  DEFAULT ('') FOR [nrm07tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm08tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm08tyd]  DEFAULT ('') FOR [nrm08tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm09tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm09tyd]  DEFAULT ('') FOR [nrm09tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___nrm10tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___nrm10tyd]  DEFAULT ('') FOR [nrm10tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___typ_prln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___typ_prln]  DEFAULT ('') FOR [typ_prln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opv_chkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opv_chkl]  DEFAULT ('') FOR [opv_chkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___chl_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___chl_vrpl]  DEFAULT ('Y') FOR [chl_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___wn__chkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___wn__chkl]  DEFAULT ('') FOR [wn__chkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___versies_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___versies_]  DEFAULT ('') FOR [versies_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg01ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg01ref]  DEFAULT ('') FOR [vrg01ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg02ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg02ref]  DEFAULT ('') FOR [vrg02ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg03ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg03ref]  DEFAULT ('') FOR [vrg03ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg04ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg04ref]  DEFAULT ('') FOR [vrg04ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg05ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg05ref]  DEFAULT ('') FOR [vrg05ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg06ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg06ref]  DEFAULT ('') FOR [vrg06ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg07ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg07ref]  DEFAULT ('') FOR [vrg07ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg08ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg08ref]  DEFAULT ('') FOR [vrg08ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg09ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg09ref]  DEFAULT ('') FOR [vrg09ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___vrg10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___vrg10ref]  DEFAULT ('') FOR [vrg10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opv_pbew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opv_pbew]  DEFAULT ('') FOR [opv_pbew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___oms_adrg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___oms_adrg]  DEFAULT ('') FOR [oms_adrg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___opv_tool]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___opv_tool]  DEFAULT ('') FOR [opv_tool]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___dev_stat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___dev_stat]  DEFAULT ('') FOR [dev_stat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___job_stat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___job_stat]  DEFAULT ('') FOR [job_stat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___stat_det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___stat_det]  DEFAULT ('') FOR [stat_det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___avt__job]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___avt__job]  DEFAULT ('') FOR [avt__job]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___pl_klaar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___pl_klaar]  DEFAULT ('') FOR [pl_klaar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_wpakt___akt__grp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[wpakt___] ADD  CONSTRAINT [DF_wpakt___akt__grp]  DEFAULT ('') FOR [akt__grp]
END

