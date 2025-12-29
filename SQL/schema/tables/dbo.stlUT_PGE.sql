SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlUT_PGE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlUT_PGE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountNumber] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[ServiceAddressID] [int] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[AmountDue] [float] NOT NULL,
	[ServicePointID] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[MeterReadDate] [datetime] NOT NULL,
	[PreviousReadDate] [datetime] NOT NULL,
	[ServicePeriod] [int] NOT NULL,
	[kWh] [int] NOT NULL,
	[OnPeakUsage] [int] NULL,
	[MidPeakUsage] [int] NULL,
	[OffPeakUsage] [int] NULL,
	[Demand] [int] NULL,
	[OnPeakDemand_kW] [int] NULL,
	[OffPeakDemand_kW] [int] NULL,
	[ReactiveDemandBilled_kVAR_Billed] [int] NULL,
	[ReactiveDemandReading_kVAR_Reading] [int] NULL,
 CONSTRAINT [PK_stlUT_PGE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlUT_PGE_stlUT_ServiceAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlUT_PGE]'))
ALTER TABLE [dbo].[stlUT_PGE]  WITH CHECK ADD  CONSTRAINT [FK_stlUT_PGE_stlUT_ServiceAddress] FOREIGN KEY([ServiceAddressID])
REFERENCES [dbo].[stlUT_ServiceAddress] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlUT_PGE_stlUT_ServiceAddress]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlUT_PGE]'))
ALTER TABLE [dbo].[stlUT_PGE] CHECK CONSTRAINT [FK_stlUT_PGE_stlUT_ServiceAddress]
