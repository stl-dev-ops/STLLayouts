SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlPC_AniloxRevision]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlPC_AniloxRevision](
	[stlPC_AniloxRevisionID] [int] IDENTITY(1,1) NOT NULL,
	[revisionNo] [int] NOT NULL,
	[revisionDt] [datetime] NOT NULL,
 CONSTRAINT [PK_stlPC_AniloxRevision] PRIMARY KEY CLUSTERED 
(
	[stlPC_AniloxRevisionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AniloxRevision_revisionNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AniloxRevision] ADD  CONSTRAINT [DF_stlPC_AniloxRevision_revisionNo]  DEFAULT ((0)) FOR [revisionNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlPC_AniloxRevision_revisionDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlPC_AniloxRevision] ADD  CONSTRAINT [DF_stlPC_AniloxRevision_revisionDt]  DEFAULT (getdate()) FOR [revisionDt]
END

