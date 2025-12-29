SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cerm8_sync_next__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cerm8_sync_next__](
	[domain] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[subject] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[value] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[submit_time] [datetime2](3) NOT NULL,
	[last_result] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [cerm8_sync_nexti0] PRIMARY KEY CLUSTERED 
(
	[domain] ASC,
	[subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_next__domain]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_next__] ADD  CONSTRAINT [DF_cerm8_sync_next__domain]  DEFAULT ('') FOR [domain]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_next__subject]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_next__] ADD  CONSTRAINT [DF_cerm8_sync_next__subject]  DEFAULT ('') FOR [subject]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_next__value]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_next__] ADD  CONSTRAINT [DF_cerm8_sync_next__value]  DEFAULT ('') FOR [value]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_next__submit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_next__] ADD  CONSTRAINT [DF_cerm8_sync_next__submit_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [submit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_next__last_result]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_next__] ADD  CONSTRAINT [DF_cerm8_sync_next__last_result]  DEFAULT ('') FOR [last_result]
END

