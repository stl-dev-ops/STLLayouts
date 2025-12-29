SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trnbon__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[trnbon__](
	[trn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__dat] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__dat] [date] NOT NULL,
	[trn__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laad_dat] [date] NOT NULL,
	[laad_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laaduser] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnredi] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[trng1ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [trnbon_1] PRIMARY KEY CLUSTERED 
(
	[trn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__bst__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__bst__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bst__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__ord__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__ord__tst]  DEFAULT ('') FOR [ord__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__fac__tst]  DEFAULT ('') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__trn__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__trn__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [trn__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__trn__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__trn__uur]  DEFAULT ('') FOR [trn__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__laad_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__laad_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [laad_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__laad_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__laad_uur]  DEFAULT ('') FOR [laad_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__laaduser]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__laaduser]  DEFAULT ('') FOR [laaduser]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__jobnredi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__jobnredi]  DEFAULT ('') FOR [jobnredi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__trng1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__trng1ref]  DEFAULT ('') FOR [trng1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnbon__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnbon__] ADD  CONSTRAINT [DF_trnbon__comment_]  DEFAULT ('') FOR [comment_]
END

