SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_AbrasionTest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_AbrasionTest](
	[stlPC_AbrasionTestID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPC_AbrasionTest] PRIMARY KEY CLUSTERED 
(
	[stlPC_AbrasionTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AbrasionTest_description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AbrasionTest] ADD  CONSTRAINT [DF_stlPC_AbrasionTest_description]  DEFAULT ('') FOR [description]
END

