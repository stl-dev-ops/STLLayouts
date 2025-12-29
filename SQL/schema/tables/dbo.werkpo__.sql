SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[werkpo__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[werkpo__](
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_naam_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_blokk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opvolgen] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[hulp_wp_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nac__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_pbew] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv_telr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf__plc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_plc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[loonkost] [float] NOT NULL,
	[machkost] [float] NOT NULL,
	[overhead] [float] NOT NULL,
	[uur_kost] [float] NOT NULL,
	[brutloon] [float] NOT NULL,
	[coefloon] [float] NOT NULL,
	[wp_klas0] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas1] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas2] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas3] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas4] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas5] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas6] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas7] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas8] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_klas9] [nvarchar](8) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_norm0] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_norm1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_norm2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_norm3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_norm4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bcrerek_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst_rek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kenmerk_] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp_dc_lo] [float] NOT NULL,
	[wp_dc_ma] [float] NOT NULL,
	[wp_fc_lo] [float] NOT NULL,
	[wp_fc_ma] [float] NOT NULL,
	[wp_brulo] [float] NOT NULL,
	[wp_tydla] [float] NOT NULL,
	[wp_rsz__] [float] NOT NULL,
	[wp_socla] [float] NOT NULL,
	[wp_nvkpu] [float] NOT NULL,
	[wp_meega] [float] NOT NULL,
	[wp_kostl] [float] NOT NULL,
	[wp_vvwaa] [float] NOT NULL,
	[wp_vkpu_] [float] NOT NULL,
	[wp_enepr] [float] NOT NULL,
	[wp_vermo] [float] NOT NULL,
	[wp_ondho] [float] NOT NULL,
	[wp_prvrb] [float] NOT NULL,
	[wp_afsch] [float] NOT NULL,
	[wp_rente] [float] NOT NULL,
	[wp_verze] [float] NOT NULL,
	[wp_kostm] [float] NOT NULL,
	[wp__file] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[device__] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[stellen_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__9] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vraag__a] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__31] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__41] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__42] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__43] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__51] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__61] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__71] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__72] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__73] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__81] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__91] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[norm__a1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt_plwi] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ikz__yn_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laybonnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laybe1nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laybe2nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laypbynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layrbynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laylbynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvbynr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvb1nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvb2nr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laybijnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvppnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvppn2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvppn3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvprnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvprn2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvprn3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpenr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpen2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layvpen3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[laygroep] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon_zelf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon_ext1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon_ext2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij_drvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__and] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__vrs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij_vrs1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij_vrs2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__vr2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__vr3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bij__vr4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bijgroep] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb4] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb4] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb5] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb5] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb6] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb7] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb7] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6pb8] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6pb8] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6vo1] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6vo1] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6vo2] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6vo2] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6vo3] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6vo3] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6bpr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6b_e] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[layv6b2e] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bonv6bij] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laycheck] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[boncheck] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdbonln] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plc___id] [int] NOT NULL,
	[omt__cil] [float] NOT NULL,
	[auto_wsl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[len__wsl] [float] NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[devclass] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[avt_type] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[avt__url] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[avt__hlf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[spd__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[max__spd] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[teller_interval] [float] NOT NULL,
	[show_spdd_target] [bit] NOT NULL,
	[put_in_stock] [bit] NOT NULL,
	[ondtel__] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [idx_wp_1] PRIMARY KEY CLUSTERED 
(
	[wp___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[werkpo__]') AND name = N'idx_wp_2')
CREATE NONCLUSTERED INDEX [idx_wp_2] ON [dbo].[werkpo__]
(
	[dev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_naam_]  DEFAULT ('') FOR [wp_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_blokk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_blokk]  DEFAULT ('') FOR [wp_blokk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__opvolgen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__opvolgen]  DEFAULT ('') FOR [opvolgen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__hulp_wp_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__hulp_wp_]  DEFAULT ('') FOR [hulp_wp_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__nac__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__nac__typ]  DEFAULT ('') FOR [nac__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__opv_pbew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__opv_pbew]  DEFAULT ('') FOR [opv_pbew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__opv_telr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__opv_telr]  DEFAULT ('') FOR [opv_telr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__hlf__plc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__hlf__plc]  DEFAULT ('') FOR [hlf__plc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__stat_plc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__stat_plc]  DEFAULT ('') FOR [stat_plc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__loonkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__loonkost]  DEFAULT ((0)) FOR [loonkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__machkost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__machkost]  DEFAULT ((0)) FOR [machkost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__overhead]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__overhead]  DEFAULT ((0)) FOR [overhead]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__uur_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__uur_kost]  DEFAULT ((0)) FOR [uur_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__brutloon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__brutloon]  DEFAULT ((0)) FOR [brutloon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__coefloon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__coefloon]  DEFAULT ((0)) FOR [coefloon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas0]  DEFAULT ('') FOR [wp_klas0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas1]  DEFAULT ('') FOR [wp_klas1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas2]  DEFAULT ('') FOR [wp_klas2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas3]  DEFAULT ('') FOR [wp_klas3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas4]  DEFAULT ('') FOR [wp_klas4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas5]  DEFAULT ('') FOR [wp_klas5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas6]  DEFAULT ('') FOR [wp_klas6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas7]  DEFAULT ('') FOR [wp_klas7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas8]  DEFAULT ('') FOR [wp_klas8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_klas9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_klas9]  DEFAULT ('') FOR [wp_klas9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_norm0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_norm0]  DEFAULT ('') FOR [wp_norm0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_norm1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_norm1]  DEFAULT ('') FOR [wp_norm1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_norm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_norm2]  DEFAULT ('') FOR [wp_norm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_norm3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_norm3]  DEFAULT ('') FOR [wp_norm3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_norm4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_norm4]  DEFAULT ('') FOR [wp_norm4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bdebrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bdebrek_]  DEFAULT ('') FOR [bdebrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bdebrek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bdebrek2]  DEFAULT ('') FOR [bdebrek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bcrerek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bcrerek_]  DEFAULT ('') FOR [bcrerek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__kst_rek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__kst_rek1]  DEFAULT ('') FOR [kst_rek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__kst_rek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__kst_rek2]  DEFAULT ('') FOR [kst_rek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__kst_rek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__kst_rek3]  DEFAULT ('') FOR [kst_rek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__kenmerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__kenmerk_]  DEFAULT ('') FOR [kenmerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_dc_lo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_dc_lo]  DEFAULT ((0)) FOR [wp_dc_lo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_dc_ma]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_dc_ma]  DEFAULT ((0)) FOR [wp_dc_ma]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_fc_lo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_fc_lo]  DEFAULT ((0)) FOR [wp_fc_lo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_fc_ma]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_fc_ma]  DEFAULT ((0)) FOR [wp_fc_ma]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_brulo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_brulo]  DEFAULT ((0)) FOR [wp_brulo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_tydla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_tydla]  DEFAULT ((0)) FOR [wp_tydla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_rsz__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_rsz__]  DEFAULT ((0)) FOR [wp_rsz__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_socla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_socla]  DEFAULT ((0)) FOR [wp_socla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_nvkpu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_nvkpu]  DEFAULT ((0)) FOR [wp_nvkpu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_meega]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_meega]  DEFAULT ((0)) FOR [wp_meega]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_kostl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_kostl]  DEFAULT ((0)) FOR [wp_kostl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_vvwaa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_vvwaa]  DEFAULT ((0)) FOR [wp_vvwaa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_vkpu_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_vkpu_]  DEFAULT ((0)) FOR [wp_vkpu_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_enepr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_enepr]  DEFAULT ((0)) FOR [wp_enepr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_vermo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_vermo]  DEFAULT ((0)) FOR [wp_vermo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_ondho]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_ondho]  DEFAULT ((0)) FOR [wp_ondho]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_prvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_prvrb]  DEFAULT ((0)) FOR [wp_prvrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_afsch]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_afsch]  DEFAULT ((0)) FOR [wp_afsch]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_rente]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_rente]  DEFAULT ((0)) FOR [wp_rente]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_verze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_verze]  DEFAULT ((0)) FOR [wp_verze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp_kostm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp_kostm]  DEFAULT ((0)) FOR [wp_kostm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__wp__file]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__wp__file]  DEFAULT ('') FOR [wp__file]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__device__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__device__]  DEFAULT ('') FOR [device__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__stellen_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__stellen_]  DEFAULT ('') FOR [stellen_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__1]  DEFAULT ('') FOR [vraag__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__2]  DEFAULT ('') FOR [vraag__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__3]  DEFAULT ('') FOR [vraag__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__4]  DEFAULT ('') FOR [vraag__4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__5]  DEFAULT ('') FOR [vraag__5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__6]  DEFAULT ('') FOR [vraag__6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__7]  DEFAULT ('') FOR [vraag__7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__8]  DEFAULT ('') FOR [vraag__8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__9]  DEFAULT ('') FOR [vraag__9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__vraag__a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__vraag__a]  DEFAULT ('') FOR [vraag__a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__11]  DEFAULT ('') FOR [norm__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__21]  DEFAULT ('') FOR [norm__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__31]  DEFAULT ('') FOR [norm__31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__41]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__41]  DEFAULT ('') FOR [norm__41]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__42]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__42]  DEFAULT ('') FOR [norm__42]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__43]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__43]  DEFAULT ('') FOR [norm__43]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__51]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__51]  DEFAULT ('') FOR [norm__51]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__61]  DEFAULT ('') FOR [norm__61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__71]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__71]  DEFAULT ('') FOR [norm__71]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__72]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__72]  DEFAULT ('') FOR [norm__72]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__73]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__73]  DEFAULT ('') FOR [norm__73]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__81]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__81]  DEFAULT ('') FOR [norm__81]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__91]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__91]  DEFAULT ('') FOR [norm__91]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__norm__a1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__norm__a1]  DEFAULT ('') FOR [norm__a1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__akt_plwi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__akt_plwi]  DEFAULT ('') FOR [akt_plwi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__ikz__yn_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__ikz__yn_]  DEFAULT ('') FOR [ikz__yn_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__laybonnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__laybonnr]  DEFAULT ('') FOR [laybonnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__laybe1nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__laybe1nr]  DEFAULT ('') FOR [laybe1nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__laybe2nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__laybe2nr]  DEFAULT ('') FOR [laybe2nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__laypbynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__laypbynr]  DEFAULT ('') FOR [laypbynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layrbynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layrbynr]  DEFAULT ('') FOR [layrbynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__laylbynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__laylbynr]  DEFAULT ('') FOR [laylbynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvbynr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvbynr]  DEFAULT ('') FOR [layvbynr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvb1nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvb1nr]  DEFAULT ('') FOR [layvb1nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvb2nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvb2nr]  DEFAULT ('') FOR [layvb2nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__laybijnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__laybijnr]  DEFAULT ('') FOR [laybijnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvppnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvppnr]  DEFAULT ('') FOR [layvppnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvppn2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvppn2]  DEFAULT ('') FOR [layvppn2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvppn3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvppn3]  DEFAULT ('') FOR [layvppn3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvprnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvprnr]  DEFAULT ('') FOR [layvprnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvprn2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvprn2]  DEFAULT ('') FOR [layvprn2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvprn3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvprn3]  DEFAULT ('') FOR [layvprn3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvpenr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvpenr]  DEFAULT ('') FOR [layvpenr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvpen2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvpen2]  DEFAULT ('') FOR [layvpen2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layvpen3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layvpen3]  DEFAULT ('') FOR [layvpen3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__laygroep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__laygroep]  DEFAULT ('') FOR [laygroep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bon_zelf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bon_zelf]  DEFAULT ('') FOR [bon_zelf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bon_ext1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bon_ext1]  DEFAULT ('') FOR [bon_ext1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bon_ext2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bon_ext2]  DEFAULT ('') FOR [bon_ext2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bij_drvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bij_drvl]  DEFAULT ('') FOR [bij_drvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bij__and]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bij__and]  DEFAULT ('') FOR [bij__and]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bij__vrs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bij__vrs]  DEFAULT ('') FOR [bij__vrs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bij_vrs1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bij_vrs1]  DEFAULT ('') FOR [bij_vrs1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bij_vrs2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bij_vrs2]  DEFAULT ('') FOR [bij_vrs2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bij__vr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bij__vr2]  DEFAULT ('') FOR [bij__vr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bij__vr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bij__vr3]  DEFAULT ('') FOR [bij__vr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bij__vr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bij__vr4]  DEFAULT ('') FOR [bij__vr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bijgroep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bijgroep]  DEFAULT ('') FOR [bijgroep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6pb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6pb1]  DEFAULT ('') FOR [layv6pb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6pb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6pb1]  DEFAULT ('') FOR [bonv6pb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6pb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6pb2]  DEFAULT ('') FOR [layv6pb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6pb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6pb2]  DEFAULT ('') FOR [bonv6pb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6pb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6pb3]  DEFAULT ('') FOR [layv6pb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6pb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6pb3]  DEFAULT ('') FOR [bonv6pb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6pb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6pb4]  DEFAULT ('') FOR [layv6pb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6pb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6pb4]  DEFAULT ('') FOR [bonv6pb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6pb5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6pb5]  DEFAULT ('') FOR [layv6pb5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6pb5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6pb5]  DEFAULT ('') FOR [bonv6pb5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6pb6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6pb6]  DEFAULT ('') FOR [layv6pb6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6pb6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6pb6]  DEFAULT ('') FOR [bonv6pb6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6pb7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6pb7]  DEFAULT ('') FOR [layv6pb7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6pb7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6pb7]  DEFAULT ('') FOR [bonv6pb7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6pb8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6pb8]  DEFAULT ('') FOR [layv6pb8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6pb8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6pb8]  DEFAULT ('') FOR [bonv6pb8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6vo1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6vo1]  DEFAULT ('') FOR [layv6vo1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6vo1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6vo1]  DEFAULT ('') FOR [bonv6vo1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6vo2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6vo2]  DEFAULT ('') FOR [layv6vo2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6vo2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6vo2]  DEFAULT ('') FOR [bonv6vo2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6vo3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6vo3]  DEFAULT ('') FOR [layv6vo3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6vo3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6vo3]  DEFAULT ('') FOR [bonv6vo3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6bpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6bpr]  DEFAULT ('') FOR [layv6bpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6b_e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6b_e]  DEFAULT ('') FOR [layv6b_e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__layv6b2e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__layv6b2e]  DEFAULT ('') FOR [layv6b2e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__bonv6bij]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__bonv6bij]  DEFAULT ('') FOR [bonv6bij]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__laycheck]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__laycheck]  DEFAULT ('') FOR [laycheck]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__boncheck]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__boncheck]  DEFAULT ('') FOR [boncheck]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__prdbonln]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__prdbonln]  DEFAULT ('') FOR [prdbonln]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__plc___id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__plc___id]  DEFAULT ((0)) FOR [plc___id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__omt__cil]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__omt__cil]  DEFAULT ((0)) FOR [omt__cil]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__auto_wsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__auto_wsl]  DEFAULT ('') FOR [auto_wsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__len__wsl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__len__wsl]  DEFAULT ((0)) FOR [len__wsl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__devclass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__devclass]  DEFAULT ('') FOR [devclass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__avt_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__avt_type]  DEFAULT ('') FOR [avt_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__avt__url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__avt__url]  DEFAULT ('') FOR [avt__url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__avt__hlf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__avt__hlf]  DEFAULT ('') FOR [avt__hlf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__spd__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__spd__typ]  DEFAULT ('2') FOR [spd__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__max__spd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__max__spd]  DEFAULT ((0)) FOR [max__spd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__teller_interval]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__teller_interval]  DEFAULT ((0)) FOR [teller_interval]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__show_spdd_target]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__show_spdd_target]  DEFAULT ((0)) FOR [show_spdd_target]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__put_in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__put_in_stock]  DEFAULT ((1)) FOR [put_in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_werkpo__ondtel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[werkpo__] ADD  CONSTRAINT [DF_werkpo__ondtel__]  DEFAULT ('') FOR [ondtel__]
END

