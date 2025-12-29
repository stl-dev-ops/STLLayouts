SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_Materials]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMRS_Materials](
	[stlMRS_MaterialsID] [int] IDENTITY(1,1) NOT NULL,
	[dg___vnr] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[FaceOrLiner] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[Footage] [float] NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pass] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMRS_Materials] PRIMARY KEY CLUSTERED 
(
	[stlMRS_MaterialsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Materials_dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Materials] ADD  CONSTRAINT [DF_stlMRS_Materials_dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Materials_FaceOrLiner]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Materials] ADD  CONSTRAINT [DF_stlMRS_Materials_FaceOrLiner]  DEFAULT ((0)) FOR [FaceOrLiner]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Materials_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Materials] ADD  CONSTRAINT [DF_stlMRS_Materials_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Materials_art__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Materials] ADD  CONSTRAINT [DF_stlMRS_Materials_art__rpn]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Materials_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Materials] ADD  CONSTRAINT [DF_stlMRS_Materials_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Materials_Footage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Materials] ADD  CONSTRAINT [DF_stlMRS_Materials_Footage]  DEFAULT ((0)) FOR [Footage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Materials_off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Materials] ADD  CONSTRAINT [DF_stlMRS_Materials_off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Materials_pass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Materials] ADD  CONSTRAINT [DF_stlMRS_Materials_pass]  DEFAULT ('') FOR [pass]
END

