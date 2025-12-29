SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tstjmf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tstjmf__](
	[jmf__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[fldname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstd_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[jmf_path] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [tstjmfi0] PRIMARY KEY CLUSTERED 
(
	[jmf__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tstjmf__]') AND name = N'tstjmfi1')
CREATE NONCLUSTERED INDEX [tstjmfi1] ON [dbo].[tstjmf__]
(
	[tabname_] ASC,
	[fldname_] ASC,
	[tstd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstjmf__jmf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstjmf__] ADD  CONSTRAINT [DF_tstjmf__jmf__ref]  DEFAULT ('') FOR [jmf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstjmf__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstjmf__] ADD  CONSTRAINT [DF_tstjmf__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstjmf__fldname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstjmf__] ADD  CONSTRAINT [DF_tstjmf__fldname_]  DEFAULT ('') FOR [fldname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstjmf__tstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstjmf__] ADD  CONSTRAINT [DF_tstjmf__tstd_ref]  DEFAULT ('') FOR [tstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tstjmf__jmf_path]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tstjmf__] ADD  CONSTRAINT [DF_tstjmf__jmf_path]  DEFAULT ('') FOR [jmf_path]
END

