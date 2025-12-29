SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlDF_Description]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlDF_Description](
	[stlDF_Description] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[descriptionCategory] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlDF_Description] PRIMARY KEY CLUSTERED 
(
	[stlDF_Description] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlDF_Description_descriptionCategory]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlDF_Description] ADD  CONSTRAINT [DF_stlDF_Description_descriptionCategory]  DEFAULT ('') FOR [descriptionCategory]
END

