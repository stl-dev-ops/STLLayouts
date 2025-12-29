SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMaterialsFaceSheetAdhesiveLinerIDs]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMaterialsFaceSheetAdhesiveLinerIDs](
	[art__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[FaceSheetID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[AdhesiveID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[LinerID] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMaterialsFaceSheetAdhesiveLinerIDs] PRIMARY KEY CLUSTERED 
(
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialsFaceSheetAdhesiveLinerIDs_FaceSheetID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialsFaceSheetAdhesiveLinerIDs] ADD  CONSTRAINT [DF_stlMaterialsFaceSheetAdhesiveLinerIDs_FaceSheetID]  DEFAULT ('') FOR [FaceSheetID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialsFaceSheetAdhesiveLinerIDs_AdhesiveID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialsFaceSheetAdhesiveLinerIDs] ADD  CONSTRAINT [DF_stlMaterialsFaceSheetAdhesiveLinerIDs_AdhesiveID]  DEFAULT ('') FOR [AdhesiveID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialsFaceSheetAdhesiveLinerIDs_LinerID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialsFaceSheetAdhesiveLinerIDs] ADD  CONSTRAINT [DF_stlMaterialsFaceSheetAdhesiveLinerIDs_LinerID]  DEFAULT ('') FOR [LinerID]
END

