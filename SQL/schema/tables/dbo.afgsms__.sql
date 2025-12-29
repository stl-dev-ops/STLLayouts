SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgsms__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgsms__](
	[sms__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afgdlref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[af2dlref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrsdlref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[kit__off] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[wikk____] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
	[sequence_nr] [int] NULL,
	[workflow] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vstinschiet] [float] NOT NULL,
	[prcinschiet] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [afgs_id1] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC,
	[afgdlref] ASC,
	[sms__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[afgsms__]') AND name = N'afgs_id2')
CREATE NONCLUSTERED INDEX [afgs_id2] ON [dbo].[afgsms__]
(
	[afgdlref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__sms__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__sms__ref]  DEFAULT ('') FOR [sms__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__versiref]  DEFAULT ('') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__afgdlref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__afgdlref]  DEFAULT ('') FOR [afgdlref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__af2dlref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__af2dlref]  DEFAULT ('') FOR [af2dlref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__vrsdlref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__vrsdlref]  DEFAULT ('') FOR [vrsdlref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__aantal__]  DEFAULT ((1.0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__kit__off]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__kit__off]  DEFAULT ('') FOR [kit__off]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__shp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__shp__ref]  DEFAULT ('') FOR [shp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__workflow]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__workflow]  DEFAULT ('0') FOR [workflow]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__vstinschiet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__vstinschiet]  DEFAULT ((0)) FOR [vstinschiet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgsms__prcinschiet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgsms__] ADD  CONSTRAINT [DF_afgsms__prcinschiet]  DEFAULT ((0)) FOR [prcinschiet]
END

