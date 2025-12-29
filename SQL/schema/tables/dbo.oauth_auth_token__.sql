SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_auth_token__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[oauth_auth_token__](
	[id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[session_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[client_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[user_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[status] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[redirect_uri] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[state] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[code_challenge] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[code_challenge_method] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [oauth_auth_tokeni0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[oauth_auth_token__]') AND name = N'oauth_auth_tokeni1')
CREATE UNIQUE NONCLUSTERED INDEX [oauth_auth_tokeni1] ON [dbo].[oauth_auth_token__]
(
	[session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_auth_token__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_auth_token__] ADD  CONSTRAINT [DF_oauth_auth_token__id]  DEFAULT ('') FOR [id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_auth_token__session_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_auth_token__] ADD  CONSTRAINT [DF_oauth_auth_token__session_id]  DEFAULT ('') FOR [session_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_auth_token__client_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_auth_token__] ADD  CONSTRAINT [DF_oauth_auth_token__client_id]  DEFAULT ('') FOR [client_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_auth_token__user_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_auth_token__] ADD  CONSTRAINT [DF_oauth_auth_token__user_id]  DEFAULT ('') FOR [user_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_auth_token__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_auth_token__] ADD  CONSTRAINT [DF_oauth_auth_token__creation_time]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_auth_token__status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_auth_token__] ADD  CONSTRAINT [DF_oauth_auth_token__status]  DEFAULT ('') FOR [status]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_auth_token__redirect_uri]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_auth_token__] ADD  CONSTRAINT [DF_oauth_auth_token__redirect_uri]  DEFAULT ('') FOR [redirect_uri]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_oauth_auth_token__state]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[oauth_auth_token__] ADD  CONSTRAINT [DF_oauth_auth_token__state]  DEFAULT ('') FOR [state]
END

