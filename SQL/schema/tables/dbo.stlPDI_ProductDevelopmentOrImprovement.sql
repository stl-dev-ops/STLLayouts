SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovement]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectID] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[DevelopmentTypeID] [tinyint] NULL,
	[DriverID] [tinyint] NULL,
	[Description] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[FutureCustomers] [nvarchar](1000) COLLATE Latin1_General_CI_AS NOT NULL,
	[ProjectStatusID] [int] NOT NULL,
	[ReadyForMarketingID] [int] NOT NULL,
	[ManagerID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_ProductDevelopmentOrImprovement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovement]') AND name = N'IX_stlPDI_ProductDevelopmentOrImprovement')
CREATE NONCLUSTERED INDEX [IX_stlPDI_ProductDevelopmentOrImprovement] ON [dbo].[stlPDI_ProductDevelopmentOrImprovement]
(
	[ID] ASC,
	[Deleted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_ProjectID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_ProjectID]  DEFAULT ('') FOR [ProjectID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_NewProduct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_NewProduct]  DEFAULT ((0)) FOR [DevelopmentTypeID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_CustomerDriven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_CustomerDriven]  DEFAULT ((0)) FOR [DriverID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_FutureCustomers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_FutureCustomers]  DEFAULT ('') FOR [FutureCustomers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_ProjectStatusID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_ProjectStatusID]  DEFAULT ((1)) FOR [ProjectStatusID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_ReadyForMarketingStatusID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_ReadyForMarketingStatusID]  DEFAULT ((0)) FOR [ReadyForMarketingID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_ManagerID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_ManagerID]  DEFAULT ('') FOR [ManagerID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_ProductDevelopmentOrImprovement_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] ADD  CONSTRAINT [DF_stlPDI_ProductDevelopmentOrImprovement_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_DevelopmentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovement]'))
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_DevelopmentType] FOREIGN KEY([DevelopmentTypeID])
REFERENCES [dbo].[stlPDI_DevelopmentType] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_DevelopmentType]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovement]'))
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] CHECK CONSTRAINT [FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_DevelopmentType]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_Drivers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovement]'))
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_Drivers] FOREIGN KEY([DriverID])
REFERENCES [dbo].[stlPDI_Drivers] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_Drivers]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovement]'))
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] CHECK CONSTRAINT [FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_Drivers]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_ProjectStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovement]'))
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_ProjectStatus] FOREIGN KEY([ProjectStatusID])
REFERENCES [dbo].[stlPDI_ProjectStatus] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_ProjectStatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_ProductDevelopmentOrImprovement]'))
ALTER TABLE [dbo].[stlPDI_ProductDevelopmentOrImprovement] CHECK CONSTRAINT [FK_stlPDI_ProductDevelopmentOrImprovement_stlPDI_ProjectStatus]
