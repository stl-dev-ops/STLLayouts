SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionCustomerPercents]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlBP_BrandProjectionCustomerPercents](
	[BrandProjectionCustomerPercentsID] [int] IDENTITY(1,1) NOT NULL,
	[BrandProjectionProductID] [int] NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Percent] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Deleted] [tinyint] NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlBP_BrandProjectionCustomerPercents] PRIMARY KEY CLUSTERED 
(
	[BrandProjectionCustomerPercentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionCustomerPercents_kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] ADD  CONSTRAINT [DF_stlBP_BrandProjectionCustomerPercents_kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionCustomerPercents_Percent]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] ADD  CONSTRAINT [DF_stlBP_BrandProjectionCustomerPercents_Percent]  DEFAULT ((0)) FOR [Percent]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionCustomerPercents_StartDate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] ADD  CONSTRAINT [DF_stlBP_BrandProjectionCustomerPercents_StartDate]  DEFAULT (getdate()) FOR [StartDate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionCustomerPercents_Deleted]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] ADD  CONSTRAINT [DF_stlBP_BrandProjectionCustomerPercents_Deleted]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionCustomerPercents_Created]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] ADD  CONSTRAINT [DF_stlBP_BrandProjectionCustomerPercents_Created]  DEFAULT (getdate()) FOR [Created]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionCustomerPercents_CreatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] ADD  CONSTRAINT [DF_stlBP_BrandProjectionCustomerPercents_CreatedBy]  DEFAULT (suser_sname()) FOR [CreatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionCustomerPercents_Updated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] ADD  CONSTRAINT [DF_stlBP_BrandProjectionCustomerPercents_Updated]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlBP_BrandProjectionCustomerPercents_UpdatedBy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] ADD  CONSTRAINT [DF_stlBP_BrandProjectionCustomerPercents_UpdatedBy]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlBP_BrandProjectionCustomerPercents_stlBP_BrandProjectionProductsPrices]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionCustomerPercents]'))
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents]  WITH CHECK ADD  CONSTRAINT [FK_stlBP_BrandProjectionCustomerPercents_stlBP_BrandProjectionProductsPrices] FOREIGN KEY([BrandProjectionProductID])
REFERENCES [dbo].[stlBP_BrandProjectionProductsPrices] ([BrandProjectionProductID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlBP_BrandProjectionCustomerPercents_stlBP_BrandProjectionProductsPrices]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlBP_BrandProjectionCustomerPercents]'))
ALTER TABLE [dbo].[stlBP_BrandProjectionCustomerPercents] CHECK CONSTRAINT [FK_stlBP_BrandProjectionCustomerPercents_stlBP_BrandProjectionProductsPrices]
