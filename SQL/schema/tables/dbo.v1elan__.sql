SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1elan__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1elan__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lane____] [int] NOT NULL,
	[shp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal_h] [int] NOT NULL,
	[tssnaf_h] [float] NOT NULL,
	[tssnafht] [float] NOT NULL,
	[tssnafhb] [float] NOT NULL,
	[marge__l] [float] NOT NULL,
	[marge__r] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1elani0] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[kpn__ref] ASC,
	[lane____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__lane____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__lane____]  DEFAULT ((0)) FOR [lane____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__shp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__shp__ref]  DEFAULT ('') FOR [shp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__aantal_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__aantal_h]  DEFAULT ((0)) FOR [aantal_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__tssnaf_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__tssnaf_h]  DEFAULT ((0)) FOR [tssnaf_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__tssnafht]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__tssnafht]  DEFAULT ((0)) FOR [tssnafht]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__tssnafhb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__tssnafhb]  DEFAULT ((0)) FOR [tssnafhb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__marge__l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__marge__l]  DEFAULT ((0)) FOR [marge__l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1elan__marge__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1elan__] ADD  CONSTRAINT [DF_v1elan__marge__r]  DEFAULT ((0)) FOR [marge__r]
END

