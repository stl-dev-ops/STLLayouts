SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisfoo__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisfoo__](
	[idf_ofak] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__dat] [date] NOT NULL,
	[bsbn_kla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__rtb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tota__bm] [float] NOT NULL,
	[tot_o_bm] [float] NOT NULL,
	[totno1bm] [float] NOT NULL,
	[totno2bm] [float] NOT NULL,
	[totno3bm] [float] NOT NULL,
	[totno4bm] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__om] [float] NOT NULL,
	[tot_o_vm] [float] NOT NULL,
	[tot_o_om] [float] NOT NULL,
	[totno1vm] [float] NOT NULL,
	[totno1om] [float] NOT NULL,
	[totno2vm] [float] NOT NULL,
	[totno2om] [float] NOT NULL,
	[totno3vm] [float] NOT NULL,
	[totno3om] [float] NOT NULL,
	[totno4vm] [float] NOT NULL,
	[totno4om] [float] NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedv__bm] [float] NOT NULL,
	[vk_k_vst] [float] NOT NULL,
	[vk_k_pct] [float] NOT NULL,
	[vk_k_tot] [float] NOT NULL,
	[aant_fak] [float] NOT NULL,
	[ddgbkref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dbkj_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[dfak_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ddok_dat] [date] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisfooi2] PRIMARY KEY CLUSTERED 
(
	[ord__ref] ASC,
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisfoo__]') AND name = N'hisfooi3')
CREATE NONCLUSTERED INDEX [hisfooi3] ON [dbo].[hisfoo__]
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__idf_ofak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__idf_ofak]  DEFAULT ('') FOR [idf_ofak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__dgbk_srt]  DEFAULT ('') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__bsbn_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__bsbn_kla]  DEFAULT ('') FOR [bsbn_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__typ__rtb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__typ__rtb]  DEFAULT ('') FOR [typ__rtb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__tot_o_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__tot_o_bm]  DEFAULT ((0)) FOR [tot_o_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno1bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno1bm]  DEFAULT ((0)) FOR [totno1bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno2bm]  DEFAULT ((0)) FOR [totno2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno3bm]  DEFAULT ((0)) FOR [totno3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno4bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno4bm]  DEFAULT ((0)) FOR [totno4bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__tota__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__tota__om]  DEFAULT ((0)) FOR [tota__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__tot_o_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__tot_o_vm]  DEFAULT ((0)) FOR [tot_o_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__tot_o_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__tot_o_om]  DEFAULT ((0)) FOR [tot_o_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno1vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno1vm]  DEFAULT ((0)) FOR [totno1vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno1om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno1om]  DEFAULT ((0)) FOR [totno1om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno2vm]  DEFAULT ((0)) FOR [totno2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno2om]  DEFAULT ((0)) FOR [totno2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno3vm]  DEFAULT ((0)) FOR [totno3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno3om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno3om]  DEFAULT ((0)) FOR [totno3om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno4vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno4vm]  DEFAULT ((0)) FOR [totno4vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__totno4om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__totno4om]  DEFAULT ((0)) FOR [totno4om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__bedv__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__bedv__bm]  DEFAULT ((0)) FOR [bedv__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__vk_k_vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__vk_k_vst]  DEFAULT ((0)) FOR [vk_k_vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__vk_k_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__vk_k_pct]  DEFAULT ((0)) FOR [vk_k_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__vk_k_tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__vk_k_tot]  DEFAULT ((0)) FOR [vk_k_tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__aant_fak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__aant_fak]  DEFAULT ((0)) FOR [aant_fak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__ddgbkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__ddgbkref]  DEFAULT ('') FOR [ddgbkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__dbkj_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__dbkj_ref]  DEFAULT ('') FOR [dbkj_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__dfak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__dfak_ref]  DEFAULT ('') FOR [dfak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfoo__ddok_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfoo__] ADD  CONSTRAINT [DF_hisfoo__ddok_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ddok_dat]
END

