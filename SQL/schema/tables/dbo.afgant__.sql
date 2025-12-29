SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgant__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgant__](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__vrrd] [float] NOT NULL,
	[overprod] [float] NOT NULL,
	[te_lever] [float] NOT NULL,
	[behoefte] [float] NOT NULL,
	[in_produ] [float] NOT NULL,
	[in___qrt] [float] NOT NULL,
	[in_best_] [float] NOT NULL,
	[l_akp___] [float] NOT NULL,
	[dat__vrz] [date] NOT NULL,
	[dat_begi] [date] NOT NULL,
	[dat_stck] [date] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afganti1] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__in__vrrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__in__vrrd]  DEFAULT ((0)) FOR [in__vrrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__overprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__overprod]  DEFAULT ((0)) FOR [overprod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__te_lever]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__te_lever]  DEFAULT ((0)) FOR [te_lever]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__behoefte]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__behoefte]  DEFAULT ((0)) FOR [behoefte]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__in_produ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__in_produ]  DEFAULT ((0)) FOR [in_produ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__in___qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__in___qrt]  DEFAULT ((0)) FOR [in___qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__in_best_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__in_best_]  DEFAULT ((0)) FOR [in_best_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__l_akp___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__l_akp___]  DEFAULT ((0)) FOR [l_akp___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__dat__vrz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__dat__vrz]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__vrz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__dat_begi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__dat_begi]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_begi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgant__dat_stck]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgant__] ADD  CONSTRAINT [DF_afgant__dat_stck]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_stck]
END

