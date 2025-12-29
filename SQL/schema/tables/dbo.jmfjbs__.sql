SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jmfjbs__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jmfjbs__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[time____] [datetime2](3) NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
 CONSTRAINT [jmfjbsi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[jmfjbs__]') AND name = N'jmfjbsi1')
CREATE UNIQUE NONCLUSTERED INDEX [jmfjbsi1] ON [dbo].[jmfjbs__]
(
	[ord__ref] ASC,
	[kpn__ref] ASC,
	[plpl_ref] ASC,
	[det__ref] ASC,
	[production_flow_id] ASC,
	[workstep_id] ASC,
	[run_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjbs__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjbs__] ADD  CONSTRAINT [DF_jmfjbs__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjbs__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjbs__] ADD  CONSTRAINT [DF_jmfjbs__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjbs__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjbs__] ADD  CONSTRAINT [DF_jmfjbs__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjbs__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjbs__] ADD  CONSTRAINT [DF_jmfjbs__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjbs__time____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjbs__] ADD  CONSTRAINT [DF_jmfjbs__time____]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [time____]
END

