SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2eshp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2eshp__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wikk____] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lblgp_mn] [float] NOT NULL,
	[lblgp_mx] [float] NOT NULL,
	[rol____b] [float] NOT NULL,
	[aantallb] [int] NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[row__vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[tssnaf_h] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2eshpi0] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[kpn__ref] ASC,
	[shp__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__shp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__shp__ref]  DEFAULT ('') FOR [shp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__wikk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__wikk____]  DEFAULT ('') FOR [wikk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__lblgp_mn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__lblgp_mn]  DEFAULT ((0)) FOR [lblgp_mn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__lblgp_mx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__lblgp_mx]  DEFAULT ((0)) FOR [lblgp_mx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__rol____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__rol____b]  DEFAULT ((0)) FOR [rol____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__aantallb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__aantallb]  DEFAULT ((0)) FOR [aantallb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__row__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__row__vnr]  DEFAULT ('') FOR [row__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2eshp__tssnaf_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2eshp__] ADD  CONSTRAINT [DF_v2eshp__tssnaf_h]  DEFAULT ((0)) FOR [tssnaf_h]
END

