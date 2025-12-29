SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mail____]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mail____](
	[mail_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[betreft_] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[ondtel__] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__trg] [date] NOT NULL,
	[aktie___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[naamvrt_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[titel___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[naamuitv] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___04] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___05] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___06] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___07] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___08] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___09] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___10] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___11] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___12] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___13] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___14] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___15] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___16] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___17] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___18] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___19] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___20] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___21] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___22] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___23] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___24] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___25] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___26] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___27] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___28] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___29] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrg___30] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_bta] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [mail_id1] PRIMARY KEY CLUSTERED 
(
	[mail_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____mail_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____mail_ref]  DEFAULT ('') FOR [mail_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____betreft_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____betreft_]  DEFAULT ('') FOR [betreft_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____ondtel__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____ondtel__]  DEFAULT ('') FOR [ondtel__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____dat__trg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____dat__trg]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__trg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____aktie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____aktie___]  DEFAULT ('') FOR [aktie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____naamvrt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____naamvrt_]  DEFAULT ('') FOR [naamvrt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____titel___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____titel___]  DEFAULT ('') FOR [titel___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____uitv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____uitv_ref]  DEFAULT ('') FOR [uitv_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____naamuitv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____naamuitv]  DEFAULT ('') FOR [naamuitv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___01]  DEFAULT ('') FOR [vrg___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___02]  DEFAULT ('') FOR [vrg___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___03]  DEFAULT ('') FOR [vrg___03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___04]  DEFAULT ('') FOR [vrg___04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___05]  DEFAULT ('') FOR [vrg___05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___06]  DEFAULT ('') FOR [vrg___06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___07]  DEFAULT ('') FOR [vrg___07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___08]  DEFAULT ('') FOR [vrg___08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___09]  DEFAULT ('') FOR [vrg___09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___10]  DEFAULT ('') FOR [vrg___10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___11]  DEFAULT ('') FOR [vrg___11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___12]  DEFAULT ('') FOR [vrg___12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___13]  DEFAULT ('') FOR [vrg___13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___14]  DEFAULT ('') FOR [vrg___14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___15]  DEFAULT ('') FOR [vrg___15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___16]  DEFAULT ('') FOR [vrg___16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___17]  DEFAULT ('') FOR [vrg___17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___18]  DEFAULT ('') FOR [vrg___18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___19]  DEFAULT ('') FOR [vrg___19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___20]  DEFAULT ('') FOR [vrg___20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___21]  DEFAULT ('') FOR [vrg___21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___22]  DEFAULT ('') FOR [vrg___22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___23]  DEFAULT ('') FOR [vrg___23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___24]  DEFAULT ('') FOR [vrg___24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___25]  DEFAULT ('') FOR [vrg___25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___26]  DEFAULT ('') FOR [vrg___26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___27]  DEFAULT ('') FOR [vrg___27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___28]  DEFAULT ('') FOR [vrg___28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___29]  DEFAULT ('') FOR [vrg___29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____vrg___30]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____vrg___30]  DEFAULT ('') FOR [vrg___30]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mail____aant_bta]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mail____] ADD  CONSTRAINT [DF_mail____aant_bta]  DEFAULT ((0)) FOR [aant_bta]
END

