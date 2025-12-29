SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jmfpch__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jmfpch__](
	[chan__id] [nvarchar](63) COLLATE Latin1_General_CI_AS NOT NULL,
	[contr_id] [nvarchar](63) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](63) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[url_____] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [jmfpchi0] PRIMARY KEY CLUSTERED 
(
	[chan__id] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[jmfpch__]') AND name = N'jmfpchi1')
CREATE NONCLUSTERED INDEX [jmfpchi1] ON [dbo].[jmfpch__]
(
	[contr_id] ASC,
	[type____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpch__chan__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpch__] ADD  CONSTRAINT [DF_jmfpch__chan__id]  DEFAULT ('') FOR [chan__id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpch__contr_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpch__] ADD  CONSTRAINT [DF_jmfpch__contr_id]  DEFAULT ('') FOR [contr_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpch__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpch__] ADD  CONSTRAINT [DF_jmfpch__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpch__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpch__] ADD  CONSTRAINT [DF_jmfpch__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfpch__url_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfpch__] ADD  CONSTRAINT [DF_jmfpch__url_____]  DEFAULT ('') FOR [url_____]
END

