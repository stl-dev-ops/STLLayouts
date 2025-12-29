SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[arthlp_shapes_laag__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[arthlp_shapes_laag__](
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laag_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref_cutout] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [arthlp_shapes_laagi0] PRIMARY KEY CLUSTERED 
(
	[arth_ref] ASC,
	[shaperef] ASC,
	[laag_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_shapes_laag__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_shapes_laag__] ADD  CONSTRAINT [DF_arthlp_shapes_laag__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_shapes_laag__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_shapes_laag__] ADD  CONSTRAINT [DF_arthlp_shapes_laag__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_shapes_laag__laag_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_shapes_laag__] ADD  CONSTRAINT [DF_arthlp_shapes_laag__laag_ref]  DEFAULT ('') FOR [laag_ref]
END

