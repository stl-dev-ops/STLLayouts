SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSalesRepresentativeTargets]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSalesRepresentativeTargets](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[YearID] [int] NOT NULL,
	[MonthID] [int] NOT NULL,
	[SalesTarget] [money] NULL,
 CONSTRAINT [PK_stlSalesRepresentativeTargets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlSalesRepresentativeTargets]') AND name = N'IX_stlSalesRepresentativeTargets')
CREATE UNIQUE NONCLUSTERED INDEX [IX_stlSalesRepresentativeTargets] ON [dbo].[stlSalesRepresentativeTargets]
(
	[vrt__ref] ASC,
	[MonthID] ASC,
	[YearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SalesRepresentativeTargets_MonthID_Constraint]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSalesRepresentativeTargets]'))
ALTER TABLE [dbo].[stlSalesRepresentativeTargets]  WITH CHECK ADD  CONSTRAINT [SalesRepresentativeTargets_MonthID_Constraint] CHECK  (([MonthID]>=(1) AND [MonthID]<=(12)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SalesRepresentativeTargets_MonthID_Constraint]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSalesRepresentativeTargets]'))
ALTER TABLE [dbo].[stlSalesRepresentativeTargets] CHECK CONSTRAINT [SalesRepresentativeTargets_MonthID_Constraint]
IF NOT EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SalesRepresentativeTargets_YearID_Constraint]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSalesRepresentativeTargets]'))
ALTER TABLE [dbo].[stlSalesRepresentativeTargets]  WITH CHECK ADD  CONSTRAINT [SalesRepresentativeTargets_YearID_Constraint] CHECK  (([YearID]>=(2010) AND [YearID]<=(2050)))
IF  EXISTS (SELECT * FROM sys.check_constraints WHERE object_id = OBJECT_ID(N'[dbo].[SalesRepresentativeTargets_YearID_Constraint]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSalesRepresentativeTargets]'))
ALTER TABLE [dbo].[stlSalesRepresentativeTargets] CHECK CONSTRAINT [SalesRepresentativeTargets_YearID_Constraint]
