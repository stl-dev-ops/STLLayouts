SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPDI_CommercializationPlan](
	[CommercializationPlanID] [int] IDENTITY(1,1) NOT NULL,
	[stlPDI_ID] [int] NOT NULL,
	[ProductDescription] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Size_WxL] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Material] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[FinishingPackaging] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPDI_CommercializationPlan] PRIMARY KEY CLUSTERED 
(
	[CommercializationPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlan_ProductDescription]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlan] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlan_ProductDescription]  DEFAULT ('') FOR [ProductDescription]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlan_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlan] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlan_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlan_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlan] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlan_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlan_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlan] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlan_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPDI_CommercializationPlan_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPDI_CommercializationPlan] ADD  CONSTRAINT [DF_stlPDI_CommercializationPlan_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlan_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlan]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlan]  WITH CHECK ADD  CONSTRAINT [FK_stlPDI_CommercializationPlan_stlPDI_ProductDevelopmentOrImprovement] FOREIGN KEY([stlPDI_ID])
REFERENCES [dbo].[stlPDI_ProductDevelopmentOrImprovement] ([ID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlPDI_CommercializationPlan_stlPDI_ProductDevelopmentOrImprovement]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlPDI_CommercializationPlan]'))
ALTER TABLE [dbo].[stlPDI_CommercializationPlan] CHECK CONSTRAINT [FK_stlPDI_CommercializationPlan_stlPDI_ProductDevelopmentOrImprovement]
