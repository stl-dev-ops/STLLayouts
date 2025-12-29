SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPP_PackingUnit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPP_PackingUnit](
	[stlPP_PackingUnitID] [int] IDENTITY(1,1) NOT NULL,
	[packingUnit] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPP_PackingUnit] PRIMARY KEY CLUSTERED 
(
	[stlPP_PackingUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingUnit_packingUnit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingUnit] ADD  CONSTRAINT [DF_stlPP_PackingUnit_packingUnit]  DEFAULT ('') FOR [packingUnit]
END

