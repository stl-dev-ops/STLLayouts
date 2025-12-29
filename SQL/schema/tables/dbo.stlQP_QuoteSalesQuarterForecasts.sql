SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteSalesQuarterForecasts]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQP_QuoteSalesQuarterForecasts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[QuoteID] [int] NOT NULL,
	[FirstDayOfQuarter] [datetime] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQP_QuoteSalesQuarterForecasts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteSalesQuarterForecasts_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteSalesQuarterForecasts] ADD  CONSTRAINT [DF_stlQP_QuoteSalesQuarterForecasts_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteSalesQuarterForecasts_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteSalesQuarterForecasts] ADD  CONSTRAINT [DF_stlQP_QuoteSalesQuarterForecasts_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQP_QuoteSalesQuarterForecasts_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQP_QuoteSalesQuarterForecasts] ADD  CONSTRAINT [DF_stlQP_QuoteSalesQuarterForecasts_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteSalesQuarterForecasts_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteSalesQuarterForecasts]'))
ALTER TABLE [dbo].[stlQP_QuoteSalesQuarterForecasts]  WITH CHECK ADD  CONSTRAINT [FK_stlQP_QuoteSalesQuarterForecasts_stlQP_Quotes] FOREIGN KEY([QuoteID])
REFERENCES [dbo].[stlQP_Quotes] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlQP_QuoteSalesQuarterForecasts_stlQP_Quotes]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlQP_QuoteSalesQuarterForecasts]'))
ALTER TABLE [dbo].[stlQP_QuoteSalesQuarterForecasts] CHECK CONSTRAINT [FK_stlQP_QuoteSalesQuarterForecasts_stlQP_Quotes]
