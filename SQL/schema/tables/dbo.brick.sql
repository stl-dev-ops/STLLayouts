SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[brick]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[brick](
	[brickID] [int] IDENTITY(1,1) NOT NULL,
	[spoolJobID] [int] NULL,
	[brickNo] [int] NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[flatRolls] [int] NULL,
	[wasteWeight] [real] NULL,
	[upsize_ts] [timestamp] NULL,
	[qty] [int] NULL,
	[lastModified] [datetime] NULL,
	[rewindBrickNo] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [aaaaabrick_PK] PRIMARY KEY NONCLUSTERED 
(
	[brickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[brick]') AND name = N'spoolJobbrick')
CREATE NONCLUSTERED INDEX [spoolJobbrick] ON [dbo].[brick]
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[brick]') AND name = N'spoolJobID')
CREATE NONCLUSTERED INDEX [spoolJobID] ON [dbo].[brick]
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__brick__spoolJobI__198B9F07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brick] ADD  DEFAULT ((0)) FOR [spoolJobID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__brick__brickNo__1A7FC340]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brick] ADD  DEFAULT ((0)) FOR [brickNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__brick__flatRolls__1B73E779]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brick] ADD  DEFAULT ((0)) FOR [flatRolls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__brick__wasteWeig__1C680BB2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brick] ADD  DEFAULT ((0)) FOR [wasteWeight]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brick_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brick] ADD  CONSTRAINT [DF_brick_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brick_rewindBrickNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brick] ADD  CONSTRAINT [DF_brick_rewindBrickNo]  DEFAULT ('') FOR [rewindBrickNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_brick_vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[brick] ADD  CONSTRAINT [DF_brick_vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[brick_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[brick]'))
ALTER TABLE [dbo].[brick]  WITH NOCHECK ADD  CONSTRAINT [brick_FK00] FOREIGN KEY([spoolJobID])
REFERENCES [dbo].[spoolJob] ([spoolJobID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[brick_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[brick]'))
ALTER TABLE [dbo].[brick] NOCHECK CONSTRAINT [brick_FK00]
