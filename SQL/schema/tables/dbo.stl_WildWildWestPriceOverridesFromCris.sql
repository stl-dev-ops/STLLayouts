SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stl_WildWildWestPriceOverridesFromCris]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stl_WildWildWestPriceOverridesFromCris](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[Price] [float] NOT NULL,
	[MSI_Price] [float] NOT NULL,
	[WebWidth] [float] NOT NULL,
	[Waste] [float] NOT NULL,
 CONSTRAINT [PK_stl_WildWildWestPriceOverridesFromCris] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_WildWildWestPriceOverridesFromCris_Price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_WildWildWestPriceOverridesFromCris] ADD  CONSTRAINT [DF_stl_WildWildWestPriceOverridesFromCris_Price]  DEFAULT ((0)) FOR [Price]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_WildWildWestPriceOverridesFromCris_MSI]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_WildWildWestPriceOverridesFromCris] ADD  CONSTRAINT [DF_stl_WildWildWestPriceOverridesFromCris_MSI]  DEFAULT ((0)) FOR [MSI_Price]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_WildWildWestPriceOverridesFromCris_WebWidth]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_WildWildWestPriceOverridesFromCris] ADD  CONSTRAINT [DF_stl_WildWildWestPriceOverridesFromCris_WebWidth]  DEFAULT ((0)) FOR [WebWidth]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stl_WildWildWestPriceOverridesFromCris_Waste]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_WildWildWestPriceOverridesFromCris] ADD  CONSTRAINT [DF_stl_WildWildWestPriceOverridesFromCris_Waste]  DEFAULT ((0)) FOR [Waste]
END

