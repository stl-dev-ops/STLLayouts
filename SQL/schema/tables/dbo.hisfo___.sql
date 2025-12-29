SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisfo___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisfo___](
	[dgbk_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[doorst__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fak__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[ing__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[verv_dat] [date] NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[tota__bm] [float] NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__om] [float] NOT NULL,
	[tot_o_bm] [float] NOT NULL,
	[tot_o_vm] [float] NOT NULL,
	[tot_o_om] [float] NOT NULL,
	[totno1bm] [float] NOT NULL,
	[totno1vm] [float] NOT NULL,
	[totno1om] [float] NOT NULL,
	[totno2bm] [float] NOT NULL,
	[totno2vm] [float] NOT NULL,
	[totno2om] [float] NOT NULL,
	[totno3bm] [float] NOT NULL,
	[totno3vm] [float] NOT NULL,
	[totno3om] [float] NOT NULL,
	[totno4bm] [float] NOT NULL,
	[totno4vm] [float] NOT NULL,
	[totno4om] [float] NOT NULL,
	[bedmvhb0] [float] NOT NULL,
	[bedmvhb1] [float] NOT NULL,
	[bedmvhb2] [float] NOT NULL,
	[bedmvhb3] [float] NOT NULL,
	[bedmvhb4] [float] NOT NULL,
	[bedmvhv0] [float] NOT NULL,
	[bedmvhv1] [float] NOT NULL,
	[bedmvhv2] [float] NOT NULL,
	[bedmvhv3] [float] NOT NULL,
	[bedmvhv4] [float] NOT NULL,
	[bedmvho0] [float] NOT NULL,
	[bedmvho1] [float] NOT NULL,
	[bedmvho2] [float] NOT NULL,
	[bedmvho3] [float] NOT NULL,
	[bedmvho4] [float] NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr___] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kon_kort] [float] NOT NULL,
	[komm_ebk] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[aang_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aang_fir] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6_] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6a] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_6b] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_7_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_8_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_9_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kolom_11] [int] NOT NULL,
	[koloma12] [float] NOT NULL,
	[kolom_13] [float] NOT NULL,
	[gwstintr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[code_mkl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jaar____] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kwartaal] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisfo_i3] PRIMARY KEY CLUSTERED 
(
	[dgbk_ref] ASC,
	[bkj__ref] ASC,
	[fak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisfo___]') AND name = N'hisfo_i4')
CREATE NONCLUSTERED INDEX [hisfo_i4] ON [dbo].[hisfo___]
(
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___dgbk_srt]  DEFAULT ('') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___doorst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___doorst__]  DEFAULT ('') FOR [doorst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___verv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___verv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___tota__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___tota__om]  DEFAULT ((0)) FOR [tota__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___tot_o_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___tot_o_bm]  DEFAULT ((0)) FOR [tot_o_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___tot_o_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___tot_o_vm]  DEFAULT ((0)) FOR [tot_o_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___tot_o_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___tot_o_om]  DEFAULT ((0)) FOR [tot_o_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno1bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno1bm]  DEFAULT ((0)) FOR [totno1bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno1vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno1vm]  DEFAULT ((0)) FOR [totno1vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno1om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno1om]  DEFAULT ((0)) FOR [totno1om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno2bm]  DEFAULT ((0)) FOR [totno2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno2vm]  DEFAULT ((0)) FOR [totno2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno2om]  DEFAULT ((0)) FOR [totno2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno3bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno3bm]  DEFAULT ((0)) FOR [totno3bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno3vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno3vm]  DEFAULT ((0)) FOR [totno3vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno3om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno3om]  DEFAULT ((0)) FOR [totno3om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno4bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno4bm]  DEFAULT ((0)) FOR [totno4bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno4vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno4vm]  DEFAULT ((0)) FOR [totno4vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___totno4om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___totno4om]  DEFAULT ((0)) FOR [totno4om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhb0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhb0]  DEFAULT ((0)) FOR [bedmvhb0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhb1]  DEFAULT ((0)) FOR [bedmvhb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhb2]  DEFAULT ((0)) FOR [bedmvhb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhb3]  DEFAULT ((0)) FOR [bedmvhb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhb4]  DEFAULT ((0)) FOR [bedmvhb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhv0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhv0]  DEFAULT ((0)) FOR [bedmvhv0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhv1]  DEFAULT ((0)) FOR [bedmvhv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhv2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhv2]  DEFAULT ((0)) FOR [bedmvhv2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhv3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhv3]  DEFAULT ((0)) FOR [bedmvhv3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvhv4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvhv4]  DEFAULT ((0)) FOR [bedmvhv4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvho0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvho0]  DEFAULT ((0)) FOR [bedmvho0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvho1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvho1]  DEFAULT ((0)) FOR [bedmvho1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvho2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvho2]  DEFAULT ((0)) FOR [bedmvho2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvho3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvho3]  DEFAULT ((0)) FOR [bedmvho3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___bedmvho4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___bedmvho4]  DEFAULT ((0)) FOR [bedmvho4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___jobnr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___jobnr___]  DEFAULT ('') FOR [jobnr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kon_kort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kon_kort]  DEFAULT ((0)) FOR [kon_kort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___komm_ebk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___komm_ebk]  DEFAULT ('') FOR [komm_ebk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___aang_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___aang_srt]  DEFAULT ('') FOR [aang_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___aang_fir]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___aang_fir]  DEFAULT ('') FOR [aang_fir]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_6_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_6_]  DEFAULT ('') FOR [kolom_6_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_6a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_6a]  DEFAULT ('') FOR [kolom_6a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_6b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_6b]  DEFAULT ('') FOR [kolom_6b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_7_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_7_]  DEFAULT ('') FOR [kolom_7_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_8_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_8_]  DEFAULT ('') FOR [kolom_8_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_9_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_9_]  DEFAULT ('') FOR [kolom_9_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_10]  DEFAULT ('') FOR [kolom_10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_11]  DEFAULT ((0)) FOR [kolom_11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___koloma12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___koloma12]  DEFAULT ((0)) FOR [koloma12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kolom_13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kolom_13]  DEFAULT ((0)) FOR [kolom_13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___gwstintr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___gwstintr]  DEFAULT ('') FOR [gwstintr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___code_mkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___code_mkl]  DEFAULT ('') FOR [code_mkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___jaar____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___jaar____]  DEFAULT ('') FOR [jaar____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisfo___kwartaal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisfo___] ADD  CONSTRAINT [DF_hisfo___kwartaal]  DEFAULT ('') FOR [kwartaal]
END

