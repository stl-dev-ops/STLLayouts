SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMRS_Packaging]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMRS_Packaging](
	[stlMRS_PackagingID] [int] IDENTITY(1,1) NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantale_] [float] NOT NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[outOfTolerance] [bit] NOT NULL,
 CONSTRAINT [PK_stlMRS_Packaging] PRIMARY KEY CLUSTERED 
(
	[stlMRS_PackagingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Packaging_off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Packaging] ADD  CONSTRAINT [DF_stlMRS_Packaging_off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Packaging_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Packaging] ADD  CONSTRAINT [DF_stlMRS_Packaging_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Packaging_aantale_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Packaging] ADD  CONSTRAINT [DF_stlMRS_Packaging_aantale_]  DEFAULT ((0)) FOR [aantale_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Packaging_art__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Packaging] ADD  CONSTRAINT [DF_stlMRS_Packaging_art__rpn]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Packaging_art_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Packaging] ADD  CONSTRAINT [DF_stlMRS_Packaging_art_oms1]  DEFAULT ('') FOR [art_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMRS_Packaging_outOfTolerance]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMRS_Packaging] ADD  CONSTRAINT [DF_stlMRS_Packaging_outOfTolerance]  DEFAULT ((0)) FOR [outOfTolerance]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlMRS_Packaging_stlMRS_Packaging]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlMRS_Packaging]'))
ALTER TABLE [dbo].[stlMRS_Packaging]  WITH CHECK ADD  CONSTRAINT [FK_stlMRS_Packaging_stlMRS_Packaging] FOREIGN KEY([stlMRS_PackagingID])
REFERENCES [dbo].[stlMRS_Packaging] ([stlMRS_PackagingID])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlMRS_Packaging_stlMRS_Packaging]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlMRS_Packaging]'))
ALTER TABLE [dbo].[stlMRS_Packaging] CHECK CONSTRAINT [FK_stlMRS_Packaging_stlMRS_Packaging]
