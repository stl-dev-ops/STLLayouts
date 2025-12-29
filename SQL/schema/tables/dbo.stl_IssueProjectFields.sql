SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stl_IssueProjectFields]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stl_IssueProjectFields](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Repository] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[IssueNumber] [int] NOT NULL,
	[ProjectTitle] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[ProjectNumber] [int] NOT NULL,
	[FieldName] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[Value] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[DataType] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ExtractedAt] [datetime2](7) NOT NULL,
	[ETL_BatchId] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stl_IssueProjectFields]') AND name = N'IX_stl_IssueProjectFields_Key')
CREATE NONCLUSTERED INDEX [IX_stl_IssueProjectFields_Key] ON [dbo].[stl_IssueProjectFields]
(
	[Repository] ASC,
	[IssueNumber] ASC,
	[ProjectTitle] ASC,
	[FieldName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__stl_Issue__Extra__7B4C04DD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stl_IssueProjectFields] ADD  DEFAULT (getutcdate()) FOR [ExtractedAt]
END

