SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByMonthIncreasePercents]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlProjectionsByCustomerByMonthIncreasePercents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[YearID] [int] NOT NULL,
	[MonthID] [int] NOT NULL,
	[IncreaseReason] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[IncreasePercent] [float] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlProjectionsByCustomerByMonthIncreasePercents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByMonthIncreasePercents]') AND name = N'IX_stlProjectionsByCustomerByMonthIncreasePercents')
CREATE NONCLUSTERED INDEX [IX_stlProjectionsByCustomerByMonthIncreasePercents] ON [dbo].[stlProjectionsByCustomerByMonthIncreasePercents]
(
	[Deleted] ASC,
	[YearID] ASC,
	[MonthID] ASC,
	[kla__ref] ASC
)
INCLUDE([IncreaseReason],[IncreasePercent],[Created],[CreatedBy]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByMonthIncreasePercents_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByMonthIncreasePercents] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByMonthIncreasePercents_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByMonthIncreasePercents_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByMonthIncreasePercents] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByMonthIncreasePercents_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlProjectionsByCustomerByMonthIncreasePercents_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlProjectionsByCustomerByMonthIncreasePercents] ADD  CONSTRAINT [DF_stlProjectionsByCustomerByMonthIncreasePercents_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsByCustomerByMonthIncreasePercents_stlProjectionsByCustomerByMonthIncreasePercents]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByMonthIncreasePercents]'))
ALTER TABLE [dbo].[stlProjectionsByCustomerByMonthIncreasePercents]  WITH CHECK ADD  CONSTRAINT [FK_stlProjectionsByCustomerByMonthIncreasePercents_stlProjectionsByCustomerByMonthIncreasePercents] FOREIGN KEY([ID])
REFERENCES [dbo].[stlProjectionsByCustomerByMonthIncreasePercents] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlProjectionsByCustomerByMonthIncreasePercents_stlProjectionsByCustomerByMonthIncreasePercents]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlProjectionsByCustomerByMonthIncreasePercents]'))
ALTER TABLE [dbo].[stlProjectionsByCustomerByMonthIncreasePercents] CHECK CONSTRAINT [FK_stlProjectionsByCustomerByMonthIncreasePercents_stlProjectionsByCustomerByMonthIncreasePercents]
