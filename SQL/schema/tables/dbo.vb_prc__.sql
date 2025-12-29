SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vb_prc__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[vb_prc__](
	[vbpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbpr_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbpr_om1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbpr_om2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan1] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan2] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan3] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aan4] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vb_prci1] PRIMARY KEY CLUSTERED 
(
	[vbpr_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__vbpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__vbpr_ref]  DEFAULT ('') FOR [vbpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__vbpr_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__vbpr_rpn]  DEFAULT ('') FOR [vbpr_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__vbpr_om1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__vbpr_om1]  DEFAULT ('') FOR [vbpr_om1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__vbpr_om2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__vbpr_om2]  DEFAULT ('') FOR [vbpr_om2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__oms_aan1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__oms_aan1]  DEFAULT ('') FOR [oms_aan1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__oms_aan2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__oms_aan2]  DEFAULT ('') FOR [oms_aan2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__oms_aan3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__oms_aan3]  DEFAULT ('') FOR [oms_aan3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__oms_aan4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__oms_aan4]  DEFAULT ('') FOR [oms_aan4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_vb_prc__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[vb_prc__] ADD  CONSTRAINT [DF_vb_prc__dossier_]  DEFAULT ('') FOR [dossier_]
END

