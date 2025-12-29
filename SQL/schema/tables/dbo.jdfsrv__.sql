SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jdfsrv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jdfsrv__](
	[jdf__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf__loc] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[jmf_path] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [jdfsrvi0] PRIMARY KEY CLUSTERED 
(
	[srv__ref] ASC,
	[jdf__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jdfsrv__jdf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jdfsrv__] ADD  CONSTRAINT [DF_jdfsrv__jdf__ref]  DEFAULT ('') FOR [jdf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jdfsrv__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jdfsrv__] ADD  CONSTRAINT [DF_jdfsrv__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jdfsrv__jdf__loc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jdfsrv__] ADD  CONSTRAINT [DF_jdfsrv__jdf__loc]  DEFAULT ('') FOR [jdf__loc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jdfsrv__jmf_path]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jdfsrv__] ADD  CONSTRAINT [DF_jdfsrv__jmf_path]  DEFAULT ('') FOR [jmf_path]
END

