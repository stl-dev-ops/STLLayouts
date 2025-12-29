SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_access_token__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[oauth_access_token__](
	[id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[auth_token_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[client_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[user_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[expiration_time] [datetime2](3) NOT NULL,
	[status] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [oauth_access_tokeni0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[oauth_access_token__]') AND name = N'oauth_access_tokeni1')
CREATE NONCLUSTERED INDEX [oauth_access_tokeni1] ON [dbo].[oauth_access_token__]
(
	[auth_token_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_access_token__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_access_token__] ADD  CONSTRAINT [DF_oauth_access_token__id]  DEFAULT ('') FOR [id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_access_token__auth_token_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_access_token__] ADD  CONSTRAINT [DF_oauth_access_token__auth_token_id]  DEFAULT ('') FOR [auth_token_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_access_token__client_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_access_token__] ADD  CONSTRAINT [DF_oauth_access_token__client_id]  DEFAULT ('') FOR [client_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_access_token__user_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_access_token__] ADD  CONSTRAINT [DF_oauth_access_token__user_id]  DEFAULT ('') FOR [user_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_access_token__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_access_token__] ADD  CONSTRAINT [DF_oauth_access_token__creation_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_access_token__expiration_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_access_token__] ADD  CONSTRAINT [DF_oauth_access_token__expiration_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [expiration_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_access_token__status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_access_token__] ADD  CONSTRAINT [DF_oauth_access_token__status]  DEFAULT ('') FOR [status]
END

