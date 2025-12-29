SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pressRollBadRow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pressRollBadRow](
	[pressRollBadRowID] [int] IDENTITY(1,1) NOT NULL,
	[pressRollWasteID] [int] NOT NULL,
	[flatRollNo] [int] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_pressRollBadRow] PRIMARY KEY CLUSTERED 
(
	[pressRollBadRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollBadRow_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollBadRow] ADD  CONSTRAINT [DF_pressRollBadRow_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pressRollBadRow_pressRollWaste1]') AND parent_object_id = OBJECT_ID(N'[dbo].[pressRollBadRow]'))
ALTER TABLE [dbo].[pressRollBadRow]  WITH CHECK ADD  CONSTRAINT [FK_pressRollBadRow_pressRollWaste1] FOREIGN KEY([pressRollWasteID])
REFERENCES [dbo].[pressRollWaste] ([pressRollWasteID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pressRollBadRow_pressRollWaste1]') AND parent_object_id = OBJECT_ID(N'[dbo].[pressRollBadRow]'))
ALTER TABLE [dbo].[pressRollBadRow] CHECK CONSTRAINT [FK_pressRollBadRow_pressRollWaste1]
