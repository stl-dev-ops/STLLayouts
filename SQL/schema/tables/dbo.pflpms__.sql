SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pflpms__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pflpms__](
	[pfl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pms__ref] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__acc] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pflpms_1] PRIMARY KEY CLUSTERED 
(
	[pfl__ref] ASC,
	[pms__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pflpms__]') AND name = N'pflpms_2')
CREATE NONCLUSTERED INDEX [pflpms_2] ON [dbo].[pflpms__]
(
	[pms__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pflpms__pfl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pflpms__] ADD  CONSTRAINT [DF_pflpms__pfl__ref]  DEFAULT ('') FOR [pfl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pflpms__pms__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pflpms__] ADD  CONSTRAINT [DF_pflpms__pms__ref]  DEFAULT ('') FOR [pms__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pflpms__typ__acc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pflpms__] ADD  CONSTRAINT [DF_pflpms__typ__acc]  DEFAULT ('') FOR [typ__acc]
END

