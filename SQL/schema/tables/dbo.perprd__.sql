SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[perprd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[perprd__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[doss_ord] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[doss_kst] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type_ord] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[kost__ok] [float] NOT NULL,
	[kost__hd] [float] NOT NULL,
	[kost__to] [float] NOT NULL,
	[kost__th] [float] NOT NULL,
	[gefact__] [float] NOT NULL,
	[invent__] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [perprdi1] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__doss_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__doss_ord]  DEFAULT ('') FOR [doss_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__doss_kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__doss_kst]  DEFAULT ('') FOR [doss_kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__type_ord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__type_ord]  DEFAULT ('') FOR [type_ord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__artc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__artc_ref]  DEFAULT ('') FOR [artc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__onda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__onda_ref]  DEFAULT ('') FOR [onda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__kost__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__kost__ok]  DEFAULT ((0)) FOR [kost__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__kost__hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__kost__hd]  DEFAULT ((0)) FOR [kost__hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__kost__to]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__kost__to]  DEFAULT ((0)) FOR [kost__to]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__kost__th]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__kost__th]  DEFAULT ((0)) FOR [kost__th]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__gefact__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__gefact__]  DEFAULT ((0)) FOR [gefact__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_perprd__invent__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[perprd__] ADD  CONSTRAINT [DF_perprd__invent__]  DEFAULT ((0)) FOR [invent__]
END

