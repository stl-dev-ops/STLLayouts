SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPP_PackingMaterialType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPP_PackingMaterialType](
	[stlPP_PackingMaterialTypeID] [int] IDENTITY(1,1) NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[packingMaterialType] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPP_PackingMaterinalType] PRIMARY KEY CLUSTERED 
(
	[stlPP_PackingMaterialTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingMaterinalType_art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingMaterialType] ADD  CONSTRAINT [DF_stlPP_PackingMaterinalType_art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPP_PackingMaterinalType_packingMaterialType]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPP_PackingMaterialType] ADD  CONSTRAINT [DF_stlPP_PackingMaterinalType_packingMaterialType]  DEFAULT ('') FOR [packingMaterialType]
END

