SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cerm8_sync_connectors__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cerm8_sync_connectors__](
	[domain] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[connector_id] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[cerm8_url] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[auth_client_id] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[auth_client_secret] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[auth_scopes] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [cerm8_sync_connectorsi0] PRIMARY KEY CLUSTERED 
(
	[domain] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_connectors__domain]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_connectors__] ADD  CONSTRAINT [DF_cerm8_sync_connectors__domain]  DEFAULT ('') FOR [domain]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_connectors__connector_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_connectors__] ADD  CONSTRAINT [DF_cerm8_sync_connectors__connector_id]  DEFAULT ('') FOR [connector_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_connectors__cerm8_url]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_connectors__] ADD  CONSTRAINT [DF_cerm8_sync_connectors__cerm8_url]  DEFAULT ('') FOR [cerm8_url]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_connectors__auth_client_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_connectors__] ADD  CONSTRAINT [DF_cerm8_sync_connectors__auth_client_id]  DEFAULT ('') FOR [auth_client_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_connectors__auth_client_secret]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_connectors__] ADD  CONSTRAINT [DF_cerm8_sync_connectors__auth_client_secret]  DEFAULT ('') FOR [auth_client_secret]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_sync_connectors__auth_scopes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_sync_connectors__] ADD  CONSTRAINT [DF_cerm8_sync_connectors__auth_scopes]  DEFAULT ('') FOR [auth_scopes]
END

