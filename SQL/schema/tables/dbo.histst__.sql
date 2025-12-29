SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[histst__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[histst__](
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[fldname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[username] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstd_old] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstd_new] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment2] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_archive] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [histsti0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[histst__]') AND name = N'histsti1')
CREATE NONCLUSTERED INDEX [histsti1] ON [dbo].[histst__]
(
	[tabname_] ASC,
	[det__ref] ASC,
	[fldname_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__fldname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__fldname_]  DEFAULT ('') FOR [fldname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__username]  DEFAULT ('') FOR [username]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__tstd_old]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__tstd_old]  DEFAULT ('') FOR [tstd_old]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__tstd_new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__tstd_new]  DEFAULT ('') FOR [tstd_new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__comment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__comment2]  DEFAULT ('') FOR [comment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst__] ADD  CONSTRAINT [DF_histst__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

