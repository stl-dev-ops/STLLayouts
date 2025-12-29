SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rewindBrickSKU]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rewindBrickSKU](
	[rewindBrickSKUID] [int] IDENTITY(1,1) NOT NULL,
	[rewindBrickID] [int] NOT NULL,
	[brickID] [int] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_rewindBrickSKU] PRIMARY KEY CLUSTERED 
(
	[rewindBrickSKUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrickSKU_rewindBrickID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrickSKU] ADD  CONSTRAINT [DF_rewindBrickSKU_rewindBrickID]  DEFAULT ((0)) FOR [rewindBrickID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrickSKU_brickID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrickSKU] ADD  CONSTRAINT [DF_rewindBrickSKU_brickID]  DEFAULT ((0)) FOR [brickID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrickSKU_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrickSKU] ADD  CONSTRAINT [DF_rewindBrickSKU_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

