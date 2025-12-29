SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkppp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkppp__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ppp__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[mnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prf__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___vb] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___01] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___02] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tyd___03] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[maxdruks] [int] NOT NULL,
	[ultdruks] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[mat__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[breedte_] [float] NOT NULL,
	[lengte__] [float] NOT NULL,
	[dikte___] [float] NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdmref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_mref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkpppi1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC,
	[soort___] ASC,
	[ppp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__ppp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__ppp__ref]  DEFAULT ('') FOR [ppp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__mnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__mnt__ref]  DEFAULT ('') FOR [mnt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__prf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__prf__ref]  DEFAULT ('') FOR [prf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__plt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__plt__ref]  DEFAULT ('') FOR [plt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__tyd___vb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__tyd___vb]  DEFAULT ('  0:00') FOR [tyd___vb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__tyd___01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__tyd___01]  DEFAULT ('  0:00') FOR [tyd___01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__tyd___02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__tyd___02]  DEFAULT ('  0:00') FOR [tyd___02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__tyd___03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__tyd___03]  DEFAULT ('  0:00') FOR [tyd___03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__maxdruks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__maxdruks]  DEFAULT ((0)) FOR [maxdruks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__ultdruks]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__ultdruks]  DEFAULT ((0)) FOR [ultdruks]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__mat__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__mat__oms]  DEFAULT ('') FOR [mat__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__breedte_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__breedte_]  DEFAULT ((0)) FOR [breedte_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__lengte__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__lengte__]  DEFAULT ((0)) FOR [lengte__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__dikte___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__dikte___]  DEFAULT ((0)) FOR [dikte___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__kstdmref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__kstdmref]  DEFAULT ('') FOR [kstdmref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppp__rbk_mref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppp__] ADD  CONSTRAINT [DF_drkppp__rbk_mref]  DEFAULT ('') FOR [rbk_mref]
END

