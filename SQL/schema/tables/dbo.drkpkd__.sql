SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkpkd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkpkd__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[prskdref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__pkd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_torn] [int] NOT NULL,
	[ant_klik] [int] NOT NULL,
	[klfmt__x] [float] NOT NULL,
	[klfmt__y] [float] NOT NULL,
	[kstdsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstddref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdwref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdoref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdiref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdzref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdkref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdpref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_sref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_dref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_wref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_oref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_iref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_zref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_kref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_pref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkpkdi1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[prskdref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__prskdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__prskdref]  DEFAULT ('') FOR [prskdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__typ__pkd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__typ__pkd]  DEFAULT ('2') FOR [typ__pkd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__ant_torn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__ant_torn]  DEFAULT ((0)) FOR [ant_torn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__ant_klik]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__ant_klik]  DEFAULT ((0)) FOR [ant_klik]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__klfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__klfmt__x]  DEFAULT ((9999)) FOR [klfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__klfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__klfmt__y]  DEFAULT ((9999)) FOR [klfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__kstdsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__kstdsref]  DEFAULT ('') FOR [kstdsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__kstddref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__kstddref]  DEFAULT ('') FOR [kstddref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__kstdwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__kstdwref]  DEFAULT ('') FOR [kstdwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__kstdoref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__kstdoref]  DEFAULT ('') FOR [kstdoref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__kstdiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__kstdiref]  DEFAULT ('') FOR [kstdiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__kstdzref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__kstdzref]  DEFAULT ('') FOR [kstdzref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__kstdkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__kstdkref]  DEFAULT ('') FOR [kstdkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__kstdpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__kstdpref]  DEFAULT ('') FOR [kstdpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__rbk_sref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__rbk_sref]  DEFAULT ('') FOR [rbk_sref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__rbk_dref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__rbk_dref]  DEFAULT ('') FOR [rbk_dref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__rbk_wref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__rbk_wref]  DEFAULT ('') FOR [rbk_wref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__rbk_oref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__rbk_oref]  DEFAULT ('') FOR [rbk_oref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__rbk_iref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__rbk_iref]  DEFAULT ('') FOR [rbk_iref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__rbk_zref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__rbk_zref]  DEFAULT ('') FOR [rbk_zref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__rbk_kref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__rbk_kref]  DEFAULT ('') FOR [rbk_kref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkpkd__rbk_pref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkpkd__] ADD  CONSTRAINT [DF_drkpkd__rbk_pref]  DEFAULT ('') FOR [rbk_pref]
END

