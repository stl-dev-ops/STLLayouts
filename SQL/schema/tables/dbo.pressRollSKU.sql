SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pressRollSKU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pressRollSKU](
	[pressRollSKUID] [int] IDENTITY(1,1) NOT NULL,
	[brickID] [int] NOT NULL,
	[hlf__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[lastModified] [datetime] NULL,
 CONSTRAINT [PK_pressRollSKU] PRIMARY KEY CLUSTERED 
(
	[pressRollSKUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pressRollSKU_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pressRollSKU] ADD  CONSTRAINT [DF_pressRollSKU_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pressRollSKU_brick]') AND parent_object_id = OBJECT_ID(N'[dbo].[pressRollSKU]'))
ALTER TABLE [dbo].[pressRollSKU]  WITH CHECK ADD  CONSTRAINT [FK_pressRollSKU_brick] FOREIGN KEY([brickID])
REFERENCES [dbo].[brick] ([brickID])
ON UPDATE CASCADE
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_pressRollSKU_brick]') AND parent_object_id = OBJECT_ID(N'[dbo].[pressRollSKU]'))
ALTER TABLE [dbo].[pressRollSKU] CHECK CONSTRAINT [FK_pressRollSKU_brick]
