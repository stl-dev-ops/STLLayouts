SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kontra__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kontra__](
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_om2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_om3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vervldat] [date] NOT NULL,
	[aantal__] [float] NOT NULL,
	[nr_kla__] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[infopers] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdg_jaar] [float] NOT NULL,
	[bdg_uitg] [float] NOT NULL,
	[frequent] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_crea] [date] NOT NULL,
	[komment1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord_begl] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[int_cont] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ptt__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[ptt__kon] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitgeput] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_uitg] [date] NOT NULL,
	[wie_uitg] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom_uitg] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval06] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval07] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval08] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval09] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval10] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ktrk_id1] PRIMARY KEY CLUSTERED 
(
	[ktrk_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__ktrk_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__ktrk_rpn]  DEFAULT ('') FOR [ktrk_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__taal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__taal_ref]  DEFAULT ('') FOR [taal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__ktrk_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__ktrk_oms]  DEFAULT ('') FOR [ktrk_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__ktrk_om2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__ktrk_om2]  DEFAULT ('') FOR [ktrk_om2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__ktrk_om3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__ktrk_om3]  DEFAULT ('') FOR [ktrk_om3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__vervldat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__vervldat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vervldat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__nr_kla__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__nr_kla__]  DEFAULT ('') FOR [nr_kla__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__infopers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__infopers]  DEFAULT ('') FOR [infopers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__bdg_jaar]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__bdg_jaar]  DEFAULT ((0)) FOR [bdg_jaar]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__bdg_uitg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__bdg_uitg]  DEFAULT ((0)) FOR [bdg_uitg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__frequent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__frequent]  DEFAULT ('') FOR [frequent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__dat_crea]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__dat_crea]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_crea]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__ord_begl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__ord_begl]  DEFAULT ('') FOR [ord_begl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__int_cont]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__int_cont]  DEFAULT ('') FOR [int_cont]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__ptt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__ptt__ref]  DEFAULT ('') FOR [ptt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__ptt__kon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__ptt__kon]  DEFAULT ('') FOR [ptt__kon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__uitgeput]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__uitgeput]  DEFAULT ('') FOR [uitgeput]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__dat_uitg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__dat_uitg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_uitg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__wie_uitg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__wie_uitg]  DEFAULT ('') FOR [wie_uitg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__kom_uitg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__kom_uitg]  DEFAULT ('') FOR [kom_uitg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__layoutnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__layoutnr]  DEFAULT ('') FOR [layoutnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kontra__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kontra__] ADD  CONSTRAINT [DF_kontra__tstval10]  DEFAULT ('') FOR [tstval10]
END

