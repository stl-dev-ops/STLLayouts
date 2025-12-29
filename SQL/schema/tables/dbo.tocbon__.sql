SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tocbon__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tocbon__](
	[toc__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bst__dat] [date] NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__dat] [date] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[vrztotvm] [float] NOT NULL,
	[vrztotbm] [float] NOT NULL,
	[factotvm] [float] NOT NULL,
	[factotbm] [float] NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [tocboni1] PRIMARY KEY CLUSTERED 
(
	[toc__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__toc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__toc__ref]  DEFAULT ('') FOR [toc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__bst__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__bst__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bst__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__fac__tst]  DEFAULT ('') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__fac__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__fac__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fac__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__vrztotvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__vrztotvm]  DEFAULT ((0)) FOR [vrztotvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__vrztotbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__vrztotbm]  DEFAULT ((0)) FOR [vrztotbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__factotvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__factotvm]  DEFAULT ((0)) FOR [factotvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__factotbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__factotbm]  DEFAULT ((0)) FOR [factotbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tocbon__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tocbon__] ADD  CONSTRAINT [DF_tocbon__dossier_]  DEFAULT ('') FOR [dossier_]
END

