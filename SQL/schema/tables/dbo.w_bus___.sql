SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_bus___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_bus___](
	[msg_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[cerm8_hook] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[data____] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_bus_i0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_bus___]') AND name = N'w_bus_i1')
CREATE NONCLUSTERED INDEX [w_bus_i1] ON [dbo].[w_bus___]
(
	[msg_type] ASC,
	[cerm8_hook] ASC,
	[det__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bus___msg_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bus___] ADD  CONSTRAINT [DF_w_bus___msg_type]  DEFAULT ('') FOR [msg_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bus___cerm8_hook]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bus___] ADD  CONSTRAINT [DF_w_bus___cerm8_hook]  DEFAULT ('') FOR [cerm8_hook]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bus___det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bus___] ADD  CONSTRAINT [DF_w_bus___det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bus___data____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bus___] ADD  CONSTRAINT [DF_w_bus___data____]  DEFAULT ('') FOR [data____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_bus___creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_bus___] ADD  CONSTRAINT [DF_w_bus___creation_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(0))) FOR [creation_time]
END

