SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vkpdok__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vkpdok__](
	[vdok__nr] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[vrvl_dat] [date] NOT NULL,
	[vrzb_dat] [date] NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[koers___] [float] NOT NULL,
	[aant_dec] [int] NOT NULL,
	[kon_kort] [float] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok_com_] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[blok_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanm_blk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[totf__vm] [float] NOT NULL,
	[totf__om] [float] NOT NULL,
	[totf__bm] [float] NOT NULL,
	[betd__vm] [float] NOT NULL,
	[betd__om] [float] NOT NULL,
	[betd__bm] [float] NOT NULL,
	[ngbet_vm] [float] NOT NULL,
	[ngbet_om] [float] NOT NULL,
	[ngbet_bm] [float] NOT NULL,
	[bwis__vm] [float] NOT NULL,
	[bwis__om] [float] NOT NULL,
	[bwis__bm] [float] NOT NULL,
	[basis_vm] [float] NOT NULL,
	[basis_om] [float] NOT NULL,
	[basis_bm] [float] NOT NULL,
	[wis_vdat] [date] NOT NULL,
	[belf____] [float] NOT NULL,
	[btwf____] [float] NOT NULL,
	[rnd___bm] [float] NOT NULL,
	[rnd___vm] [float] NOT NULL,
	[bedcodb0] [float] NOT NULL,
	[bedcodb1] [float] NOT NULL,
	[bedcodb2] [float] NOT NULL,
	[bedcodb3] [float] NOT NULL,
	[bedcodb4] [float] NOT NULL,
	[bedmvhb0] [float] NOT NULL,
	[bedmvhb1] [float] NOT NULL,
	[bedmvhb2] [float] NOT NULL,
	[bedmvhb3] [float] NOT NULL,
	[bedmvhb4] [float] NOT NULL,
	[bedbtwb0] [float] NOT NULL,
	[bedbtwb1] [float] NOT NULL,
	[bedbtwb2] [float] NOT NULL,
	[bedbtwb3] [float] NOT NULL,
	[bedbtwb4] [float] NOT NULL,
	[stat__bm] [float] NOT NULL,
	[stat__vm] [float] NOT NULL,
	[cnty__bm] [float] NOT NULL,
	[cnty__vm] [float] NOT NULL,
	[city__bm] [float] NOT NULL,
	[city__vm] [float] NOT NULL,
	[spld__bm] [float] NOT NULL,
	[spld__vm] [float] NOT NULL,
	[gewyz_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewyzwie] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[gewyzdat] [date] NOT NULL,
	[btwagdat] [date] NOT NULL,
	[wissel__] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[doknrkla] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_bankr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lcrofbor] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss_] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vkpdoki0] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[vkpdok__]') AND name = N'vkpdoki1')
CREATE NONCLUSTERED INDEX [vkpdoki1] ON [dbo].[vkpdok__]
(
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__vdok__nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__vdok__nr]  DEFAULT ('') FOR [vdok__nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__vrvl_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__vrvl_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrvl_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__vrzb_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__vrzb_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzb_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__kon_kort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__kon_kort]  DEFAULT ((0)) FOR [kon_kort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__stx_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__stx_beh_]  DEFAULT ('') FOR [stx_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__dok_com_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__dok_com_]  DEFAULT ('') FOR [dok_com_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__blok_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__blok_com]  DEFAULT ('') FOR [blok_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__betw_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__betw_com]  DEFAULT ('') FOR [betw_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__aanm_blk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__aanm_blk]  DEFAULT ('') FOR [aanm_blk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__totf__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__totf__vm]  DEFAULT ((0)) FOR [totf__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__totf__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__totf__om]  DEFAULT ((0)) FOR [totf__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__totf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__totf__bm]  DEFAULT ((0)) FOR [totf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__betd__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__betd__vm]  DEFAULT ((0)) FOR [betd__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__betd__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__betd__om]  DEFAULT ((0)) FOR [betd__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__betd__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__betd__bm]  DEFAULT ((0)) FOR [betd__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__ngbet_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__ngbet_vm]  DEFAULT ((0)) FOR [ngbet_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__ngbet_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__ngbet_om]  DEFAULT ((0)) FOR [ngbet_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__ngbet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__ngbet_bm]  DEFAULT ((0)) FOR [ngbet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bwis__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bwis__vm]  DEFAULT ((0)) FOR [bwis__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bwis__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bwis__om]  DEFAULT ((0)) FOR [bwis__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bwis__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bwis__bm]  DEFAULT ((0)) FOR [bwis__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__basis_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__basis_vm]  DEFAULT ((0)) FOR [basis_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__basis_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__basis_om]  DEFAULT ((0)) FOR [basis_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__basis_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__basis_bm]  DEFAULT ((0)) FOR [basis_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__wis_vdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__wis_vdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [wis_vdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__belf____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__belf____]  DEFAULT ((0)) FOR [belf____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__btwf____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__btwf____]  DEFAULT ((0)) FOR [btwf____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__rnd___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__rnd___bm]  DEFAULT ((0)) FOR [rnd___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__rnd___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__rnd___vm]  DEFAULT ((0)) FOR [rnd___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedcodb0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedcodb0]  DEFAULT ((0)) FOR [bedcodb0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedcodb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedcodb1]  DEFAULT ((0)) FOR [bedcodb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedcodb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedcodb2]  DEFAULT ((0)) FOR [bedcodb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedcodb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedcodb3]  DEFAULT ((0)) FOR [bedcodb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedcodb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedcodb4]  DEFAULT ((0)) FOR [bedcodb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedmvhb0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedmvhb0]  DEFAULT ((0)) FOR [bedmvhb0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedmvhb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedmvhb1]  DEFAULT ((0)) FOR [bedmvhb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedmvhb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedmvhb2]  DEFAULT ((0)) FOR [bedmvhb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedmvhb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedmvhb3]  DEFAULT ((0)) FOR [bedmvhb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedmvhb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedmvhb4]  DEFAULT ((0)) FOR [bedmvhb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedbtwb0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedbtwb0]  DEFAULT ((0)) FOR [bedbtwb0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedbtwb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedbtwb1]  DEFAULT ((0)) FOR [bedbtwb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedbtwb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedbtwb2]  DEFAULT ((0)) FOR [bedbtwb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedbtwb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedbtwb3]  DEFAULT ((0)) FOR [bedbtwb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__bedbtwb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__bedbtwb4]  DEFAULT ((0)) FOR [bedbtwb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__stat__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__stat__bm]  DEFAULT ((0)) FOR [stat__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__stat__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__stat__vm]  DEFAULT ((0)) FOR [stat__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__cnty__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__cnty__bm]  DEFAULT ((0)) FOR [cnty__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__cnty__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__cnty__vm]  DEFAULT ((0)) FOR [cnty__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__city__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__city__bm]  DEFAULT ((0)) FOR [city__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__city__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__city__vm]  DEFAULT ((0)) FOR [city__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__spld__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__spld__bm]  DEFAULT ((0)) FOR [spld__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__spld__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__spld__vm]  DEFAULT ((0)) FOR [spld__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__gewyz_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__gewyz_yn]  DEFAULT ('') FOR [gewyz_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__gewyzwie]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__gewyzwie]  DEFAULT ('') FOR [gewyzwie]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__gewyzdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__gewyzdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gewyzdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__btwagdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__btwagdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [btwagdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__wissel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__wissel__]  DEFAULT ('') FOR [wissel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__doknrkla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__doknrkla]  DEFAULT ('') FOR [doknrkla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__ba_bankr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__ba_bankr]  DEFAULT ('') FOR [ba_bankr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__lcrofbor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__lcrofbor]  DEFAULT ('') FOR [lcrofbor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vkpdok__kommiss_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vkpdok__] ADD  CONSTRAINT [DF_vkpdok__kommiss_]  DEFAULT ((0)) FOR [kommiss_]
END

