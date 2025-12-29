SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_PressRollXstlST_RewindBrick]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_PressRollXstlST_RewindBrick](
	[stlST_PressRollXstlST_RewindBrickID] [int] IDENTITY(1,1) NOT NULL,
	[stlST_PressRollID] [int] NOT NULL,
	[stlST_RewindBrickID] [int] NOT NULL,
	[goodCount] [int] NOT NULL,
	[goodLabels] [int] NOT NULL,
	[grossLabels] [int] NOT NULL,
	[wn___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlST_PressRollXstlST_RewindBrick] PRIMARY KEY CLUSTERED 
(
	[stlST_PressRollXstlST_RewindBrickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRollXstlST_RewindBrick_stlST_PressRollID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_PressRollXstlST_RewindBrick_stlST_PressRollID]  DEFAULT ((0)) FOR [stlST_PressRollID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRollXstlST_RewindBrick_stlST_RewindBrickID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_PressRollXstlST_RewindBrick_stlST_RewindBrickID]  DEFAULT ((0)) FOR [stlST_RewindBrickID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRollXstlST_RewindBrick_goodCount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_PressRollXstlST_RewindBrick_goodCount]  DEFAULT ((0)) FOR [goodCount]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRollXstlST_RewindBrick_goodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_PressRollXstlST_RewindBrick_goodLabels]  DEFAULT ((0)) FOR [goodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRollXstlST_RewindBrick_grossLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_PressRollXstlST_RewindBrick_grossLabels]  DEFAULT ((0)) FOR [grossLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_PressRollXstlST_RewindBrick_wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick] ADD  CONSTRAINT [DF_stlST_PressRollXstlST_RewindBrick_wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__X_RewindBrickID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlST_PressRollXstlST_RewindBrick]'))
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick]  WITH CHECK ADD  CONSTRAINT [FK__X_RewindBrickID] FOREIGN KEY([stlST_RewindBrickID])
REFERENCES [dbo].[stlST_RewindBrick] ([stlST_RewindBrickID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__X_RewindBrickID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlST_PressRollXstlST_RewindBrick]'))
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick] CHECK CONSTRAINT [FK__X_RewindBrickID]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_X_PressRollID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlST_PressRollXstlST_RewindBrick]'))
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick]  WITH CHECK ADD  CONSTRAINT [FK_X_PressRollID] FOREIGN KEY([stlST_PressRollID])
REFERENCES [dbo].[stlST_PressRoll] ([stlST_PressRollID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_X_PressRollID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlST_PressRollXstlST_RewindBrick]'))
ALTER TABLE [dbo].[stlST_PressRollXstlST_RewindBrick] CHECK CONSTRAINT [FK_X_PressRollID]
