SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stnspr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stnspr__](
	[stns_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_rpn] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_oms] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[stn_vorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[radius__] [float] NOT NULL,
	[stn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lbl__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[magr_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[materie_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_b] [float] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[tssnaf_b] [float] NOT NULL,
	[tssnaf_h] [float] NOT NULL,
	[aantal_b] [int] NOT NULL,
	[aantal_h] [int] NOT NULL,
	[kitalign] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omtrek__] [float] NOT NULL,
	[tanden__] [float] NOT NULL,
	[tandmaat] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[schrank_] [float] NOT NULL,
	[kopwit__] [float] NOT NULL,
	[voetwit_] [float] NOT NULL,
	[kom_tand] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[stns_bre] [float] NOT NULL,
	[aant_mes] [int] NOT NULL,
	[kom_inch] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[marge__l] [float] NOT NULL,
	[marge__r] [float] NOT NULL,
	[margemnl] [float] NOT NULL,
	[margemnr] [float] NOT NULL,
	[mrgstprs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brg_plts] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fab__dat] [date] NOT NULL,
	[aktief__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__akt] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kontrole] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__typ] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__kwa] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom_snyh] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[start___] [float] NOT NULL,
	[aantal__] [float] NOT NULL,
	[datum___] [date] NOT NULL,
	[aanmaak_] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs0_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs1_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs2_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs3_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs4_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs5_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs6_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs7_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs8_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs9_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs10ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs11ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs12ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs13ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs14ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs15ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs16ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs17ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs18ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs19ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[weblabel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stnspri1] PRIMARY KEY CLUSTERED 
(
	[stns_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stnspr__]') AND name = N'stnspri2')
CREATE NONCLUSTERED INDEX [stnspri2] ON [dbo].[stnspr__]
(
	[aktief__] ASC,
	[stn__srt] ASC,
	[etiket_b] ASC,
	[etiket_h] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stnspr__]') AND name = N'stnspri3')
CREATE NONCLUSTERED INDEX [stnspri3] ON [dbo].[stnspr__]
(
	[aktief__] ASC,
	[stn_vorm] ASC,
	[etiket_b] ASC,
	[etiket_h] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__stns_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__stns_ref]  DEFAULT ('') FOR [stns_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__stns_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__stns_rpn]  DEFAULT ('') FOR [stns_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__stns_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__stns_oms]  DEFAULT ('') FOR [stns_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__stn_vorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__stn_vorm]  DEFAULT ('') FOR [stn_vorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__radius__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__radius__]  DEFAULT ((0)) FOR [radius__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__stn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__stn__srt]  DEFAULT ('') FOR [stn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__lbl__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__lbl__srt]  DEFAULT ('') FOR [lbl__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__magr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__magr_ref]  DEFAULT ('') FOR [magr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__materie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__materie_]  DEFAULT ('') FOR [materie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__etiket_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__etiket_b]  DEFAULT ((0)) FOR [etiket_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__tssnaf_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__tssnaf_b]  DEFAULT ((0)) FOR [tssnaf_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__tssnaf_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__tssnaf_h]  DEFAULT ((0)) FOR [tssnaf_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__aantal_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__aantal_b]  DEFAULT ((0)) FOR [aantal_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__aantal_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__aantal_h]  DEFAULT ((0)) FOR [aantal_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kitalign]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kitalign]  DEFAULT ('') FOR [kitalign]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__omtrek__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__omtrek__]  DEFAULT ((0)) FOR [omtrek__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__tanden__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__tanden__]  DEFAULT ((0)) FOR [tanden__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__tandmaat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__tandmaat]  DEFAULT ('') FOR [tandmaat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__schrank_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__schrank_]  DEFAULT ((0)) FOR [schrank_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kopwit__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kopwit__]  DEFAULT ((0)) FOR [kopwit__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__voetwit_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__voetwit_]  DEFAULT ((0)) FOR [voetwit_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kom_tand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kom_tand]  DEFAULT ('') FOR [kom_tand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__stns_bre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__stns_bre]  DEFAULT ((0)) FOR [stns_bre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__aant_mes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__aant_mes]  DEFAULT ((0)) FOR [aant_mes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kom_inch]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kom_inch]  DEFAULT ('') FOR [kom_inch]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__marge__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__marge__l]  DEFAULT ((0)) FOR [marge__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__marge__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__marge__r]  DEFAULT ((0)) FOR [marge__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__margemnl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__margemnl]  DEFAULT ((0)) FOR [margemnl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__margemnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__margemnr]  DEFAULT ((0)) FOR [margemnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__mrgstprs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__mrgstprs]  DEFAULT ('') FOR [mrgstprs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__brg_plts]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__brg_plts]  DEFAULT ('') FOR [brg_plts]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kommen_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kommen_1]  DEFAULT ('') FOR [kommen_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__fab__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__fab__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fab__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__aktief__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__aktief__]  DEFAULT ('') FOR [aktief__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kom__akt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kom__akt]  DEFAULT ('') FOR [kom__akt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kontrole]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kontrole]  DEFAULT ('') FOR [kontrole]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kom__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kom__typ]  DEFAULT ('') FOR [kom__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kom__kwa]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kom__kwa]  DEFAULT ('') FOR [kom__kwa]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__kom_snyh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__kom_snyh]  DEFAULT ('') FOR [kom_snyh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__start___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__start___]  DEFAULT ((0)) FOR [start___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__aanmaak_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__aanmaak_]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [aanmaak_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs0_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs0_ref]  DEFAULT ('') FOR [prs0_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs1_ref]  DEFAULT ('') FOR [prs1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs2_ref]  DEFAULT ('') FOR [prs2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs3_ref]  DEFAULT ('') FOR [prs3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs4_ref]  DEFAULT ('') FOR [prs4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs5_ref]  DEFAULT ('') FOR [prs5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs6_ref]  DEFAULT ('') FOR [prs6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs7_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs7_ref]  DEFAULT ('') FOR [prs7_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs8_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs8_ref]  DEFAULT ('') FOR [prs8_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs9_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs9_ref]  DEFAULT ('') FOR [prs9_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs10ref]  DEFAULT ('') FOR [prs10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs11ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs11ref]  DEFAULT ('') FOR [prs11ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs12ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs12ref]  DEFAULT ('') FOR [prs12ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs13ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs13ref]  DEFAULT ('') FOR [prs13ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs14ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs14ref]  DEFAULT ('') FOR [prs14ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs15ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs15ref]  DEFAULT ('') FOR [prs15ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs16ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs16ref]  DEFAULT ('') FOR [prs16ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs17ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs17ref]  DEFAULT ('') FOR [prs17ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs18ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs18ref]  DEFAULT ('') FOR [prs18ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__prs19ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__prs19ref]  DEFAULT ('') FOR [prs19ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stnspr__weblabel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stnspr__] ADD  CONSTRAINT [DF_stnspr__weblabel]  DEFAULT ('') FOR [weblabel]
END

