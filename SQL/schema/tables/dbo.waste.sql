SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[waste]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[waste](
	[wasteID] [int] IDENTITY(1,1) NOT NULL,
	[spoolJobID] [int] NULL,
	[weight] [real] NULL,
	[insertDT] [datetime] NULL,
	[upsize_ts] [timestamp] NULL,
	[qty] [int] NULL,
	[lastModified] [datetime] NULL,
 CONSTRAINT [aaaaawaste_PK] PRIMARY KEY NONCLUSTERED 
(
	[wasteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[waste]') AND name = N'spoolJobID')
CREATE NONCLUSTERED INDEX [spoolJobID] ON [dbo].[waste]
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[waste]') AND name = N'spoolJobwaste')
CREATE NONCLUSTERED INDEX [spoolJobwaste] ON [dbo].[waste]
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[waste]') AND name = N'wasteID')
CREATE NONCLUSTERED INDEX [wasteID] ON [dbo].[waste]
(
	[wasteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__waste__insertDT__68E867AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[waste] ADD  DEFAULT (getdate()) FOR [insertDT]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_waste_qty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[waste] ADD  CONSTRAINT [DF_waste_qty]  DEFAULT ((0)) FOR [qty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_waste_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[waste] ADD  CONSTRAINT [DF_waste_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[waste_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[waste]'))
ALTER TABLE [dbo].[waste]  WITH NOCHECK ADD  CONSTRAINT [waste_FK00] FOREIGN KEY([spoolJobID])
REFERENCES [dbo].[spoolJob] ([spoolJobID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[waste_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[waste]'))
ALTER TABLE [dbo].[waste] NOCHECK CONSTRAINT [waste_FK00]
