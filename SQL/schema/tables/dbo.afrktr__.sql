SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afrktr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afrktr__](
	[aktr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[lev__dat] [date] NOT NULL,
	[aktr_oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__afr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat_afr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gaant___] [float] NOT NULL,
	[gaant_kg] [float] NOT NULL,
	[baant___] [float] NOT NULL,
	[baant_kg] [float] NOT NULL,
	[laant___] [float] NOT NULL,
	[laant_kg] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[bpri__vm] [float] NOT NULL,
	[bpri__bm] [float] NOT NULL,
	[bpri__om] [float] NOT NULL,
	[bprik_vm] [float] NOT NULL,
	[bprik_bm] [float] NOT NULL,
	[bprik_om] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [aktr_id1] PRIMARY KEY CLUSTERED 
(
	[aktr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__aktr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__aktr_ref]  DEFAULT ('') FOR [aktr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__lev__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__lev__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [lev__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__aktr_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__aktr_oms]  DEFAULT ('') FOR [aktr_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__typ__afr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__typ__afr]  DEFAULT ('') FOR [typ__afr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__stat_afr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__stat_afr]  DEFAULT ('') FOR [stat_afr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__gaant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__gaant___]  DEFAULT ((0)) FOR [gaant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__gaant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__gaant_kg]  DEFAULT ((0)) FOR [gaant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__baant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__baant___]  DEFAULT ((0)) FOR [baant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__baant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__baant_kg]  DEFAULT ((0)) FOR [baant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__laant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__laant___]  DEFAULT ((0)) FOR [laant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__laant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__laant_kg]  DEFAULT ((0)) FOR [laant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__bpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__bpri__vm]  DEFAULT ((0)) FOR [bpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__bpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__bpri__bm]  DEFAULT ((0)) FOR [bpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__bpri__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__bpri__om]  DEFAULT ((0)) FOR [bpri__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__bprik_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__bprik_vm]  DEFAULT ((0)) FOR [bprik_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__bprik_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__bprik_bm]  DEFAULT ((0)) FOR [bprik_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afrktr__bprik_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afrktr__] ADD  CONSTRAINT [DF_afrktr__bprik_om]  DEFAULT ((0)) FOR [bprik_om]
END

