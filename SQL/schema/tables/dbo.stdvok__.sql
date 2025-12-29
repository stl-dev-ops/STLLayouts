SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stdvok__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stdvok__](
	[stvokref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stvokrpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[papie___] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[verkoop_] [float] NOT NULL,
	[adm_kost] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [stdvoki0] PRIMARY KEY CLUSTERED 
(
	[stvokref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__stvokref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__stvokref]  DEFAULT ('') FOR [stvokref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__stvokrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__stvokrpn]  DEFAULT ('') FOR [stvokrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__papie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__papie___]  DEFAULT ((0)) FOR [papie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__verkoop_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__verkoop_]  DEFAULT ((0)) FOR [verkoop_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdvok__adm_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdvok__] ADD  CONSTRAINT [DF_stdvok__adm_kost]  DEFAULT ((0)) FOR [adm_kost]
END

