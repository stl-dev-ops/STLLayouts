SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spoolJobQtyCalculation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[spoolJobQtyCalculation](
	[spoolJobQtyCalculationID] [int] IDENTITY(1,1) NOT NULL,
	[spoolJobID] [int] NULL,
	[brickID] [int] NULL,
	[qty] [int] NULL,
	[weight] [real] NULL,
	[upsize_ts] [timestamp] NULL,
	[lastModified] [datetime] NULL,
	[useToCalc] [bit] NULL,
	[goodLabels] [int] NULL,
	[badRows] [int] NULL,
 CONSTRAINT [aaaaaspoolJobQtyCalculation_PK] PRIMARY KEY NONCLUSTERED 
(
	[spoolJobQtyCalculationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[spoolJobQtyCalculation]') AND name = N'brickID')
CREATE NONCLUSTERED INDEX [brickID] ON [dbo].[spoolJobQtyCalculation]
(
	[brickID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[spoolJobQtyCalculation]') AND name = N'spoolJobID')
CREATE NONCLUSTERED INDEX [spoolJobID] ON [dbo].[spoolJobQtyCalculation]
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[spoolJobQtyCalculation]') AND name = N'spoolJobspoolJobQtyCalculation')
CREATE NONCLUSTERED INDEX [spoolJobspoolJobQtyCalculation] ON [dbo].[spoolJobQtyCalculation]
(
	[spoolJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spoolJobQ__spool__6DAD1CC9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJobQtyCalculation] ADD  DEFAULT ((0)) FOR [spoolJobID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spoolJobQ__brick__6EA14102]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJobQtyCalculation] ADD  DEFAULT ((0)) FOR [brickID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spoolJobQty__qty__6F95653B]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJobQtyCalculation] ADD  DEFAULT ((0)) FOR [qty]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__spoolJobQ__weigh__70898974]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJobQtyCalculation] ADD  DEFAULT ((0)) FOR [weight]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolJobQtyCalculation_lastModified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJobQtyCalculation] ADD  CONSTRAINT [DF_spoolJobQtyCalculation_lastModified]  DEFAULT (getdate()) FOR [lastModified]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolJobQtyCalculation_useToCalc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJobQtyCalculation] ADD  CONSTRAINT [DF_spoolJobQtyCalculation_useToCalc]  DEFAULT ((1)) FOR [useToCalc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolJobQtyCalculation_goodLabels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJobQtyCalculation] ADD  CONSTRAINT [DF_spoolJobQtyCalculation_goodLabels]  DEFAULT ((0)) FOR [goodLabels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_spoolJobQtyCalculation_badRows]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[spoolJobQtyCalculation] ADD  CONSTRAINT [DF_spoolJobQtyCalculation_badRows]  DEFAULT ((0)) FOR [badRows]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[spoolJobQtyCalculation_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[spoolJobQtyCalculation]'))
ALTER TABLE [dbo].[spoolJobQtyCalculation]  WITH NOCHECK ADD  CONSTRAINT [spoolJobQtyCalculation_FK00] FOREIGN KEY([spoolJobID])
REFERENCES [dbo].[spoolJob] ([spoolJobID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[spoolJobQtyCalculation_FK00]') AND parent_object_id = OBJECT_ID(N'[dbo].[spoolJobQtyCalculation]'))
ALTER TABLE [dbo].[spoolJobQtyCalculation] NOCHECK CONSTRAINT [spoolJobQtyCalculation_FK00]
