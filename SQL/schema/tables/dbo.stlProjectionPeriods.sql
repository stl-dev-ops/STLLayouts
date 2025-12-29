SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionPeriods]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionPeriods](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MonthID] [tinyint] NOT NULL,
	[YearID] [int] NOT NULL,
 CONSTRAINT [PK_stlProjectionPeriods] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionPeriods]') AND name = N'IX_stlProjectionPeriodsMonthIDYearID')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlProjectionPeriodsMonthIDYearID] ON [dbo].[stlProjectionPeriods]
(
	[YearID] ASC,
	[MonthID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlProjectionPeriodsMonthID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionPeriods]'))
ALTER TABLE [dbo].[stlProjectionPeriods]  WITH CHECK ADD  CONSTRAINT [CK_stlProjectionPeriodsMonthID] CHECK  (([MonthID]>(0) AND [MonthID]<(13)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlProjectionPeriodsMonthID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionPeriods]'))
ALTER TABLE [dbo].[stlProjectionPeriods] CHECK CONSTRAINT [CK_stlProjectionPeriodsMonthID]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlProjectionPeriodsYearID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionPeriods]'))
ALTER TABLE [dbo].[stlProjectionPeriods]  WITH CHECK ADD  CONSTRAINT [CK_stlProjectionPeriodsYearID] CHECK  (([YearID]>(2010)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[CK_stlProjectionPeriodsYearID]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionPeriods]'))
ALTER TABLE [dbo].[stlProjectionPeriods] CHECK CONSTRAINT [CK_stlProjectionPeriodsYearID]
