SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_api_key__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[auth_api_key__](
	[id] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[client_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[start_time] [datetime2](3) NOT NULL,
	[expiration_time] [datetime2](3) NOT NULL,
	[status] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [auth_api_keyi0] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[auth_api_key__]') AND name = N'auth_api_keyi1')
CREATE NONCLUSTERED INDEX [auth_api_keyi1] ON [dbo].[auth_api_key__]
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_api_key__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_api_key__] ADD  CONSTRAINT [DF_auth_api_key__id]  DEFAULT ('') FOR [id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_api_key__client_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_api_key__] ADD  CONSTRAINT [DF_auth_api_key__client_id]  DEFAULT ('') FOR [client_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_api_key__start_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_api_key__] ADD  CONSTRAINT [DF_auth_api_key__start_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [start_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_api_key__expiration_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_api_key__] ADD  CONSTRAINT [DF_auth_api_key__expiration_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [expiration_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_auth_api_key__status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[auth_api_key__] ADD  CONSTRAINT [DF_auth_api_key__status]  DEFAULT ('0') FOR [status]
END

