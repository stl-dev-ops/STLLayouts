SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjections]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjections](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[PeriodID] [int] NOT NULL,
	[TypeID] [tinyint] NOT NULL,
	[ProjectedLabelQuantity] [int] NOT NULL,
	[ProjectedLabelValue] [decimal](19, 2) NOT NULL,
	[HistoricalLabelQuantity] [int] NOT NULL,
	[HistoricalLabelValue] [decimal](19, 2) NOT NULL,
 CONSTRAINT [PK_stlProjections] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlProjections]') AND name = N'IX_stlProjectionsGroupPeriodType')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlProjectionsGroupPeriodType] ON [dbo].[stlProjections]
(
	[GroupID] ASC,
	[PeriodID] ASC,
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjections_stlProjectionGroups]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjections]'))
ALTER TABLE [dbo].[stlProjections]  WITH CHECK ADD  CONSTRAINT [FK_stlProjections_stlProjectionGroups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[stlProjectionGroups] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjections_stlProjectionGroups]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjections]'))
ALTER TABLE [dbo].[stlProjections] CHECK CONSTRAINT [FK_stlProjections_stlProjectionGroups]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjections_stlProjectionPeriods]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjections]'))
ALTER TABLE [dbo].[stlProjections]  WITH CHECK ADD  CONSTRAINT [FK_stlProjections_stlProjectionPeriods] FOREIGN KEY([PeriodID])
REFERENCES [dbo].[stlProjectionPeriods] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjections_stlProjectionPeriods]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjections]'))
ALTER TABLE [dbo].[stlProjections] CHECK CONSTRAINT [FK_stlProjections_stlProjectionPeriods]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjections_stlProjectionsTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjections]'))
ALTER TABLE [dbo].[stlProjections]  WITH CHECK ADD  CONSTRAINT [FK_stlProjections_stlProjectionsTypes] FOREIGN KEY([TypeID])
REFERENCES [dbo].[stlProjectionTypes] ([ID])
ON UPDATE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjections_stlProjectionsTypes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjections]'))
ALTER TABLE [dbo].[stlProjections] CHECK CONSTRAINT [FK_stlProjections_stlProjectionsTypes]
