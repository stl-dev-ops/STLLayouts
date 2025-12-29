SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[arthlp_shapes__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[arthlp_shapes__](
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [arthlp_shapesi0] PRIMARY KEY CLUSTERED 
(
	[arth_ref] ASC,
	[shaperef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_shapes__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_shapes__] ADD  CONSTRAINT [DF_arthlp_shapes__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_arthlp_shapes__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[arthlp_shapes__] ADD  CONSTRAINT [DF_arthlp_shapes__shaperef]  DEFAULT ('') FOR [shaperef]
END

