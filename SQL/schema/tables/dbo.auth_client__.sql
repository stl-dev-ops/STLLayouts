SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_client__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[auth_client__](
	[id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[website] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[oauth_active] [bit] NOT NULL,
	[oauth_secret] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[oauth_redirect_uri] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[oauth_allow_without_secret] [bit] NOT NULL,
	[oauth_allow_grant_auth_code] [bit] NOT NULL,
	[oauth_grant_auth_code_use_pkce] [bit] NOT NULL,
	[oauth_allow_grant_password] [bit] NOT NULL,
	[api_key_active] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [auth_clienti0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__id]  DEFAULT ('') FOR [id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__website]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__website]  DEFAULT ('') FOR [website]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__oauth_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__oauth_active]  DEFAULT ((0)) FOR [oauth_active]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__oauth_secret]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__oauth_secret]  DEFAULT ('') FOR [oauth_secret]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__oauth_redirect_uri]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__oauth_redirect_uri]  DEFAULT ('') FOR [oauth_redirect_uri]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__oauth_allow_without_secret]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__oauth_allow_without_secret]  DEFAULT ((0)) FOR [oauth_allow_without_secret]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__oauth_allow_grant_auth_code]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__oauth_allow_grant_auth_code]  DEFAULT ((0)) FOR [oauth_allow_grant_auth_code]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__oauth_grant_auth_code_use_pkce]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__oauth_grant_auth_code_use_pkce]  DEFAULT ((0)) FOR [oauth_grant_auth_code_use_pkce]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__oauth_allow_grant_password]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__oauth_allow_grant_password]  DEFAULT ((0)) FOR [oauth_allow_grant_password]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_client__api_key_active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_client__] ADD  CONSTRAINT [DF_auth_client__api_key_active]  DEFAULT ((0)) FOR [api_key_active]
END

