SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlMaterialMinMax]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlMaterialMinMax](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[min_stoc] [float] NOT NULL,
	[max_stoc] [float] NOT NULL,
	[kominfmx] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[Deleted] [tinyint] NOT NULL,
	[Updated] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlMaterialMinMax_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialMinMax_min_stoc_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialMinMax] ADD  CONSTRAINT [DF_stlMaterialMinMax_min_stoc_1]  DEFAULT ((0)) FOR [min_stoc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialMinMax_max_stoc_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialMinMax] ADD  CONSTRAINT [DF_stlMaterialMinMax_max_stoc_1]  DEFAULT ((0)) FOR [max_stoc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialMinMax_kominfmx_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialMinMax] ADD  CONSTRAINT [DF_stlMaterialMinMax_kominfmx_1]  DEFAULT ('') FOR [kominfmx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialMinMax_UpdateCERM_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialMinMax] ADD  CONSTRAINT [DF_stlMaterialMinMax_UpdateCERM_1]  DEFAULT ((0)) FOR [Deleted]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialMinMax_Created_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialMinMax] ADD  CONSTRAINT [DF_stlMaterialMinMax_Created_1]  DEFAULT (getdate()) FOR [Updated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlMaterialMinMax_CreatedBy_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlMaterialMinMax] ADD  CONSTRAINT [DF_stlMaterialMinMax_CreatedBy_1]  DEFAULT (suser_sname()) FOR [UpdatedBy]
END

