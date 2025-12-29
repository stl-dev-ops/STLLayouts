SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlQA_HoldLog]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlQA_HoldLog](
	[stlQA_HoldLogID] [int] IDENTITY(1000,1) NOT NULL,
	[operator] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[logDt] [datetime] NOT NULL,
	[description] [nvarchar](254) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [PK_stlQA_HoldLog] PRIMARY KEY CLUSTERED 
(
	[stlQA_HoldLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_HoldLog_operator]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_HoldLog] ADD  CONSTRAINT [DF_stlQA_HoldLog_operator]  DEFAULT ('') FOR [operator]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_HoldLog_logDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_HoldLog] ADD  CONSTRAINT [DF_stlQA_HoldLog_logDt]  DEFAULT (getdate()) FOR [logDt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlQA_HoldLog_description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlQA_HoldLog] ADD  CONSTRAINT [DF_stlQA_HoldLog_description]  DEFAULT ('') FOR [description]
END

