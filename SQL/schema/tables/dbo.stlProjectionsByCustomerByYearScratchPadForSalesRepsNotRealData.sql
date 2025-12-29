SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectionsByCustomerByYearID] [int] NOT NULL,
	[ProjectionMonth] [int] NOT NULL,
	[ForecastValueDataEntryFromSalesRep] [int] NOT NULL,
	[ActualValueDataEntryFromSalesRep] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsByCustomerByYearDataEntryFromSalesRepsNotRealData] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearDataEntryFromSalesRepsNotRealData_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearDataEntryFromSalesRepsNotRealData_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByYearDataEntryFromSalesRepsNotRealData_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByYearDataEntryFromSalesRepsNotRealData_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData_stlProjectionsByCustomerByYear]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData]'))
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData_stlProjectionsByCustomerByYear] FOREIGN KEY([ProjectionsByCustomerByYearID])
REFERENCES [dbo].[stlProjectionsByCustomerByYear] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData_stlProjectionsByCustomerByYear]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData]'))
ALTER TABLE [dbo].[stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData] CHECK CONSTRAINT [FK_stlProjectionsByCustomerByYearScratchPadForSalesRepsNotRealData_stlProjectionsByCustomerByYear]
