SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pipeline__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pipeline__](
	[pipeline_id] [int] NOT NULL,
	[description] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pipelinei0] PRIMARY KEY CLUSTERED 
(
	[pipeline_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pipeline__pipeline_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pipeline__] ADD  CONSTRAINT [DF_pipeline__pipeline_id]  DEFAULT ((0)) FOR [pipeline_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pipeline__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pipeline__] ADD  CONSTRAINT [DF_pipeline__description]  DEFAULT ('') FOR [description]
END

