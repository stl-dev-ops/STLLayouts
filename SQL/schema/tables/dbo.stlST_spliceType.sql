SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlST_spliceType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlST_spliceType](
	[stlST_spliceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlST_spliceType] PRIMARY KEY CLUSTERED 
(
	[stlST_spliceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlST_spliceType_description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlST_spliceType] ADD  CONSTRAINT [DF_stlST_spliceType_description]  DEFAULT ('') FOR [description]
END

