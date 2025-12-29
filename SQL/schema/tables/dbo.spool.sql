SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spool]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spool](
	[spoolID] [int] IDENTITY(1,1) NOT NULL,
	[spoolNo] [int] NULL,
	[Qty] [int] NULL,
	[Weight] [real] NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
	[spoolJobID] [int] NULL,
	[upsize_ts] [timestamp] NULL,
	[lastModified] [datetime] NULL,
	[weightPer20K] [real] NULL,
	[flatRollQty] [int] NULL,
	[flatRollDiff] [int] NULL,
	[note] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[qaHold] [bit] NULL,
 CONSTRAINT [aaaaaspool_PK] PRIMARY KEY NONCLUSTERED 
(
	[spoolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[spool]') AND name = N'spoolJobID')
CREATE NONCLUSTERED INDEX [spoolJobID] ON [dbo].[spool]
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[spool]') AND name = N'spoolJobspool')
CREATE NONCLUSTERED INDEX [spoolJobspool] ON [dbo].[spool]
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spool__spoolNo__7ED7A8CB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spool] ADD  DEFAULT ((0)) FOR [spoolNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spool__Qty__7FCBCD04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spool] ADD  DEFAULT ((0)) FOR [Qty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spool__Weight__00BFF13D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spool] ADD  DEFAULT ((0)) FOR [Weight]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spool__spoolJobI__01B41576]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spool] ADD  DEFAULT ((0)) FOR [spoolJobID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spool_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spool] ADD  CONSTRAINT [DF_spool_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spool_note]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spool] ADD  CONSTRAINT [DF_spool_note]  DEFAULT ('') FOR [note]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spool_usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spool] ADD  CONSTRAINT [DF_spool_usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spool_qaHold]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spool] ADD  CONSTRAINT [DF_spool_qaHold]  DEFAULT ((0)) FOR [qaHold]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[spool_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[spool]'))
ALTER TABLE [dbo].[spool]  WITH NOCHECK ADD  CONSTRAINT [spool_FK00] FOREIGN KEY([spoolJobID])
REFERENCES [dbo].[spoolJob] ([spoolJobID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[spool_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[spool]'))
ALTER TABLE [dbo].[spool] NOCHECK CONSTRAINT [spool_FK00]
