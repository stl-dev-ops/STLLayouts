SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hislog__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hislog__](
	[usernbr_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[userwin_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[client__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[computer] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[version_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hislogi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hislog__]') AND name = N'hislogi1')
CREATE NONCLUSTERED INDEX [hislogi1] ON [dbo].[hislog__]
(
	[usernbr_] ASC,
	[datum___] ASC,
	[userwin_] ASC,
	[client__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hislog__usernbr_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hislog__] ADD  CONSTRAINT [DF_hislog__usernbr_]  DEFAULT ('') FOR [usernbr_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hislog__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hislog__] ADD  CONSTRAINT [DF_hislog__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hislog__userwin_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hislog__] ADD  CONSTRAINT [DF_hislog__userwin_]  DEFAULT ('') FOR [userwin_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hislog__client__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hislog__] ADD  CONSTRAINT [DF_hislog__client__]  DEFAULT ('') FOR [client__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hislog__computer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hislog__] ADD  CONSTRAINT [DF_hislog__computer]  DEFAULT ('') FOR [computer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hislog__version_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hislog__] ADD  CONSTRAINT [DF_hislog__version_]  DEFAULT ('') FOR [version_]
END

