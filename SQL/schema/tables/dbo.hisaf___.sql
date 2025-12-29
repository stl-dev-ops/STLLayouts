SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisaf___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisaf___](
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[ing__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[verv_dat] [date] NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok_com_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwinex_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[doorst__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_0] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_1] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_2] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_3] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_4] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_5] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_6] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_7] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_8] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom_9] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom10] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom11] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom12] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom13] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom14] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[txtkom15] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[total_vm] [float] NOT NULL,
	[total_bm] [float] NOT NULL,
	[total_om] [float] NOT NULL,
	[btw___vm] [float] NOT NULL,
	[btw___bm] [float] NOT NULL,
	[btw___om] [float] NOT NULL,
	[mvhff_vm] [float] NOT NULL,
	[mvhff_bm] [float] NOT NULL,
	[mvhff_om] [float] NOT NULL,
	[tot_o_vm] [float] NOT NULL,
	[tot_o_bm] [float] NOT NULL,
	[tot_o_om] [float] NOT NULL,
	[totno1vm] [float] NOT NULL,
	[totno1bm] [float] NOT NULL,
	[totno1om] [float] NOT NULL,
	[totno2vm] [float] NOT NULL,
	[totno2bm] [float] NOT NULL,
	[totno2om] [float] NOT NULL,
	[totno3vm] [float] NOT NULL,
	[totno3bm] [float] NOT NULL,
	[totno3om] [float] NOT NULL,
	[totno4vm] [float] NOT NULL,
	[totno4bm] [float] NOT NULL,
	[totno4om] [float] NOT NULL,
	[basis0bm] [float] NOT NULL,
	[basis1bm] [float] NOT NULL,
	[basis2bm] [float] NOT NULL,
	[basis3bm] [float] NOT NULL,
	[basis4bm] [float] NOT NULL,
	[basis5bm] [float] NOT NULL,
	[basis0vm] [float] NOT NULL,
	[basis1vm] [float] NOT NULL,
	[basis2vm] [float] NOT NULL,
	[basis3vm] [float] NOT NULL,
	[basis4vm] [float] NOT NULL,
	[basis5vm] [float] NOT NULL,
	[basis0om] [float] NOT NULL,
	[basis1om] [float] NOT NULL,
	[basis2om] [float] NOT NULL,
	[basis3om] [float] NOT NULL,
	[basis4om] [float] NOT NULL,
	[basis5om] [float] NOT NULL,
	[btw0__bm] [float] NOT NULL,
	[btw1__bm] [float] NOT NULL,
	[btw2__bm] [float] NOT NULL,
	[btw3__bm] [float] NOT NULL,
	[btw4__bm] [float] NOT NULL,
	[btw5__bm] [float] NOT NULL,
	[btw0__vm] [float] NOT NULL,
	[btw1__vm] [float] NOT NULL,
	[btw2__vm] [float] NOT NULL,
	[btw3__vm] [float] NOT NULL,
	[btw4__vm] [float] NOT NULL,
	[btw5__vm] [float] NOT NULL,
	[btw0__om] [float] NOT NULL,
	[btw1__om] [float] NOT NULL,
	[btw2__om] [float] NOT NULL,
	[btw3__om] [float] NOT NULL,
	[btw4__om] [float] NOT NULL,
	[btw5__om] [float] NOT NULL,
	[mvhff0bm] [float] NOT NULL,
	[mvhff1bm] [float] NOT NULL,
	[mvhff2bm] [float] NOT NULL,
	[mvhff3bm] [float] NOT NULL,
	[mvhff4bm] [float] NOT NULL,
	[mvhff5bm] [float] NOT NULL,
	[mvhff0vm] [float] NOT NULL,
	[mvhff1vm] [float] NOT NULL,
	[mvhff2vm] [float] NOT NULL,
	[mvhff3vm] [float] NOT NULL,
	[mvhff4vm] [float] NOT NULL,
	[mvhff5vm] [float] NOT NULL,
	[mvhff0om] [float] NOT NULL,
	[mvhff1om] [float] NOT NULL,
	[mvhff2om] [float] NOT NULL,
	[mvhff3om] [float] NOT NULL,
	[mvhff4om] [float] NOT NULL,
	[mvhff5om] [float] NOT NULL,
	[fkt___ex] [int] NOT NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev_loc3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dienst__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[landreff] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[postreff] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[texcl_vm] [float] NOT NULL,
	[texcl_bm] [float] NOT NULL,
	[texcl_om] [float] NOT NULL,
	[tincl_vm] [float] NOT NULL,
	[tincl_bm] [float] NOT NULL,
	[tincl_om] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisaf_i1] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___verv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___verv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___dok_com_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___dok_com_]  DEFAULT ('') FOR [dok_com_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btwinex_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btwinex_]  DEFAULT ('') FOR [btwinex_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___doorst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___doorst__]  DEFAULT ('') FOR [doorst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_0]  DEFAULT ('') FOR [txtkom_0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_1]  DEFAULT ('') FOR [txtkom_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_2]  DEFAULT ('') FOR [txtkom_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_3]  DEFAULT ('') FOR [txtkom_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_4]  DEFAULT ('') FOR [txtkom_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_5]  DEFAULT ('') FOR [txtkom_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_6]  DEFAULT ('') FOR [txtkom_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_7]  DEFAULT ('') FOR [txtkom_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_8]  DEFAULT ('') FOR [txtkom_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom_9]  DEFAULT ('') FOR [txtkom_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom10]  DEFAULT ('') FOR [txtkom10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom11]  DEFAULT ('') FOR [txtkom11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom12]  DEFAULT ('') FOR [txtkom12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom13]  DEFAULT ('') FOR [txtkom13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom14]  DEFAULT ('') FOR [txtkom14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___txtkom15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___txtkom15]  DEFAULT ('') FOR [txtkom15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___total_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___total_vm]  DEFAULT ((0)) FOR [total_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___total_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___total_bm]  DEFAULT ((0)) FOR [total_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___total_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___total_om]  DEFAULT ((0)) FOR [total_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw___vm]  DEFAULT ((0)) FOR [btw___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw___bm]  DEFAULT ((0)) FOR [btw___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw___om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw___om]  DEFAULT ((0)) FOR [btw___om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff_vm]  DEFAULT ((0)) FOR [mvhff_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff_bm]  DEFAULT ((0)) FOR [mvhff_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff_om]  DEFAULT ((0)) FOR [mvhff_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___tot_o_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___tot_o_vm]  DEFAULT ((0)) FOR [tot_o_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___tot_o_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___tot_o_bm]  DEFAULT ((0)) FOR [tot_o_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___tot_o_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___tot_o_om]  DEFAULT ((0)) FOR [tot_o_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno1vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno1vm]  DEFAULT ((0)) FOR [totno1vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno1bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno1bm]  DEFAULT ((0)) FOR [totno1bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno1om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno1om]  DEFAULT ((0)) FOR [totno1om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno2vm]  DEFAULT ((0)) FOR [totno2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno2bm]  DEFAULT ((0)) FOR [totno2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno2om]  DEFAULT ((0)) FOR [totno2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno3vm]  DEFAULT ((0)) FOR [totno3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno3bm]  DEFAULT ((0)) FOR [totno3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno3om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno3om]  DEFAULT ((0)) FOR [totno3om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno4vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno4vm]  DEFAULT ((0)) FOR [totno4vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno4bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno4bm]  DEFAULT ((0)) FOR [totno4bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___totno4om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___totno4om]  DEFAULT ((0)) FOR [totno4om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis0bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis0bm]  DEFAULT ((0)) FOR [basis0bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis1bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis1bm]  DEFAULT ((0)) FOR [basis1bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis2bm]  DEFAULT ((0)) FOR [basis2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis3bm]  DEFAULT ((0)) FOR [basis3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis4bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis4bm]  DEFAULT ((0)) FOR [basis4bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis5bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis5bm]  DEFAULT ((0)) FOR [basis5bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis0vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis0vm]  DEFAULT ((0)) FOR [basis0vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis1vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis1vm]  DEFAULT ((0)) FOR [basis1vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis2vm]  DEFAULT ((0)) FOR [basis2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis3vm]  DEFAULT ((0)) FOR [basis3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis4vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis4vm]  DEFAULT ((0)) FOR [basis4vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis5vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis5vm]  DEFAULT ((0)) FOR [basis5vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis0om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis0om]  DEFAULT ((0)) FOR [basis0om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis1om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis1om]  DEFAULT ((0)) FOR [basis1om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis2om]  DEFAULT ((0)) FOR [basis2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis3om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis3om]  DEFAULT ((0)) FOR [basis3om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis4om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis4om]  DEFAULT ((0)) FOR [basis4om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___basis5om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___basis5om]  DEFAULT ((0)) FOR [basis5om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw0__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw0__bm]  DEFAULT ((0)) FOR [btw0__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw1__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw1__bm]  DEFAULT ((0)) FOR [btw1__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw2__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw2__bm]  DEFAULT ((0)) FOR [btw2__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw3__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw3__bm]  DEFAULT ((0)) FOR [btw3__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw4__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw4__bm]  DEFAULT ((0)) FOR [btw4__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw5__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw5__bm]  DEFAULT ((0)) FOR [btw5__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw0__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw0__vm]  DEFAULT ((0)) FOR [btw0__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw1__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw1__vm]  DEFAULT ((0)) FOR [btw1__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw2__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw2__vm]  DEFAULT ((0)) FOR [btw2__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw3__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw3__vm]  DEFAULT ((0)) FOR [btw3__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw4__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw4__vm]  DEFAULT ((0)) FOR [btw4__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw5__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw5__vm]  DEFAULT ((0)) FOR [btw5__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw0__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw0__om]  DEFAULT ((0)) FOR [btw0__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw1__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw1__om]  DEFAULT ((0)) FOR [btw1__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw2__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw2__om]  DEFAULT ((0)) FOR [btw2__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw3__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw3__om]  DEFAULT ((0)) FOR [btw3__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw4__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw4__om]  DEFAULT ((0)) FOR [btw4__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___btw5__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___btw5__om]  DEFAULT ((0)) FOR [btw5__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff0bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff0bm]  DEFAULT ((0)) FOR [mvhff0bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff1bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff1bm]  DEFAULT ((0)) FOR [mvhff1bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff2bm]  DEFAULT ((0)) FOR [mvhff2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff3bm]  DEFAULT ((0)) FOR [mvhff3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff4bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff4bm]  DEFAULT ((0)) FOR [mvhff4bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff5bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff5bm]  DEFAULT ((0)) FOR [mvhff5bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff0vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff0vm]  DEFAULT ((0)) FOR [mvhff0vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff1vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff1vm]  DEFAULT ((0)) FOR [mvhff1vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff2vm]  DEFAULT ((0)) FOR [mvhff2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff3vm]  DEFAULT ((0)) FOR [mvhff3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff4vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff4vm]  DEFAULT ((0)) FOR [mvhff4vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff5vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff5vm]  DEFAULT ((0)) FOR [mvhff5vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff0om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff0om]  DEFAULT ((0)) FOR [mvhff0om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff1om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff1om]  DEFAULT ((0)) FOR [mvhff1om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff2om]  DEFAULT ((0)) FOR [mvhff2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff3om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff3om]  DEFAULT ((0)) FOR [mvhff3om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff4om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff4om]  DEFAULT ((0)) FOR [mvhff4om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___mvhff5om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___mvhff5om]  DEFAULT ((0)) FOR [mvhff5om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___fkt___ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___fkt___ex]  DEFAULT ((0)) FOR [fkt___ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___layoutnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___layoutnr]  DEFAULT ('') FOR [layoutnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___lev_loc1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___lev_loc1]  DEFAULT ('') FOR [lev_loc1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___lev_loc2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___lev_loc2]  DEFAULT ('') FOR [lev_loc2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___lev_loc3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___lev_loc3]  DEFAULT ('') FOR [lev_loc3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___dienst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___dienst__]  DEFAULT ('') FOR [dienst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___landreff]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___landreff]  DEFAULT ('') FOR [landreff]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___postreff]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___postreff]  DEFAULT ('') FOR [postreff]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___texcl_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___texcl_vm]  DEFAULT ((0)) FOR [texcl_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___texcl_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___texcl_bm]  DEFAULT ((0)) FOR [texcl_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___texcl_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___texcl_om]  DEFAULT ((0)) FOR [texcl_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___tincl_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___tincl_vm]  DEFAULT ((0)) FOR [tincl_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___tincl_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___tincl_bm]  DEFAULT ((0)) FOR [tincl_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisaf___tincl_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisaf___] ADD  CONSTRAINT [DF_hisaf___tincl_om]  DEFAULT ((0)) FOR [tincl_om]
END

