SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trntar__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[trntar__](
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[aard____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[levertyd] [int] NOT NULL,
	[leveruur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[loo__vrh] [int] NOT NULL,
	[mac__vrh] [int] NOT NULL,
	[ovh__vrh] [int] NOT NULL,
	[oa___vrh] [int] NOT NULL,
	[taal___1] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[levv_her] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [trntari1] PRIMARY KEY CLUSTERED 
(
	[trnt_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__trnt_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__trnt_rpn]  DEFAULT ('') FOR [trnt_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__trnt_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__trnt_oms]  DEFAULT ('') FOR [trnt_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__aard____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__aard____]  DEFAULT ('') FOR [aard____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__levertyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__levertyd]  DEFAULT ((0)) FOR [levertyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__leveruur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__leveruur]  DEFAULT ('') FOR [leveruur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__loo__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__loo__vrh]  DEFAULT ((0)) FOR [loo__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__mac__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__mac__vrh]  DEFAULT ((0)) FOR [mac__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__ovh__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__ovh__vrh]  DEFAULT ((0)) FOR [ovh__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__oa___vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__oa___vrh]  DEFAULT ((0)) FOR [oa___vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trntar__levv_her]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trntar__] ADD  CONSTRAINT [DF_trntar__levv_her]  DEFAULT ('N') FOR [levv_her]
END

