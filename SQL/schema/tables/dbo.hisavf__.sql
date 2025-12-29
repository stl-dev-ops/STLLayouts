SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisavf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisavf__](
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
	[dok_com_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ing__dat] [date] NOT NULL,
	[ins__dat] [date] NOT NULL,
	[dok__dat] [date] NOT NULL,
	[verv_dat] [date] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[basis_vm] [float] NOT NULL,
	[basis_bm] [float] NOT NULL,
	[basis_om] [float] NOT NULL,
	[btw___vm] [float] NOT NULL,
	[btw___bm] [float] NOT NULL,
	[btw___om] [float] NOT NULL,
	[tota__bm] [float] NOT NULL,
	[tota__vm] [float] NOT NULL,
	[tota__om] [float] NOT NULL,
	[bedcodv0] [float] NOT NULL,
	[bedcodv1] [float] NOT NULL,
	[bedcodv2] [float] NOT NULL,
	[bedcodv3] [float] NOT NULL,
	[bedcodv4] [float] NOT NULL,
	[bedbtwv0] [float] NOT NULL,
	[bedbtwv1] [float] NOT NULL,
	[bedbtwv2] [float] NOT NULL,
	[bedbtwv3] [float] NOT NULL,
	[bedbtwv4] [float] NOT NULL,
	[bedcodb0] [float] NOT NULL,
	[bedcodb1] [float] NOT NULL,
	[bedcodb2] [float] NOT NULL,
	[bedcodb3] [float] NOT NULL,
	[bedcodb4] [float] NOT NULL,
	[bedbtwb0] [float] NOT NULL,
	[bedbtwb1] [float] NOT NULL,
	[bedbtwb2] [float] NOT NULL,
	[bedbtwb3] [float] NOT NULL,
	[bedbtwb4] [float] NOT NULL,
	[bedcodo0] [float] NOT NULL,
	[bedcodo1] [float] NOT NULL,
	[bedcodo2] [float] NOT NULL,
	[bedcodo3] [float] NOT NULL,
	[bedcodo4] [float] NOT NULL,
	[bedbtwo0] [float] NOT NULL,
	[bedbtwo1] [float] NOT NULL,
	[bedbtwo2] [float] NOT NULL,
	[bedbtwo3] [float] NOT NULL,
	[bedbtwo4] [float] NOT NULL,
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
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisavfi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__fak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__fak__ref]  DEFAULT ('') FOR [fak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__dgbk_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__dgbk_srt]  DEFAULT ('') FOR [dgbk_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__doorst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__doorst__]  DEFAULT ('') FOR [doorst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__dok_com_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__dok_com_]  DEFAULT ('') FOR [dok_com_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__ing__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__ing__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ing__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__ins__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__ins__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [ins__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__verv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__verv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [verv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__dok__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__dok__srt]  DEFAULT ('') FOR [dok__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__btw_beh_]  DEFAULT ('') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__basis_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__basis_vm]  DEFAULT ((0)) FOR [basis_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__basis_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__basis_bm]  DEFAULT ((0)) FOR [basis_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__basis_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__basis_om]  DEFAULT ((0)) FOR [basis_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__btw___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__btw___vm]  DEFAULT ((0)) FOR [btw___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__btw___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__btw___bm]  DEFAULT ((0)) FOR [btw___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__btw___om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__btw___om]  DEFAULT ((0)) FOR [btw___om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__tota__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__tota__bm]  DEFAULT ((0)) FOR [tota__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__tota__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__tota__vm]  DEFAULT ((0)) FOR [tota__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__tota__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__tota__om]  DEFAULT ((0)) FOR [tota__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodv0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodv0]  DEFAULT ((0)) FOR [bedcodv0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodv1]  DEFAULT ((0)) FOR [bedcodv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodv2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodv2]  DEFAULT ((0)) FOR [bedcodv2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodv3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodv3]  DEFAULT ((0)) FOR [bedcodv3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodv4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodv4]  DEFAULT ((0)) FOR [bedcodv4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwv0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwv0]  DEFAULT ((0)) FOR [bedbtwv0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwv1]  DEFAULT ((0)) FOR [bedbtwv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwv2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwv2]  DEFAULT ((0)) FOR [bedbtwv2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwv3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwv3]  DEFAULT ((0)) FOR [bedbtwv3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwv4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwv4]  DEFAULT ((0)) FOR [bedbtwv4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodb0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodb0]  DEFAULT ((0)) FOR [bedcodb0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodb1]  DEFAULT ((0)) FOR [bedcodb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodb2]  DEFAULT ((0)) FOR [bedcodb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodb3]  DEFAULT ((0)) FOR [bedcodb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodb4]  DEFAULT ((0)) FOR [bedcodb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwb0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwb0]  DEFAULT ((0)) FOR [bedbtwb0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwb1]  DEFAULT ((0)) FOR [bedbtwb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwb2]  DEFAULT ((0)) FOR [bedbtwb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwb3]  DEFAULT ((0)) FOR [bedbtwb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwb4]  DEFAULT ((0)) FOR [bedbtwb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodo0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodo0]  DEFAULT ((0)) FOR [bedcodo0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodo1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodo1]  DEFAULT ((0)) FOR [bedcodo1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodo2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodo2]  DEFAULT ((0)) FOR [bedcodo2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodo3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodo3]  DEFAULT ((0)) FOR [bedcodo3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedcodo4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedcodo4]  DEFAULT ((0)) FOR [bedcodo4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwo0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwo0]  DEFAULT ((0)) FOR [bedbtwo0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwo1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwo1]  DEFAULT ((0)) FOR [bedbtwo1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwo2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwo2]  DEFAULT ((0)) FOR [bedbtwo2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwo3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwo3]  DEFAULT ((0)) FOR [bedbtwo3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedbtwo4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedbtwo4]  DEFAULT ((0)) FOR [bedbtwo4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhb0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhb0]  DEFAULT ((0)) FOR [bedmvhb0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhb1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhb1]  DEFAULT ((0)) FOR [bedmvhb1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhb2]  DEFAULT ((0)) FOR [bedmvhb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhb3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhb3]  DEFAULT ((0)) FOR [bedmvhb3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhb4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhb4]  DEFAULT ((0)) FOR [bedmvhb4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhv0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhv0]  DEFAULT ((0)) FOR [bedmvhv0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhv1]  DEFAULT ((0)) FOR [bedmvhv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhv2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhv2]  DEFAULT ((0)) FOR [bedmvhv2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhv3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhv3]  DEFAULT ((0)) FOR [bedmvhv3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvhv4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvhv4]  DEFAULT ((0)) FOR [bedmvhv4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvho0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvho0]  DEFAULT ((0)) FOR [bedmvho0]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvho1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvho1]  DEFAULT ((0)) FOR [bedmvho1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvho2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvho2]  DEFAULT ((0)) FOR [bedmvho2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvho3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvho3]  DEFAULT ((0)) FOR [bedmvho3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisavf__bedmvho4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisavf__] ADD  CONSTRAINT [DF_hisavf__bedmvho4]  DEFAULT ((0)) FOR [bedmvho4]
END

