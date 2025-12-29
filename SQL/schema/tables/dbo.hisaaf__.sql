SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisaaf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisaaf__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[doorst__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[alg___nr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[verv_dat] [date] NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[doknrlev] [nvarchar](29) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok_com_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[basis_vm] [float] NOT NULL,
	[basis_bm] [float] NOT NULL,
	[basis_om] [float] NOT NULL,
	[diver_vm] [float] NOT NULL,
	[diver_bm] [float] NOT NULL,
	[diver_om] [float] NOT NULL,
	[btwa__vm] [float] NOT NULL,
	[btwa__bm] [float] NOT NULL,
	[btwa__om] [float] NOT NULL,
	[btwna_vm] [float] NOT NULL,
	[btwna_bm] [float] NOT NULL,
	[btwna_om] [float] NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__bm] [float] NOT NULL,
	[tota__om] [float] NOT NULL,
	[ba_bankr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_naam_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_straa] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_wijk_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_postr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_postn] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_count] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_state] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_meded] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ba_landr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bavtebet] [float] NOT NULL,
	[ba_tebet] [float] NOT NULL,
	[bavtebom] [float] NOT NULL,
	[bavkort_] [float] NOT NULL,
	[ba_kort_] [float] NOT NULL,
	[bavkorom] [float] NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blok_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisaafi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__dgbk_srt]  DEFAULT ('') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__doorst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__doorst__]  DEFAULT ('') FOR [doorst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__alg___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__alg___nr]  DEFAULT ('') FOR [alg___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__verv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__verv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__doknrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__doknrlev]  DEFAULT ('') FOR [doknrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__dok_com_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__dok_com_]  DEFAULT ('') FOR [dok_com_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__basis_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__basis_vm]  DEFAULT ((0)) FOR [basis_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__basis_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__basis_bm]  DEFAULT ((0)) FOR [basis_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__basis_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__basis_om]  DEFAULT ((0)) FOR [basis_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__diver_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__diver_vm]  DEFAULT ((0)) FOR [diver_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__diver_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__diver_bm]  DEFAULT ((0)) FOR [diver_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__diver_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__diver_om]  DEFAULT ((0)) FOR [diver_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__btwa__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__btwa__vm]  DEFAULT ((0)) FOR [btwa__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__btwa__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__btwa__bm]  DEFAULT ((0)) FOR [btwa__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__btwa__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__btwa__om]  DEFAULT ((0)) FOR [btwa__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__btwna_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__btwna_vm]  DEFAULT ((0)) FOR [btwna_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__btwna_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__btwna_bm]  DEFAULT ((0)) FOR [btwna_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__btwna_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__btwna_om]  DEFAULT ((0)) FOR [btwna_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__tota__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__tota__om]  DEFAULT ((0)) FOR [tota__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_bankr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_bankr]  DEFAULT ('') FOR [ba_bankr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_naam_]  DEFAULT ('') FOR [ba_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_straa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_straa]  DEFAULT ('') FOR [ba_straa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_wijk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_wijk_]  DEFAULT ('') FOR [ba_wijk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_postr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_postr]  DEFAULT ('') FOR [ba_postr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_postn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_postn]  DEFAULT ('') FOR [ba_postn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_count]  DEFAULT ('') FOR [ba_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_state]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_state]  DEFAULT ('') FOR [ba_state]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_meded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_meded]  DEFAULT ('') FOR [ba_meded]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_landr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_landr]  DEFAULT ('') FOR [ba_landr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__bavtebet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__bavtebet]  DEFAULT ((0)) FOR [bavtebet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_tebet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_tebet]  DEFAULT ((0)) FOR [ba_tebet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__bavtebom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__bavtebom]  DEFAULT ((0)) FOR [bavtebom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__bavkort_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__bavkort_]  DEFAULT ((0)) FOR [bavkort_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__ba_kort_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__ba_kort_]  DEFAULT ((0)) FOR [ba_kort_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__bavkorom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__bavkorom]  DEFAULT ((0)) FOR [bavkorom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaaf__blok_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaaf__] ADD  CONSTRAINT [DF_hisaaf__blok_com]  DEFAULT ('') FOR [blok_com]
END

