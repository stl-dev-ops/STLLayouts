SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_ScratchTest]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_ScratchTest](
	[stlPC_ScratchTestID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlPC_ScratchTest] PRIMARY KEY CLUSTERED 
(
	[stlPC_ScratchTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_ScratchTest_description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_ScratchTest] ADD  CONSTRAINT [DF_stlPC_ScratchTest_description]  DEFAULT ('') FOR [description]
END

