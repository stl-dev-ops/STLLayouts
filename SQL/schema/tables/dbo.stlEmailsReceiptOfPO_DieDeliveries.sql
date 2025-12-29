SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlEmailsReceiptOfPO_DieDeliveries]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlEmailsReceiptOfPO_DieDeliveries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlEmailsReceiptOfPO_DieDeliveries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfPO_DieDeliveries_lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfPO_DieDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfPO_DieDeliveries_lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfPO_DieDeliveries_arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfPO_DieDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfPO_DieDeliveries_arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfPO_DieDeliveries_StartDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfPO_DieDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfPO_DieDeliveries_StartDate]  DEFAULT (getdate()) FOR [StartDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfPO_DieDeliveries_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfPO_DieDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfPO_DieDeliveries_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfPO_DieDeliveries_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfPO_DieDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfPO_DieDeliveries_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfPO_DieDeliveries_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfPO_DieDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfPO_DieDeliveries_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlEmailsReceiptOfPO_DieDeliveries_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlEmailsReceiptOfPO_DieDeliveries] ADD  CONSTRAINT [DF_stlEmailsReceiptOfPO_DieDeliveries_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

