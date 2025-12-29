SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisgfk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisgfk__](
	[his__vnr] [int] NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkgr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[alg___nr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[doorst__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[doknrref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[verv_dat] [date] NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[grtbkcom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[totf__vm] [float] NOT NULL,
	[belf__vm] [float] NOT NULL,
	[divf__vm] [float] NOT NULL,
	[btwf__vm] [float] NOT NULL,
	[totf__om] [float] NOT NULL,
	[belf__om] [float] NOT NULL,
	[divf__om] [float] NOT NULL,
	[btwf__om] [float] NOT NULL,
	[totf__bm] [float] NOT NULL,
	[belf__bm] [float] NOT NULL,
	[divf__bm] [float] NOT NULL,
	[btwf__bm] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[onvto_vm] [float] NOT NULL,
	[onvto_bm] [float] NOT NULL,
	[onvto_om] [float] NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gbk_onv_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[ba_tebet] [float] NOT NULL,
	[ba_kort_] [float] NOT NULL,
	[bavtebet] [float] NOT NULL,
	[bavtebom] [float] NOT NULL,
	[bavkort_] [float] NOT NULL,
	[bavkorom] [float] NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blok_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [gfk_id_1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fkgr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__his__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__his__vnr]  DEFAULT ((0)) FOR [his__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__dgbk_srt]  DEFAULT ('') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__fkgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__fkgr_ref]  DEFAULT ('') FOR [fkgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__alg___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__alg___nr]  DEFAULT ('') FOR [alg___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__doorst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__doorst__]  DEFAULT ('') FOR [doorst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__doknrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__doknrref]  DEFAULT ('') FOR [doknrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__verv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__verv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__grtbkcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__grtbkcom]  DEFAULT ('') FOR [grtbkcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__totf__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__totf__vm]  DEFAULT ((0)) FOR [totf__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__belf__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__belf__vm]  DEFAULT ((0)) FOR [belf__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__divf__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__divf__vm]  DEFAULT ((0)) FOR [divf__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__btwf__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__btwf__vm]  DEFAULT ((0)) FOR [btwf__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__totf__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__totf__om]  DEFAULT ((0)) FOR [totf__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__belf__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__belf__om]  DEFAULT ((0)) FOR [belf__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__divf__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__divf__om]  DEFAULT ((0)) FOR [divf__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__btwf__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__btwf__om]  DEFAULT ((0)) FOR [btwf__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__totf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__totf__bm]  DEFAULT ((0)) FOR [totf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__belf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__belf__bm]  DEFAULT ((0)) FOR [belf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__divf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__divf__bm]  DEFAULT ((0)) FOR [divf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__btwf__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__btwf__bm]  DEFAULT ((0)) FOR [btwf__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__onvto_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__onvto_vm]  DEFAULT ((0)) FOR [onvto_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__onvto_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__onvto_bm]  DEFAULT ((0)) FOR [onvto_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__onvto_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__onvto_om]  DEFAULT ((0)) FOR [onvto_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__gbk_onv_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__gbk_onv_]  DEFAULT ('') FOR [gbk_onv_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_bankr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_bankr]  DEFAULT ('') FOR [ba_bankr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_naam_]  DEFAULT ('') FOR [ba_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_straa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_straa]  DEFAULT ('') FOR [ba_straa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_wijk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_wijk_]  DEFAULT ('') FOR [ba_wijk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_postr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_postr]  DEFAULT ('') FOR [ba_postr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_postn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_postn]  DEFAULT ('') FOR [ba_postn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_count]  DEFAULT ('') FOR [ba_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_state]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_state]  DEFAULT ('') FOR [ba_state]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_meded]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_meded]  DEFAULT ('') FOR [ba_meded]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_landr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_landr]  DEFAULT ('') FOR [ba_landr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_tebet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_tebet]  DEFAULT ((0)) FOR [ba_tebet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__ba_kort_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__ba_kort_]  DEFAULT ((0)) FOR [ba_kort_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__bavtebet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__bavtebet]  DEFAULT ((0)) FOR [bavtebet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__bavtebom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__bavtebom]  DEFAULT ((0)) FOR [bavtebom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__bavkort_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__bavkort_]  DEFAULT ((0)) FOR [bavkort_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__bavkorom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__bavkorom]  DEFAULT ((0)) FOR [bavkorom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisgfk__blok_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisgfk__] ADD  CONSTRAINT [DF_hisgfk__blok_com]  DEFAULT ('') FOR [blok_com]
END

