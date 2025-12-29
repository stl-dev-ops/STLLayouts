SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlSR_UseLogDetail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlSR_UseLogDetail](
	[stlSR_UseLogDetailID] [int] IDENTITY(1,1) NOT NULL,
	[stlSR_UseLogID] [int] NOT NULL,
	[product] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[mixturePct] [numeric](7, 4) NOT NULL,
	[tolerancePct] [numeric](7, 4) NOT NULL,
	[qtyLb] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[toleranceLb] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[verified] [bit] NOT NULL,
 CONSTRAINT [PK_stlSR_UseLogDetail] PRIMARY KEY CLUSTERED 
(
	[stlSR_UseLogDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLogDetail_product]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLogDetail] ADD  CONSTRAINT [DF_stlSR_UseLogDetail_product]  DEFAULT ('') FOR [product]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLogDetail_mixturePct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLogDetail] ADD  CONSTRAINT [DF_stlSR_UseLogDetail_mixturePct]  DEFAULT ((0)) FOR [mixturePct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLogDetail_tolerancePct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLogDetail] ADD  CONSTRAINT [DF_stlSR_UseLogDetail_tolerancePct]  DEFAULT ((0)) FOR [tolerancePct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLogDetail_qtyKg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLogDetail] ADD  CONSTRAINT [DF_stlSR_UseLogDetail_qtyKg]  DEFAULT ('') FOR [qtyLb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLogDetail_toleranceKg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLogDetail] ADD  CONSTRAINT [DF_stlSR_UseLogDetail_toleranceKg]  DEFAULT ('') FOR [toleranceLb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlSR_UseLogDetail_verified]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlSR_UseLogDetail] ADD  CONSTRAINT [DF_stlSR_UseLogDetail_verified]  DEFAULT ((0)) FOR [verified]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSR_UseLogDetail_stlSR_UseLog]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSR_UseLogDetail]'))
ALTER TABLE [dbo].[stlSR_UseLogDetail]  WITH CHECK ADD  CONSTRAINT [FK_stlSR_UseLogDetail_stlSR_UseLog] FOREIGN KEY([stlSR_UseLogID])
REFERENCES [dbo].[stlSR_UseLog] ([stlSR_UseLogID])
ON DELETE CASCADE
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlSR_UseLogDetail_stlSR_UseLog]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlSR_UseLogDetail]'))
ALTER TABLE [dbo].[stlSR_UseLogDetail] CHECK CONSTRAINT [FK_stlSR_UseLogDetail_stlSR_UseLog]
