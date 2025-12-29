SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlCJ_Product]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlCJ_Product](
	[stlCJ_ProductID] [int] IDENTITY(1,1) NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg_oms1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[productState] [int] NOT NULL,
	[endOfLife] [bit] NOT NULL,
 CONSTRAINT [PK_stlCJ_Product] PRIMARY KEY CLUSTERED 
(
	[stlCJ_ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_Product_afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_Product] ADD  CONSTRAINT [DF_stlCJ_Product_afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_Product_afg_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_Product] ADD  CONSTRAINT [DF_stlCJ_Product_afg_oms1]  DEFAULT ('') FOR [afg_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_Product_inProduction]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_Product] ADD  CONSTRAINT [DF_stlCJ_Product_inProduction]  DEFAULT ((0)) FOR [productState]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlCJ_Product_blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlCJ_Product] ADD  CONSTRAINT [DF_stlCJ_Product_blocked]  DEFAULT ((0)) FOR [endOfLife]
END

