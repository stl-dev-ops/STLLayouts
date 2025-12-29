SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[arthlp_variant_shapes__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[arthlp_variant_shapes__](
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_var__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [arthlp_variant_shapesi0] PRIMARY KEY CLUSTERED 
(
	[arth_ref] ASC,
	[arth_var__ref] ASC,
	[shaperef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[arthlp_variant_shapes__]') AND name = N'arthlp_variant_shapesi1')
CREATE NONCLUSTERED INDEX [arthlp_variant_shapesi1] ON [dbo].[arthlp_variant_shapes__]
(
	[shaperef] ASC,
	[arth_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_variant_shapes__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_variant_shapes__] ADD  CONSTRAINT [DF_arthlp_variant_shapes__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_variant_shapes__arth_var__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_variant_shapes__] ADD  CONSTRAINT [DF_arthlp_variant_shapes__arth_var__ref]  DEFAULT ('') FOR [arth_var__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_variant_shapes__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_variant_shapes__] ADD  CONSTRAINT [DF_arthlp_variant_shapes__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_variant_shapes__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_variant_shapes__] ADD  CONSTRAINT [DF_arthlp_variant_shapes__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_variant_shapes__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_variant_shapes__] ADD  CONSTRAINT [DF_arthlp_variant_shapes__job__inl]  DEFAULT ('') FOR [job__inl]
END

