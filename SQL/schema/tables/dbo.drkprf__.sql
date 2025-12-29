SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkprf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkprf__](
	[prf__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prf__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[prf__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdmref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_mref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkprfi1] PRIMARY KEY CLUSTERED 
(
	[prf__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__prf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__prf__ref]  DEFAULT ('') FOR [prf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__prf__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__prf__rpn]  DEFAULT ('') FOR [prf__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__prf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__prf__oms]  DEFAULT ('') FOR [prf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__prd__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__prd__oms]  DEFAULT ('') FOR [prd__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__kstdmref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__kstdmref]  DEFAULT ('') FOR [kstdmref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__rbk_mref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__rbk_mref]  DEFAULT ('') FOR [rbk_mref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprf__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprf__] ADD  CONSTRAINT [DF_drkprf__art__ref]  DEFAULT ('') FOR [art__ref]
END

