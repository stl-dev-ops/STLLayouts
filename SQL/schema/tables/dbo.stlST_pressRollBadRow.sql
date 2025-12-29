SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_pressRollBadRow]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_pressRollBadRow](
	[stlST_pressRollBadRowID] [int] IDENTITY(1,1) NOT NULL,
	[stlST_RewindBrickID] [int] NOT NULL,
	[flatRollNo] [int] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
	[reason] [nvarchar](30) COLLATE Latin1_General_CI_AS NULL,
	[comment] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[dept] [nvarchar](30) COLLATE Latin1_General_CI_AS NULL,
	[departmentName] [nvarchar](30) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlST_pressRollBadRow] PRIMARY KEY CLUSTERED 
(
	[stlST_pressRollBadRowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_pressRollBadRow_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_pressRollBadRow] ADD  CONSTRAINT [DF_stlST_pressRollBadRow_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_pressRollBadRow_reason]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_pressRollBadRow] ADD  CONSTRAINT [DF_stlST_pressRollBadRow_reason]  DEFAULT ('') FOR [reason]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_pressRollBadRow_comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_pressRollBadRow] ADD  CONSTRAINT [DF_stlST_pressRollBadRow_comment]  DEFAULT ('') FOR [comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_pressRollBadRow_dept]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_pressRollBadRow] ADD  CONSTRAINT [DF_stlST_pressRollBadRow_dept]  DEFAULT ('') FOR [dept]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_pressRollBadRow_departmentName]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_pressRollBadRow] ADD  CONSTRAINT [DF_stlST_pressRollBadRow_departmentName]  DEFAULT ('') FOR [departmentName]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlST_pressRollBadRow_stlST_RewindBrick]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlST_pressRollBadRow]'))
ALTER TABLE [dbo].[stlST_pressRollBadRow]  WITH CHECK ADD  CONSTRAINT [FK_stlST_pressRollBadRow_stlST_RewindBrick] FOREIGN KEY([stlST_RewindBrickID])
REFERENCES [dbo].[stlST_RewindBrick] ([stlST_RewindBrickID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlST_pressRollBadRow_stlST_RewindBrick]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlST_pressRollBadRow]'))
ALTER TABLE [dbo].[stlST_pressRollBadRow] CHECK CONSTRAINT [FK_stlST_pressRollBadRow_stlST_RewindBrick]
