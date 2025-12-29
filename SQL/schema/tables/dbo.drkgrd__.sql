SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkgrd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkgrd__](
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd__vrb] [float] NOT NULL,
	[kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[loo__vrh] [int] NOT NULL,
	[mac__vrh] [int] NOT NULL,
	[ovh__vrh] [int] NOT NULL,
	[grd__vrh] [int] NOT NULL,
	[oa___vrh] [int] NOT NULL,
	[toeslvrb] [float] NOT NULL,
	[oms__grd] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](150) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkgrdi1] PRIMARY KEY CLUSTERED 
(
	[afwg_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[drkgrd__]') AND name = N'drkgrdi2')
CREATE UNIQUE NONCLUSTERED INDEX [drkgrdi2] ON [dbo].[drkgrd__]
(
	[afwg_rpn] ASC,
	[afwg_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__afwg_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__afwg_rpn]  DEFAULT ('') FOR [afwg_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__type____]  DEFAULT ('1') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__grd__vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__grd__vrb]  DEFAULT ((0)) FOR [grd__vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__kstd_ref]  DEFAULT ('') FOR [kstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__loo__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__loo__vrh]  DEFAULT ((0)) FOR [loo__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__mac__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__mac__vrh]  DEFAULT ((0)) FOR [mac__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__ovh__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__ovh__vrh]  DEFAULT ((0)) FOR [ovh__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__grd__vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__grd__vrh]  DEFAULT ((1)) FOR [grd__vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__oa___vrh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__oa___vrh]  DEFAULT ((0)) FOR [oa___vrh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__toeslvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__toeslvrb]  DEFAULT ((0)) FOR [toeslvrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__oms__grd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__oms__grd]  DEFAULT ('') FOR [oms__grd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkgrd__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkgrd__] ADD  CONSTRAINT [DF_drkgrd__taal___9]  DEFAULT ('') FOR [taal___9]
END

