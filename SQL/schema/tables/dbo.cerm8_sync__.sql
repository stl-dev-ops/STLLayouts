SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cerm8_sync__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cerm8_sync__](
	[domain] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[id] [int] NOT NULL,
	[import_status] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[import_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[import_timestamp] [datetime2](3) NOT NULL,
	[import_jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [cerm8_synci0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[cerm8_sync__]') AND name = N'cerm8_synci1')
CREATE NONCLUSTERED INDEX [cerm8_synci1] ON [dbo].[cerm8_sync__]
(
	[domain] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync__domain]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync__] ADD  CONSTRAINT [DF_cerm8_sync__domain]  DEFAULT ('') FOR [domain]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync__] ADD  CONSTRAINT [DF_cerm8_sync__id]  DEFAULT ((0)) FOR [id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync__import_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync__] ADD  CONSTRAINT [DF_cerm8_sync__import_status]  DEFAULT ('') FOR [import_status]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync__import_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync__] ADD  CONSTRAINT [DF_cerm8_sync__import_id]  DEFAULT ('') FOR [import_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync__import_timestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync__] ADD  CONSTRAINT [DF_cerm8_sync__import_timestamp]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [import_timestamp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync__import_jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync__] ADD  CONSTRAINT [DF_cerm8_sync__import_jobnr_vw]  DEFAULT ('') FOR [import_jobnr_vw]
END

