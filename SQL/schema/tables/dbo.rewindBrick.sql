SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rewindBrick]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rewindBrick](
	[rewindBrickID] [int] IDENTITY(1,1) NOT NULL,
	[qtyLabels] [int] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[closed] [bit] NOT NULL,
	[lastModified] [datetime] NOT NULL,
	[qtyFt] [real] NOT NULL,
	[rewindBrickNo] [int] NOT NULL,
	[tmstamp] [timestamp] NOT NULL,
	[spoolJob] [bit] NOT NULL,
	[grossQtyLabels] [int] NOT NULL,
 CONSTRAINT [PK_rewindBrick] PRIMARY KEY CLUSTERED 
(
	[rewindBrickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrick_qtyLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrick] ADD  CONSTRAINT [DF_rewindBrick_qtyLabels]  DEFAULT ((0)) FOR [qtyLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrick_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrick] ADD  CONSTRAINT [DF_rewindBrick_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrick_closed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrick] ADD  CONSTRAINT [DF_rewindBrick_closed]  DEFAULT ((0)) FOR [closed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrick_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrick] ADD  CONSTRAINT [DF_rewindBrick_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrick_qtyFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrick] ADD  CONSTRAINT [DF_rewindBrick_qtyFt]  DEFAULT ((0)) FOR [qtyFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrick_rewindBrickNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrick] ADD  CONSTRAINT [DF_rewindBrick_rewindBrickNo]  DEFAULT ((0)) FOR [rewindBrickNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrick_spoolJob]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrick] ADD  CONSTRAINT [DF_rewindBrick_spoolJob]  DEFAULT ((0)) FOR [spoolJob]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rewindBrick_grossQtyLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rewindBrick] ADD  CONSTRAINT [DF_rewindBrick_grossQtyLabels]  DEFAULT ((0)) FOR [grossQtyLabels]
END

