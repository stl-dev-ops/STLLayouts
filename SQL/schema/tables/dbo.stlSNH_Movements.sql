SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSNH_Movements]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSNH_Movements](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StockAndHoldID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[PO#] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Notes] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[DestinationID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlSNH_Movements] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSNH_Movements]') AND name = N'IX_stlSNH_Movements')
CREATE NONCLUSTERED INDEX [IX_stlSNH_Movements] ON [dbo].[stlSNH_Movements]
(
	[Deleted] ASC,
	[DestinationID] ASC,
	[StockAndHoldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSNH_Movements]') AND name = N'IX_stlSNH_Movements_1')
CREATE NONCLUSTERED INDEX [IX_stlSNH_Movements_1] ON [dbo].[stlSNH_Movements]
(
	[StockAndHoldID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_Movements_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_Movements] ADD  CONSTRAINT [DF_stlSNH_Movements_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_Movements_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_Movements] ADD  CONSTRAINT [DF_stlSNH_Movements_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSNH_Movements_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSNH_Movements] ADD  CONSTRAINT [DF_stlSNH_Movements_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_Movements_stlSNH_Destinations]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_Movements]'))
ALTER TABLE [dbo].[stlSNH_Movements]  WITH CHECK ADD  CONSTRAINT [FK_stlSNH_Movements_stlSNH_Destinations] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[stlSNH_Destinations] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_Movements_stlSNH_Destinations]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_Movements]'))
ALTER TABLE [dbo].[stlSNH_Movements] CHECK CONSTRAINT [FK_stlSNH_Movements_stlSNH_Destinations]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_Movements_stlSNH_StockAndHold]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_Movements]'))
ALTER TABLE [dbo].[stlSNH_Movements]  WITH CHECK ADD  CONSTRAINT [FK_stlSNH_Movements_stlSNH_StockAndHold] FOREIGN KEY([StockAndHoldID])
REFERENCES [dbo].[stlSNH_StockAndHold] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSNH_Movements_stlSNH_StockAndHold]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSNH_Movements]'))
ALTER TABLE [dbo].[stlSNH_Movements] CHECK CONSTRAINT [FK_stlSNH_Movements_stlSNH_StockAndHold]
