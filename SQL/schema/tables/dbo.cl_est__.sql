SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cl_est__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cl_est__](
	[clestref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tabname_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[job___id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[src_file] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[req_time] [datetime2](3) NOT NULL,
	[res_time] [datetime2](3) NOT NULL,
	[result__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[est_file] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[xmp_file] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [cl_esti0] PRIMARY KEY CLUSTERED 
(
	[clestref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cl_est__]') AND name = N'cl_esti1')
CREATE UNIQUE NONCLUSTERED INDEX [cl_esti1] ON [dbo].[cl_est__]
(
	[job___id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__clestref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__clestref]  DEFAULT ('') FOR [clestref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__tabname_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__tabname_]  DEFAULT ('') FOR [tabname_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__job___id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__job___id]  DEFAULT ('') FOR [job___id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__src_file]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__src_file]  DEFAULT ('') FOR [src_file]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__req_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__req_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [req_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__res_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__res_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [res_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__result__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__result__]  DEFAULT ('0') FOR [result__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__est_file]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__est_file]  DEFAULT ('') FOR [est_file]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cl_est__xmp_file]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cl_est__] ADD  CONSTRAINT [DF_cl_est__xmp_file]  DEFAULT ('') FOR [xmp_file]
END

