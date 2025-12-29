SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlDF_DescriptionCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlDF_DescriptionCategory](
	[stlDF_DescriptionCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[descriptionCategory] [nvarchar](20) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [PK_stlDF_DefectCategory] PRIMARY KEY CLUSTERED 
(
	[stlDF_DescriptionCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
