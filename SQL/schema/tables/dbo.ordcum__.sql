SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordcum__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ordcum__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lonen_ok] [float] NOT NULL,
	[machi_ok] [float] NOT NULL,
	[overh_ok] [float] NOT NULL,
	[afsch_ok] [float] NOT NULL,
	[duur__ok] [int] NOT NULL,
	[lonen_hd] [float] NOT NULL,
	[machi_hd] [float] NOT NULL,
	[overh_hd] [float] NOT NULL,
	[afsch_hd] [float] NOT NULL,
	[duur__hd] [int] NOT NULL,
	[lonen_sp] [float] NOT NULL,
	[machi_sp] [float] NOT NULL,
	[overh_sp] [float] NOT NULL,
	[afsch_sp] [float] NOT NULL,
	[duur__sp] [int] NOT NULL,
	[papie_ok] [float] NOT NULL,
	[grdvrbok] [float] NOT NULL,
	[papie_hd] [float] NOT NULL,
	[grdvrbhd] [float] NOT NULL,
	[papie_sp] [float] NOT NULL,
	[grdvrbsp] [float] NOT NULL,
	[ondaan__] [float] NOT NULL,
	[ondaanhd] [float] NOT NULL,
	[ondaansp] [float] NOT NULL,
	[vkp_kost] [float] NOT NULL,
	[adm_kost] [float] NOT NULL,
	[adm___hd] [float] NOT NULL,
	[adm___sp] [float] NOT NULL,
	[markt_ok] [float] NOT NULL,
	[markt_hd] [float] NOT NULL,
	[markt_sp] [float] NOT NULL,
	[aantal__] [float] NOT NULL,
	[volledig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__dat] [date] NOT NULL,
	[vast_tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast_kst] [float] NOT NULL,
	[vast_dat] [date] NOT NULL,
	[kst__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstf_dat] [date] NOT NULL,
	[bedv__bm] [float] NOT NULL,
	[gefakt__] [float] NOT NULL,
	[gefaktv6] [float] NOT NULL,
	[inventv6] [float] NOT NULL,
	[halff_in] [float] NOT NULL,
	[halffuit] [float] NOT NULL,
	[stock___] [float] NOT NULL,
	[facafgv6] [float] NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__dat] [date] NOT NULL,
	[typ__rtb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ddgbkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dbkj_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[dfak_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ddok_dat] [date] NOT NULL,
	[dperiref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[com__oml] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_fak] [float] NOT NULL,
	[prostand] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__prd] [date] NOT NULL,
	[in_produ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_prd] [float] NOT NULL,
	[stat__01] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__02] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__11] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__12] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__13] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__21] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__31] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__32] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__33] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__34] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__35] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__36] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__61] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__62] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ordcumi1] PRIMARY KEY CLUSTERED 
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordcum__]') AND name = N'ordcumi2')
CREATE NONCLUSTERED INDEX [ordcumi2] ON [dbo].[ordcum__]
(
	[typ__rtb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordcum__]') AND name = N'ordcumi3')
CREATE NONCLUSTERED INDEX [ordcumi3] ON [dbo].[ordcum__]
(
	[dat__prd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__lonen_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__lonen_ok]  DEFAULT ((0)) FOR [lonen_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__machi_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__machi_ok]  DEFAULT ((0)) FOR [machi_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__overh_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__overh_ok]  DEFAULT ((0)) FOR [overh_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__afsch_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__afsch_ok]  DEFAULT ((0)) FOR [afsch_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__duur__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__duur__ok]  DEFAULT ((0)) FOR [duur__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__lonen_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__lonen_hd]  DEFAULT ((0)) FOR [lonen_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__machi_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__machi_hd]  DEFAULT ((0)) FOR [machi_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__overh_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__overh_hd]  DEFAULT ((0)) FOR [overh_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__afsch_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__afsch_hd]  DEFAULT ((0)) FOR [afsch_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__duur__hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__duur__hd]  DEFAULT ((0)) FOR [duur__hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__lonen_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__lonen_sp]  DEFAULT ((0)) FOR [lonen_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__machi_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__machi_sp]  DEFAULT ((0)) FOR [machi_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__overh_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__overh_sp]  DEFAULT ((0)) FOR [overh_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__afsch_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__afsch_sp]  DEFAULT ((0)) FOR [afsch_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__duur__sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__duur__sp]  DEFAULT ((0)) FOR [duur__sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__papie_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__papie_ok]  DEFAULT ((0)) FOR [papie_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__grdvrbok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__grdvrbok]  DEFAULT ((0)) FOR [grdvrbok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__papie_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__papie_hd]  DEFAULT ((0)) FOR [papie_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__grdvrbhd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__grdvrbhd]  DEFAULT ((0)) FOR [grdvrbhd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__papie_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__papie_sp]  DEFAULT ((0)) FOR [papie_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__grdvrbsp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__grdvrbsp]  DEFAULT ((0)) FOR [grdvrbsp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__ondaan__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__ondaan__]  DEFAULT ((0)) FOR [ondaan__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__ondaanhd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__ondaanhd]  DEFAULT ((0)) FOR [ondaanhd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__ondaansp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__ondaansp]  DEFAULT ((0)) FOR [ondaansp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__vkp_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__vkp_kost]  DEFAULT ((0)) FOR [vkp_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__adm_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__adm_kost]  DEFAULT ((0)) FOR [adm_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__adm___hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__adm___hd]  DEFAULT ((0)) FOR [adm___hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__adm___sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__adm___sp]  DEFAULT ((0)) FOR [adm___sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__markt_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__markt_ok]  DEFAULT ((0)) FOR [markt_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__markt_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__markt_hd]  DEFAULT ((0)) FOR [markt_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__markt_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__markt_sp]  DEFAULT ((0)) FOR [markt_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__volledig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__volledig]  DEFAULT ('') FOR [volledig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__lev__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__lev__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [lev__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__vast_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__vast_tst]  DEFAULT ('') FOR [vast_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__vast_kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__vast_kst]  DEFAULT ((0)) FOR [vast_kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__vast_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__vast_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vast_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__kst__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__kst__tst]  DEFAULT ('') FOR [kst__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__kstf_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__kstf_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [kstf_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__bedv__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__bedv__bm]  DEFAULT ((0)) FOR [bedv__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__gefakt__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__gefakt__]  DEFAULT ((0)) FOR [gefakt__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__gefaktv6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__gefaktv6]  DEFAULT ((0)) FOR [gefaktv6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__inventv6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__inventv6]  DEFAULT ((0)) FOR [inventv6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__halff_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__halff_in]  DEFAULT ((0)) FOR [halff_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__halffuit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__halffuit]  DEFAULT ((0)) FOR [halffuit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stock___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stock___]  DEFAULT ((0)) FOR [stock___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__facafgv6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__facafgv6]  DEFAULT ((0)) FOR [facafgv6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__typ__rtb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__typ__rtb]  DEFAULT ('') FOR [typ__rtb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__ddgbkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__ddgbkref]  DEFAULT ('') FOR [ddgbkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__dbkj_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__dbkj_ref]  DEFAULT ('') FOR [dbkj_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__dfak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__dfak_ref]  DEFAULT ('') FOR [dfak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__ddok_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__ddok_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ddok_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__dperiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__dperiref]  DEFAULT ('') FOR [dperiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__com__oml]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__com__oml]  DEFAULT ('') FOR [com__oml]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__aant_fak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__aant_fak]  DEFAULT ((0)) FOR [aant_fak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__prostand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__prostand]  DEFAULT ('') FOR [prostand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__dat__prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__dat__prd]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__in_produ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__in_produ]  DEFAULT ('') FOR [in_produ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__aant_prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__aant_prd]  DEFAULT ((0)) FOR [aant_prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__01]  DEFAULT ('') FOR [stat__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__02]  DEFAULT ('') FOR [stat__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__11]  DEFAULT ('') FOR [stat__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__12]  DEFAULT ('') FOR [stat__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__13]  DEFAULT ('') FOR [stat__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__21]  DEFAULT ('') FOR [stat__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__31]  DEFAULT ('') FOR [stat__31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__32]  DEFAULT ('') FOR [stat__32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__33]  DEFAULT ('') FOR [stat__33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__34]  DEFAULT ('') FOR [stat__34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__35]  DEFAULT ('') FOR [stat__35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__36]  DEFAULT ('') FOR [stat__36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__61]  DEFAULT ('') FOR [stat__61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordcum__stat__62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordcum__] ADD  CONSTRAINT [DF_ordcum__stat__62]  DEFAULT ('') FOR [stat__62]
END

