SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2edg___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2edg___](
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[multidrk] [int] NOT NULL,
	[rev_prnt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal_h] [int] NOT NULL,
	[omtrek__] [float] NOT NULL,
	[zijwit_l] [float] NOT NULL,
	[zijwit_r] [float] NOT NULL,
	[aantalsb] [int] NOT NULL,
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[stn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantalsh] [int] NOT NULL,
	[tssnafsh] [float] NOT NULL,
	[omtreks_] [float] NOT NULL,
	[klcod_fr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrpfr] [int] NOT NULL,
	[klcod_lm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrplm] [int] NOT NULL,
	[klcod_rg] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[inkvrprg] [int] NOT NULL,
	[ant__plw] [int] NOT NULL,
	[ant__klw] [int] NOT NULL,
	[ant_pltn] [int] NOT NULL,
	[antplt_0] [int] NOT NULL,
	[antplt_1] [int] NOT NULL,
	[antplt_2] [int] NOT NULL,
	[antplt_3] [int] NOT NULL,
	[antplt_4] [int] NOT NULL,
	[antplt_5] [int] NOT NULL,
	[antplt_6] [int] NOT NULL,
	[antplt_7] [int] NOT NULL,
	[antplw_0] [int] NOT NULL,
	[antplw_1] [int] NOT NULL,
	[antplw_2] [int] NOT NULL,
	[antplw_3] [int] NOT NULL,
	[antplw_4] [int] NOT NULL,
	[antplw_5] [int] NOT NULL,
	[antplw_6] [int] NOT NULL,
	[antplw_7] [int] NOT NULL,
	[antplwa0] [float] NOT NULL,
	[antplwa1] [float] NOT NULL,
	[antplwa2] [float] NOT NULL,
	[antplwa3] [float] NOT NULL,
	[antplwa4] [float] NOT NULL,
	[antplwa5] [float] NOT NULL,
	[antplwa6] [float] NOT NULL,
	[antplwa7] [float] NOT NULL,
	[antklw_0] [int] NOT NULL,
	[antklw_1] [int] NOT NULL,
	[antklw_2] [int] NOT NULL,
	[antklw_3] [int] NOT NULL,
	[antklw_4] [int] NOT NULL,
	[antklw_5] [int] NOT NULL,
	[antklw_6] [int] NOT NULL,
	[antklw_7] [int] NOT NULL,
	[antklwa0] [float] NOT NULL,
	[antklwa1] [float] NOT NULL,
	[antklwa2] [float] NOT NULL,
	[antklwa3] [float] NOT NULL,
	[antklwa4] [float] NOT NULL,
	[antklwa5] [float] NOT NULL,
	[antklwa6] [float] NOT NULL,
	[antklwa7] [float] NOT NULL,
	[plttfak0] [int] NOT NULL,
	[plttfak1] [int] NOT NULL,
	[plttfak2] [int] NOT NULL,
	[plttfak3] [int] NOT NULL,
	[plttfak4] [int] NOT NULL,
	[plttfak5] [int] NOT NULL,
	[plttfak6] [int] NOT NULL,
	[plttfak7] [int] NOT NULL,
	[plt0__vm] [float] NOT NULL,
	[plt1__vm] [float] NOT NULL,
	[plt2__vm] [float] NOT NULL,
	[plt3__vm] [float] NOT NULL,
	[plt4__vm] [float] NOT NULL,
	[plt5__vm] [float] NOT NULL,
	[plt6__vm] [float] NOT NULL,
	[plt7__vm] [float] NOT NULL,
	[plt0__bm] [float] NOT NULL,
	[plt1__bm] [float] NOT NULL,
	[plt2__bm] [float] NOT NULL,
	[plt3__bm] [float] NOT NULL,
	[plt4__bm] [float] NOT NULL,
	[plt5__bm] [float] NOT NULL,
	[plt6__bm] [float] NOT NULL,
	[plt7__bm] [float] NOT NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[trm__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[spdd____] [float] NOT NULL,
	[spddusr_] [float] NOT NULL,
	[spdd_slg] [float] NOT NULL,
	[spdduslg] [float] NOT NULL,
	[ovt_na_m] [int] NOT NULL,
	[ovt_nasl] [int] NOT NULL,
	[stl____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlusr_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wasusr_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stel_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[was__tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk1tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk2tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stlafu_t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[min____b] [float] NOT NULL,
	[minimumb] [float] NOT NULL,
	[marge__l] [float] NOT NULL,
	[marge__r] [float] NOT NULL,
	[margebnl] [float] NOT NULL,
	[margebnr] [float] NOT NULL,
	[tedrk___] [float] NOT NULL,
	[tedrk_to] [float] NOT NULL,
	[prcinsvo] [float] NOT NULL,
	[prcinsvu] [float] NOT NULL,
	[inlinsvo] [float] NOT NULL,
	[inlinsvu] [float] NOT NULL,
	[stlafuin] [float] NOT NULL,
	[bldoprol] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[flm__peh] [float] NOT NULL,
	[plt__peh] [float] NOT NULL,
	[rostnpeh] [float] NOT NULL,
	[vlstnpeh] [float] NOT NULL,
	[tpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mark_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stgy_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[spdd_target] [float] NOT NULL,
	[spdd_target_slg] [float] NOT NULL,
	[gew_inkt] [float] NOT NULL,
 CONSTRAINT [v2edg_i1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[kpn__ref] ASC,
	[dg___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2edg___]') AND name = N'v2edg_i2')
CREATE UNIQUE NONCLUSTERED INDEX [v2edg_i2] ON [dbo].[v2edg___]
(
	[kpn__ref] ASC,
	[dg___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2edg___]') AND name = N'v2edg_i3')
CREATE UNIQUE NONCLUSTERED INDEX [v2edg_i3] ON [dbo].[v2edg___]
(
	[off__ref] ASC,
	[dg___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___multidrk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___multidrk]  DEFAULT ((0)) FOR [multidrk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___rev_prnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___rev_prnt]  DEFAULT ('') FOR [rev_prnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___aantal_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___aantal_h]  DEFAULT ((0)) FOR [aantal_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___omtrek__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___omtrek__]  DEFAULT ((0)) FOR [omtrek__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___zijwit_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___zijwit_l]  DEFAULT ((0)) FOR [zijwit_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___zijwit_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___zijwit_r]  DEFAULT ((0)) FOR [zijwit_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___aantalsb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___aantalsb]  DEFAULT ((0)) FOR [aantalsb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___stn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___stn__srt]  DEFAULT ('') FOR [stn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___aantalsh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___aantalsh]  DEFAULT ((0)) FOR [aantalsh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___tssnafsh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___tssnafsh]  DEFAULT ((0)) FOR [tssnafsh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___omtreks_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___omtreks_]  DEFAULT ((0)) FOR [omtreks_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___klcod_fr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___klcod_fr]  DEFAULT ('') FOR [klcod_fr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___inkvrpfr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___inkvrpfr]  DEFAULT ((0)) FOR [inkvrpfr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___klcod_lm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___klcod_lm]  DEFAULT ('') FOR [klcod_lm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___inkvrplm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___inkvrplm]  DEFAULT ((0)) FOR [inkvrplm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___klcod_rg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___klcod_rg]  DEFAULT ('') FOR [klcod_rg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___inkvrprg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___inkvrprg]  DEFAULT ((0)) FOR [inkvrprg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___ant__plw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___ant__plw]  DEFAULT ((0)) FOR [ant__plw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___ant__klw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___ant__klw]  DEFAULT ((0)) FOR [ant__klw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___ant_pltn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___ant_pltn]  DEFAULT ((0)) FOR [ant_pltn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplt_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplt_0]  DEFAULT ((0)) FOR [antplt_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplt_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplt_1]  DEFAULT ((0)) FOR [antplt_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplt_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplt_2]  DEFAULT ((0)) FOR [antplt_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplt_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplt_3]  DEFAULT ((0)) FOR [antplt_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplt_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplt_4]  DEFAULT ((0)) FOR [antplt_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplt_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplt_5]  DEFAULT ((0)) FOR [antplt_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplt_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplt_6]  DEFAULT ((0)) FOR [antplt_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplt_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplt_7]  DEFAULT ((0)) FOR [antplt_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplw_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplw_0]  DEFAULT ((0)) FOR [antplw_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplw_1]  DEFAULT ((0)) FOR [antplw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplw_2]  DEFAULT ((0)) FOR [antplw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplw_3]  DEFAULT ((0)) FOR [antplw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplw_4]  DEFAULT ((0)) FOR [antplw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplw_5]  DEFAULT ((0)) FOR [antplw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplw_6]  DEFAULT ((0)) FOR [antplw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplw_7]  DEFAULT ((0)) FOR [antplw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplwa0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplwa0]  DEFAULT ((0)) FOR [antplwa0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplwa1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplwa1]  DEFAULT ((0)) FOR [antplwa1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplwa2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplwa2]  DEFAULT ((0)) FOR [antplwa2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplwa3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplwa3]  DEFAULT ((0)) FOR [antplwa3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplwa4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplwa4]  DEFAULT ((0)) FOR [antplwa4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplwa5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplwa5]  DEFAULT ((0)) FOR [antplwa5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplwa6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplwa6]  DEFAULT ((0)) FOR [antplwa6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antplwa7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antplwa7]  DEFAULT ((0)) FOR [antplwa7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklw_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklw_0]  DEFAULT ((0)) FOR [antklw_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklw_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklw_1]  DEFAULT ((0)) FOR [antklw_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklw_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklw_2]  DEFAULT ((0)) FOR [antklw_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklw_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklw_3]  DEFAULT ((0)) FOR [antklw_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklw_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklw_4]  DEFAULT ((0)) FOR [antklw_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklw_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklw_5]  DEFAULT ((0)) FOR [antklw_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklw_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklw_6]  DEFAULT ((0)) FOR [antklw_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklw_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklw_7]  DEFAULT ((0)) FOR [antklw_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklwa0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklwa0]  DEFAULT ((0)) FOR [antklwa0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklwa1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklwa1]  DEFAULT ((0)) FOR [antklwa1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklwa2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklwa2]  DEFAULT ((0)) FOR [antklwa2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklwa3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklwa3]  DEFAULT ((0)) FOR [antklwa3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklwa4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklwa4]  DEFAULT ((0)) FOR [antklwa4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklwa5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklwa5]  DEFAULT ((0)) FOR [antklwa5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklwa6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklwa6]  DEFAULT ((0)) FOR [antklwa6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___antklwa7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___antklwa7]  DEFAULT ((0)) FOR [antklwa7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plttfak0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plttfak0]  DEFAULT ((0)) FOR [plttfak0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plttfak1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plttfak1]  DEFAULT ((0)) FOR [plttfak1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plttfak2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plttfak2]  DEFAULT ((0)) FOR [plttfak2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plttfak3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plttfak3]  DEFAULT ((0)) FOR [plttfak3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plttfak4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plttfak4]  DEFAULT ((0)) FOR [plttfak4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plttfak5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plttfak5]  DEFAULT ((0)) FOR [plttfak5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plttfak6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plttfak6]  DEFAULT ((0)) FOR [plttfak6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plttfak7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plttfak7]  DEFAULT ((0)) FOR [plttfak7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt0__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt0__vm]  DEFAULT ((0)) FOR [plt0__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt1__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt1__vm]  DEFAULT ((0)) FOR [plt1__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt2__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt2__vm]  DEFAULT ((0)) FOR [plt2__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt3__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt3__vm]  DEFAULT ((0)) FOR [plt3__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt4__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt4__vm]  DEFAULT ((0)) FOR [plt4__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt5__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt5__vm]  DEFAULT ((0)) FOR [plt5__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt6__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt6__vm]  DEFAULT ((0)) FOR [plt6__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt7__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt7__vm]  DEFAULT ((0)) FOR [plt7__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt0__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt0__bm]  DEFAULT ((0)) FOR [plt0__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt1__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt1__bm]  DEFAULT ((0)) FOR [plt1__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt2__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt2__bm]  DEFAULT ((0)) FOR [plt2__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt3__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt3__bm]  DEFAULT ((0)) FOR [plt3__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt4__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt4__bm]  DEFAULT ((0)) FOR [plt4__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt5__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt5__bm]  DEFAULT ((0)) FOR [plt5__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt6__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt6__bm]  DEFAULT ((0)) FOR [plt6__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt7__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt7__bm]  DEFAULT ((0)) FOR [plt7__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___trm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___trm__ref]  DEFAULT ('') FOR [trm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___spdd____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___spdd____]  DEFAULT ((0)) FOR [spdd____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___spddusr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___spddusr_]  DEFAULT ((0)) FOR [spddusr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___spdd_slg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___spdd_slg]  DEFAULT ((0)) FOR [spdd_slg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___spdduslg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___spdduslg]  DEFAULT ((0)) FOR [spdduslg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___ovt_na_m]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___ovt_na_m]  DEFAULT ((0)) FOR [ovt_na_m]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___ovt_nasl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___ovt_nasl]  DEFAULT ((0)) FOR [ovt_nasl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___stl____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___stl____t]  DEFAULT ('') FOR [stl____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___stlusr_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___stlusr_t]  DEFAULT ('') FOR [stlusr_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___wasusr_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___wasusr_t]  DEFAULT ('') FOR [wasusr_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___stel_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___stel_tyd]  DEFAULT ('') FOR [stel_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___was__tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___was__tyd]  DEFAULT ('') FOR [was__tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___druk_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___druk_tyd]  DEFAULT ('') FOR [druk_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___druk1tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___druk1tyd]  DEFAULT ('') FOR [druk1tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___druk2tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___druk2tyd]  DEFAULT ('') FOR [druk2tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___stlafu_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___stlafu_t]  DEFAULT ('') FOR [stlafu_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___min____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___min____b]  DEFAULT ((0)) FOR [min____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___minimumb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___minimumb]  DEFAULT ((0)) FOR [minimumb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___marge__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___marge__l]  DEFAULT ((0)) FOR [marge__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___marge__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___marge__r]  DEFAULT ((0)) FOR [marge__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___margebnl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___margebnl]  DEFAULT ((0)) FOR [margebnl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___margebnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___margebnr]  DEFAULT ((0)) FOR [margebnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___tedrk___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___tedrk___]  DEFAULT ((0)) FOR [tedrk___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___tedrk_to]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___tedrk_to]  DEFAULT ((0)) FOR [tedrk_to]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___prcinsvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___prcinsvo]  DEFAULT ((0)) FOR [prcinsvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___prcinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___prcinsvu]  DEFAULT ((0)) FOR [prcinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___inlinsvo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___inlinsvo]  DEFAULT ((0)) FOR [inlinsvo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___inlinsvu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___inlinsvu]  DEFAULT ((0)) FOR [inlinsvu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___stlafuin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___stlafuin]  DEFAULT ((0)) FOR [stlafuin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___bldoprol]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___bldoprol]  DEFAULT ('') FOR [bldoprol]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___flm__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___flm__peh]  DEFAULT ((0)) FOR [flm__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___plt__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___plt__peh]  DEFAULT ((0)) FOR [plt__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___rostnpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___rostnpeh]  DEFAULT ((0)) FOR [rostnpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___vlstnpeh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___vlstnpeh]  DEFAULT ((0)) FOR [vlstnpeh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___tpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___tpl__ref]  DEFAULT ('') FOR [tpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___mark_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___mark_ref]  DEFAULT ('') FOR [mark_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___stgy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___stgy_ref]  DEFAULT ('') FOR [stgy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___spdd_target]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___spdd_target]  DEFAULT ((0)) FOR [spdd_target]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___spdd_target_slg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___spdd_target_slg]  DEFAULT ((0)) FOR [spdd_target_slg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2edg___gew_inkt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2edg___] ADD  CONSTRAINT [DF_v2edg___gew_inkt]  DEFAULT ((0)) FOR [gew_inkt]
END

