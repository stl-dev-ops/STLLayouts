SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stdeas__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stdeas__](
	[etas_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd__oms] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[grd__prc] [float] NOT NULL,
	[grd__peh] [float] NOT NULL,
	[kommen__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[extrabre] [float] NOT NULL,
	[weblabel] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rfqonw4l] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stdeasi1] PRIMARY KEY CLUSTERED 
(
	[etas_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__etas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__etas_ref]  DEFAULT ('') FOR [etas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__grd__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__grd__oms]  DEFAULT ('') FOR [grd__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__grd__prc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__grd__prc]  DEFAULT ((0)) FOR [grd__prc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__grd__peh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__grd__peh]  DEFAULT ((0)) FOR [grd__peh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__kommen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__kommen__]  DEFAULT ('') FOR [kommen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__extrabre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__extrabre]  DEFAULT ((0)) FOR [extrabre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__weblabel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__weblabel]  DEFAULT ('') FOR [weblabel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdeas__rfqonw4l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdeas__] ADD  CONSTRAINT [DF_stdeas__rfqonw4l]  DEFAULT ('') FOR [rfqonw4l]
END

