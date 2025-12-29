SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[devcnt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[devcnt__](
	[cnt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[deviceid] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[count_id] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[stvokref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [devcnti0] PRIMARY KEY CLUSTERED 
(
	[cnt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[devcnt__]') AND name = N'devcnti1')
CREATE NONCLUSTERED INDEX [devcnti1] ON [dbo].[devcnt__]
(
	[deviceid] ASC,
	[count_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_devcnt__cnt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[devcnt__] ADD  CONSTRAINT [DF_devcnt__cnt__ref]  DEFAULT ('') FOR [cnt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_devcnt__deviceid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[devcnt__] ADD  CONSTRAINT [DF_devcnt__deviceid]  DEFAULT ('') FOR [deviceid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_devcnt__count_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[devcnt__] ADD  CONSTRAINT [DF_devcnt__count_id]  DEFAULT ('') FOR [count_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_devcnt__stvokref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[devcnt__] ADD  CONSTRAINT [DF_devcnt__stvokref]  DEFAULT ('') FOR [stvokref]
END

