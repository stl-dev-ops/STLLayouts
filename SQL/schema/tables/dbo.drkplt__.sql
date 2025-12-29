SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkplt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkplt__](
	[plt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plaatvyn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[maxdruks] [int] NOT NULL,
	[ultdruks] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[mat__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[breedte_] [float] NOT NULL,
	[lengte__] [float] NOT NULL,
	[dikte___] [float] NOT NULL,
	[kstdpref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdmref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_pref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_mref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[isextern] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkplti1] PRIMARY KEY CLUSTERED 
(
	[plt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__plt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__plt__ref]  DEFAULT ('') FOR [plt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__plt__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__plt__rpn]  DEFAULT ('') FOR [plt__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__plt__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__plt__oms]  DEFAULT ('') FOR [plt__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__prd__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__prd__oms]  DEFAULT ('') FOR [prd__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__tyd___vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__tyd___vb]  DEFAULT ('  0:00') FOR [tyd___vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__tyd___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__tyd___02]  DEFAULT ('  0:00') FOR [tyd___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__plaatvyn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__plaatvyn]  DEFAULT ('') FOR [plaatvyn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__maxdruks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__maxdruks]  DEFAULT ((0)) FOR [maxdruks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__ultdruks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__ultdruks]  DEFAULT ((0)) FOR [ultdruks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__mat__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__mat__oms]  DEFAULT ('') FOR [mat__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__lengte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__lengte__]  DEFAULT ((0)) FOR [lengte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__dikte___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__dikte___]  DEFAULT ((0)) FOR [dikte___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__kstdpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__kstdpref]  DEFAULT ('') FOR [kstdpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__kstdmref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__kstdmref]  DEFAULT ('') FOR [kstdmref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__rbk_pref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__rbk_pref]  DEFAULT ('') FOR [rbk_pref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__rbk_mref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__rbk_mref]  DEFAULT ('') FOR [rbk_mref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkplt__isextern]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkplt__] ADD  CONSTRAINT [DF_drkplt__isextern]  DEFAULT ('') FOR [isextern]
END

