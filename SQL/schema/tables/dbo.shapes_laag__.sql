SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shapes_laag__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shapes_laag__](
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laag_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[layer_class] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [shapes_laagi0] PRIMARY KEY CLUSTERED 
(
	[shaperef] ASC,
	[laag_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_laag__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_laag__] ADD  CONSTRAINT [DF_shapes_laag__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_laag__laag_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_laag__] ADD  CONSTRAINT [DF_shapes_laag__laag_ref]  DEFAULT ('') FOR [laag_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_laag__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_laag__] ADD  CONSTRAINT [DF_shapes_laag__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_laag__layer_class]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_laag__] ADD  CONSTRAINT [DF_shapes_laag__layer_class]  DEFAULT ('') FOR [layer_class]
END

