SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlManufacturerSkuDates]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlManufacturerSkuDates](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ManufacturerDate] [datetime] NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlManufacturerSkuDates] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlManufacturerSkuDates_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlManufacturerSkuDates] ADD  CONSTRAINT [DF_stlManufacturerSkuDates_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlManufacturerSkuDates_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlManufacturerSkuDates] ADD  CONSTRAINT [DF_stlManufacturerSkuDates_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlManufacturerSkuDates_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlManufacturerSkuDates] ADD  CONSTRAINT [DF_stlManufacturerSkuDates_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlManufacturerSkuDates_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlManufacturerSkuDates] ADD  CONSTRAINT [DF_stlManufacturerSkuDates_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlManufacturerSkuDates_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlManufacturerSkuDates] ADD  CONSTRAINT [DF_stlManufacturerSkuDates_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

