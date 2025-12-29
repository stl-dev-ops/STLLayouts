SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[histst_afgsku__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[histst_afgsku__](
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
 CONSTRAINT [histst_afgskui0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[histst_afgsku__]') AND name = N'histst_afgskui1')
CREATE NONCLUSTERED INDEX [histst_afgskui1] ON [dbo].[histst_afgsku__]
(
	[tabname_] ASC,
	[det__ref] ASC,
	[fldname_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__fldname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__fldname_]  DEFAULT ('') FOR [fldname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__username]  DEFAULT ('') FOR [username]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__tstd_old]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__tstd_old]  DEFAULT ('') FOR [tstd_old]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__tstd_new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__tstd_new]  DEFAULT ('') FOR [tstd_new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__comment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__comment2]  DEFAULT ('') FOR [comment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_histst_afgsku__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[histst_afgsku__] ADD  CONSTRAINT [DF_histst_afgsku__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

