SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_RewindBrickSKU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_RewindBrickSKU](
	[stlST_RewindBrickSKUID] [int] IDENTITY(1,1) NOT NULL,
	[stlST_RewindBrickID] [int] NOT NULL,
	[lane] [int] NOT NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlST_RewindBrickSKU] PRIMARY KEY CLUSTERED 
(
	[stlST_RewindBrickSKUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrickSKU_stlST_RewindBrickID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrickSKU] ADD  CONSTRAINT [DF_stlST_RewindBrickSKU_stlST_RewindBrickID]  DEFAULT ((-1)) FOR [stlST_RewindBrickID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrickSKU_lane]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrickSKU] ADD  CONSTRAINT [DF_stlST_RewindBrickSKU_lane]  DEFAULT ((0)) FOR [lane]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_RewindBrickSKU_sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_RewindBrickSKU] ADD  CONSTRAINT [DF_stlST_RewindBrickSKU_sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlST_RewindBrickSKU_stlST_RewindBrick]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlST_RewindBrickSKU]'))
ALTER TABLE [dbo].[stlST_RewindBrickSKU]  WITH CHECK ADD  CONSTRAINT [FK_stlST_RewindBrickSKU_stlST_RewindBrick] FOREIGN KEY([stlST_RewindBrickID])
REFERENCES [dbo].[stlST_RewindBrick] ([stlST_RewindBrickID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlST_RewindBrickSKU_stlST_RewindBrick]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlST_RewindBrickSKU]'))
ALTER TABLE [dbo].[stlST_RewindBrickSKU] CHECK CONSTRAINT [FK_stlST_RewindBrickSKU_stlST_RewindBrick]
