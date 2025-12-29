SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[artikn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[artikn__](
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[b_akp_kg] [float] NOT NULL,
	[b_akp_vl] [float] NOT NULL,
	[l_akp_kg] [float] NOT NULL,
	[l_akp_vl] [float] NOT NULL,
	[g_akp_kg] [float] NOT NULL,
	[g_akp_vl] [float] NOT NULL,
	[nakprijs] [float] NOT NULL,
	[dat_crea] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_aank] [date] NOT NULL,
	[dat_lev_] [date] NOT NULL,
	[dat_verb] [date] NOT NULL,
	[dat_tell] [date] NOT NULL,
	[dat_begi] [date] NOT NULL,
	[dat_comp] [date] NOT NULL,
	[in_stock] [float] NOT NULL,
	[rollen__] [float] NOT NULL,
	[gemgew__] [float] NOT NULL,
	[reserve_] [float] NOT NULL,
	[in_best_] [float] NOT NULL,
	[in___qrt] [float] NOT NULL,
	[getelde_] [float] NOT NULL,
	[comp_stc] [float] NOT NULL,
	[getelder] [float] NOT NULL,
	[comp_str] [float] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrlev] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[in_produ] [float] NOT NULL,
 CONSTRAINT [artikn_x] PRIMARY KEY CLUSTERED 
(
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artikn__]') AND name = N'artikn_y')
CREATE NONCLUSTERED INDEX [artikn_y] ON [dbo].[artikn__]
(
	[dat_crea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__b_akp_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__b_akp_kg]  DEFAULT ((0)) FOR [b_akp_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__b_akp_vl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__b_akp_vl]  DEFAULT ((0)) FOR [b_akp_vl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__l_akp_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__l_akp_kg]  DEFAULT ((0)) FOR [l_akp_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__l_akp_vl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__l_akp_vl]  DEFAULT ((0)) FOR [l_akp_vl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__g_akp_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__g_akp_kg]  DEFAULT ((0)) FOR [g_akp_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__g_akp_vl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__g_akp_vl]  DEFAULT ((0)) FOR [g_akp_vl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__nakprijs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__nakprijs]  DEFAULT ((0)) FOR [nakprijs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__dat_crea]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__dat_crea]  DEFAULT (CONVERT([date],getdate(),(112))) FOR [dat_crea]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__dat_aank]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__dat_aank]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_aank]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__dat_lev_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__dat_lev_]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_lev_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__dat_verb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__dat_verb]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_verb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__dat_tell]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__dat_tell]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_tell]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__dat_begi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__dat_begi]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_begi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__dat_comp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__dat_comp]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_comp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__in_stock]  DEFAULT ((0)) FOR [in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__rollen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__rollen__]  DEFAULT ((0)) FOR [rollen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__gemgew__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__gemgew__]  DEFAULT ((0)) FOR [gemgew__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__reserve_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__reserve_]  DEFAULT ((0)) FOR [reserve_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__in_best_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__in_best_]  DEFAULT ((0)) FOR [in_best_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__in___qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__in___qrt]  DEFAULT ((0)) FOR [in___qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__getelde_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__getelde_]  DEFAULT ((0)) FOR [getelde_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__comp_stc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__comp_stc]  DEFAULT ((0)) FOR [comp_stc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__getelder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__getelder]  DEFAULT ((0)) FOR [getelder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__comp_str]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__comp_str]  DEFAULT ((0)) FOR [comp_str]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__jobnrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__jobnrlev]  DEFAULT ('') FOR [jobnrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikn__in_produ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikn__] ADD  CONSTRAINT [DF_artikn__in_produ]  DEFAULT ((0)) FOR [in_produ]
END

