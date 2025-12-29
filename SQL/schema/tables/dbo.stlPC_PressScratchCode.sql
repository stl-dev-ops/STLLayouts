SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_PressScratchCode]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_PressScratchCode](
	[stlPC_PressScratchCodeID] [int] IDENTITY(1,1) NOT NULL,
	[stlPC_PressID] [int] NOT NULL,
	[stlPC_ScratchCodeID] [int] NOT NULL,
 CONSTRAINT [PK_stlPC_PressScratchCode] PRIMARY KEY CLUSTERED 
(
	[stlPC_PressScratchCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_PressScratchCode_stlPC_Press]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_PressScratchCode]'))
ALTER TABLE [dbo].[stlPC_PressScratchCode]  WITH CHECK ADD  CONSTRAINT [FK_stlPC_PressScratchCode_stlPC_Press] FOREIGN KEY([stlPC_PressID])
REFERENCES [dbo].[stlPC_Press] ([stlPC_PressID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_PressScratchCode_stlPC_Press]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_PressScratchCode]'))
ALTER TABLE [dbo].[stlPC_PressScratchCode] CHECK CONSTRAINT [FK_stlPC_PressScratchCode_stlPC_Press]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_PressScratchCode_stlPC_ScratchCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_PressScratchCode]'))
ALTER TABLE [dbo].[stlPC_PressScratchCode]  WITH CHECK ADD  CONSTRAINT [FK_stlPC_PressScratchCode_stlPC_ScratchCode] FOREIGN KEY([stlPC_ScratchCodeID])
REFERENCES [dbo].[stlPC_ScratchCode] ([stlPC_ScratchCodeID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPC_PressScratchCode_stlPC_ScratchCode]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPC_PressScratchCode]'))
ALTER TABLE [dbo].[stlPC_PressScratchCode] CHECK CONSTRAINT [FK_stlPC_PressScratchCode_stlPC_ScratchCode]
