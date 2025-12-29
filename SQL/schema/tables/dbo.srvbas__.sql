SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[srvbas__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[srvbas__](
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[server__] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[port____] [int] NOT NULL,
	[username] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[password] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[parstr01] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[parstr02] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[parstr03] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[parstr04] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[parstr05] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[user___2] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[pass___2] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[certific] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[priv_key] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[certpass] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[params01] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[params02] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[params03] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[params04] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[params05] [nvarchar](1024) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [srvbasi0] PRIMARY KEY CLUSTERED 
(
	[srv__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__server__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__server__]  DEFAULT ('') FOR [server__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__port____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__port____]  DEFAULT ((0)) FOR [port____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__username]  DEFAULT ('') FOR [username]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__password]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__password]  DEFAULT ('') FOR [password]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__parstr01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__parstr01]  DEFAULT ('') FOR [parstr01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__parstr02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__parstr02]  DEFAULT ('') FOR [parstr02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__parstr03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__parstr03]  DEFAULT ('') FOR [parstr03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__parstr04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__parstr04]  DEFAULT ('') FOR [parstr04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__parstr05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__parstr05]  DEFAULT ('') FOR [parstr05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__user___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__user___2]  DEFAULT ('') FOR [user___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__pass___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__pass___2]  DEFAULT ('') FOR [pass___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__certific]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__certific]  DEFAULT ('') FOR [certific]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__priv_key]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__priv_key]  DEFAULT ('') FOR [priv_key]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__certpass]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__certpass]  DEFAULT ('') FOR [certpass]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__params01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__params01]  DEFAULT ('') FOR [params01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__params02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__params02]  DEFAULT ('') FOR [params02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__params03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__params03]  DEFAULT ('') FOR [params03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__params04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__params04]  DEFAULT ('') FOR [params04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_srvbas__params05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[srvbas__] ADD  CONSTRAINT [DF_srvbas__params05]  DEFAULT ('') FOR [params05]
END

