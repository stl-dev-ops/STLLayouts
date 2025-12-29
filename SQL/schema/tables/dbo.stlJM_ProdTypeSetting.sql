SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlJM_ProdTypeSetting]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlJM_ProdTypeSetting](
	[stlJM_ProdTypeSettingID] [int] IDENTITY(1,1) NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[maxPrintSpeed] [int] NOT NULL,
 CONSTRAINT [PK_stlJM_ProdTypeSetting] PRIMARY KEY CLUSTERED 
(
	[stlJM_ProdTypeSettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_ProdTypeSetting_prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_ProdTypeSetting] ADD  CONSTRAINT [DF_stlJM_ProdTypeSetting_prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlJM_ProdTypeSetting_maxPrintSpeed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlJM_ProdTypeSetting] ADD  CONSTRAINT [DF_stlJM_ProdTypeSetting_maxPrintSpeed]  DEFAULT ((0)) FOR [maxPrintSpeed]
END

