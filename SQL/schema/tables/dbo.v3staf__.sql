SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3staf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3staf__](
	[staf_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [float] NOT NULL,
	[tot__gew] [float] NOT NULL,
	[vrbpapm2] [float] NOT NULL,
	[optim___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[uptodate] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reken___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__vkp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kostp___] [float] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[papier__] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[lonen__t] [float] NOT NULL,
	[machi__t] [float] NOT NULL,
	[overh__t] [float] NOT NULL,
	[papier_t] [float] NOT NULL,
	[grdvb__t] [float] NOT NULL,
	[oa_____t] [float] NOT NULL,
	[vast___t] [float] NOT NULL,
	[kostp__s] [float] NOT NULL,
	[lonen__s] [float] NOT NULL,
	[machi__s] [float] NOT NULL,
	[overh__s] [float] NOT NULL,
	[papier_s] [float] NOT NULL,
	[grdvb__s] [float] NOT NULL,
	[oa_____s] [float] NOT NULL,
	[lonen_ts] [float] NOT NULL,
	[machi_ts] [float] NOT NULL,
	[overh_ts] [float] NOT NULL,
	[papierts] [float] NOT NULL,
	[grdvb_ts] [float] NOT NULL,
	[oa____ts] [float] NOT NULL,
	[vast__ts] [float] NOT NULL,
	[pry__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rekprykd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp_____] [float] NOT NULL,
	[vkp___vm] [float] NOT NULL,
	[vkp_1000] [float] NOT NULL,
	[vk1000vm] [float] NOT NULL,
	[vkp_eenh] [float] NOT NULL,
	[vkeenhvm] [float] NOT NULL,
	[vkp_supp] [float] NOT NULL,
	[vksuppvm] [float] NOT NULL,
	[komm___p] [float] NOT NULL,
	[komm2__p] [float] NOT NULL,
	[vkp_uren] [float] NOT NULL,
	[vkpsuren] [float] NOT NULL,
	[stdvkp__] [float] NOT NULL,
	[stdvkp_s] [float] NOT NULL,
	[min___tw] [float] NOT NULL,
	[marge__p] [float] NOT NULL,
	[marge2_p] [float] NOT NULL,
	[ratio1__] [float] NOT NULL,
	[ratio2__] [float] NOT NULL,
	[tw_druk_] [float] NOT NULL,
	[dek_tw__] [float] NOT NULL,
	[vkp_tw__] [float] NOT NULL,
	[vkp_twl_] [float] NOT NULL,
	[vkpakp_p] [float] NOT NULL,
	[vkppap_p] [float] NOT NULL,
	[loo____p] [float] NOT NULL,
	[mac____p] [float] NOT NULL,
	[ovh____p] [float] NOT NULL,
	[paper__p] [float] NOT NULL,
	[grdst__p] [float] NOT NULL,
	[onda___p] [float] NOT NULL,
	[vkp__his] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[offq_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[vrbpap__] [float] NOT NULL,
	[gross_margin_m2] [float] NULL,
	[gross_margin] [float] NULL,
	[gross_margin_pct] [float] NULL,
 CONSTRAINT [v3stafi1] PRIMARY KEY CLUSTERED 
(
	[staf_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3staf__]') AND name = N'v3stafi2')
CREATE NONCLUSTERED INDEX [v3stafi2] ON [dbo].[v3staf__]
(
	[off__ref] ASC,
	[staf_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3staf__]') AND name = N'v3stafi3')
CREATE NONCLUSTERED INDEX [v3stafi3] ON [dbo].[v3staf__]
(
	[bon__ref] ASC,
	[off__ref] ASC,
	[staf_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__staf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__staf_ref]  DEFAULT ('') FOR [staf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__tot__gew]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__tot__gew]  DEFAULT ((0)) FOR [tot__gew]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vrbpapm2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vrbpapm2]  DEFAULT ((0)) FOR [vrbpapm2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__optim___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__optim___]  DEFAULT ('') FOR [optim___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__uptodate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__uptodate]  DEFAULT ('') FOR [uptodate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__reken___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__reken___]  DEFAULT ('') FOR [reken___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__kst__vkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__kst__vkp]  DEFAULT ('') FOR [kst__vkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__kostp___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__kostp___]  DEFAULT ((0)) FOR [kostp___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__papier__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__papier__]  DEFAULT ((0)) FOR [papier__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__lonen__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__lonen__t]  DEFAULT ((0)) FOR [lonen__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__machi__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__machi__t]  DEFAULT ((0)) FOR [machi__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__overh__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__overh__t]  DEFAULT ((0)) FOR [overh__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__papier_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__papier_t]  DEFAULT ((0)) FOR [papier_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__grdvb__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__grdvb__t]  DEFAULT ((0)) FOR [grdvb__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__oa_____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__oa_____t]  DEFAULT ((0)) FOR [oa_____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vast___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vast___t]  DEFAULT ((0)) FOR [vast___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__kostp__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__kostp__s]  DEFAULT ((0)) FOR [kostp__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__lonen__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__lonen__s]  DEFAULT ((0)) FOR [lonen__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__machi__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__machi__s]  DEFAULT ((0)) FOR [machi__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__overh__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__overh__s]  DEFAULT ((0)) FOR [overh__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__papier_s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__papier_s]  DEFAULT ((0)) FOR [papier_s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__grdvb__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__grdvb__s]  DEFAULT ((0)) FOR [grdvb__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__oa_____s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__oa_____s]  DEFAULT ((0)) FOR [oa_____s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__lonen_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__lonen_ts]  DEFAULT ((0)) FOR [lonen_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__machi_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__machi_ts]  DEFAULT ((0)) FOR [machi_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__overh_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__overh_ts]  DEFAULT ((0)) FOR [overh_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__papierts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__papierts]  DEFAULT ((0)) FOR [papierts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__grdvb_ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__grdvb_ts]  DEFAULT ((0)) FOR [grdvb_ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__oa____ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__oa____ts]  DEFAULT ((0)) FOR [oa____ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vast__ts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vast__ts]  DEFAULT ((0)) FOR [vast__ts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__pry__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__pry__ref]  DEFAULT ('') FOR [pry__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__rekprykd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__rekprykd]  DEFAULT ('') FOR [rekprykd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp_____]  DEFAULT ((0)) FOR [vkp_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp___vm]  DEFAULT ((0)) FOR [vkp___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp_1000]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp_1000]  DEFAULT ((0)) FOR [vkp_1000]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vk1000vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vk1000vm]  DEFAULT ((0)) FOR [vk1000vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp_eenh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp_eenh]  DEFAULT ((0)) FOR [vkp_eenh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkeenhvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkeenhvm]  DEFAULT ((0)) FOR [vkeenhvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp_supp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp_supp]  DEFAULT ((0)) FOR [vkp_supp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vksuppvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vksuppvm]  DEFAULT ((0)) FOR [vksuppvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__komm___p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__komm___p]  DEFAULT ((0)) FOR [komm___p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__komm2__p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__komm2__p]  DEFAULT ((0)) FOR [komm2__p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp_uren]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp_uren]  DEFAULT ((0)) FOR [vkp_uren]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkpsuren]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkpsuren]  DEFAULT ((0)) FOR [vkpsuren]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__stdvkp__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__stdvkp__]  DEFAULT ((0)) FOR [stdvkp__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__stdvkp_s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__stdvkp_s]  DEFAULT ((0)) FOR [stdvkp_s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__min___tw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__min___tw]  DEFAULT ((0)) FOR [min___tw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__marge__p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__marge__p]  DEFAULT ((0)) FOR [marge__p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__marge2_p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__marge2_p]  DEFAULT ((0)) FOR [marge2_p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__ratio1__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__ratio1__]  DEFAULT ((0)) FOR [ratio1__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__ratio2__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__ratio2__]  DEFAULT ((0)) FOR [ratio2__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__tw_druk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__tw_druk_]  DEFAULT ((0)) FOR [tw_druk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__dek_tw__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__dek_tw__]  DEFAULT ((0)) FOR [dek_tw__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp_tw__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp_tw__]  DEFAULT ((0)) FOR [vkp_tw__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp_twl_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp_twl_]  DEFAULT ((0)) FOR [vkp_twl_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkpakp_p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkpakp_p]  DEFAULT ((0)) FOR [vkpakp_p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkppap_p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkppap_p]  DEFAULT ((0)) FOR [vkppap_p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__loo____p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__loo____p]  DEFAULT ((0)) FOR [loo____p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__mac____p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__mac____p]  DEFAULT ((0)) FOR [mac____p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__ovh____p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__ovh____p]  DEFAULT ((0)) FOR [ovh____p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__paper__p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__paper__p]  DEFAULT ((0)) FOR [paper__p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__grdst__p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__grdst__p]  DEFAULT ((0)) FOR [grdst__p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__onda___p]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__onda___p]  DEFAULT ((0)) FOR [onda___p]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vkp__his]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vkp__his]  DEFAULT ('') FOR [vkp__his]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__offq_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__offq_ref]  DEFAULT ('') FOR [offq_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3staf__vrbpap__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3staf__] ADD  CONSTRAINT [DF_v3staf__vrbpap__]  DEFAULT ((0)) FOR [vrbpap__]
END

