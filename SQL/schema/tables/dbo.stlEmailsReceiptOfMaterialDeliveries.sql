SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmailsReceiptOfMaterialDeliveries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[QAMonitor] [bit] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlEmailsReceiptOfMaterialDeliveries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfMaterialDeliveries_lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfMaterialDeliveries_lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfMaterialDeliveries_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfMaterialDeliveries_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfMaterialDeliveries_QAMonitor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfMaterialDeliveries_QAMonitor]  DEFAULT ((0)) FOR [QAMonitor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfMaterialDeliveries_StartDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfMaterialDeliveries_StartDate]  DEFAULT (getdate()) FOR [StartDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfMaterialDeliveries_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfMaterialDeliveries_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfMaterialDeliveries_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfMaterialDeliveries_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfMaterialDeliveries_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfMaterialDeliveries_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfMaterialDeliveries_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfMaterialDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfMaterialDeliveries_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

