SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cerm8_oauth2_clients__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[cerm8_oauth2_clients__](
	[client_ref] [int] NOT NULL,
	[description] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[client_id] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[client_secret] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[scopes] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [cerm8_oauth2_clientsi0] PRIMARY KEY CLUSTERED 
(
	[client_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_oauth2_clients__client_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_oauth2_clients__] ADD  CONSTRAINT [DF_cerm8_oauth2_clients__client_ref]  DEFAULT ((0)) FOR [client_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_oauth2_clients__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_oauth2_clients__] ADD  CONSTRAINT [DF_cerm8_oauth2_clients__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_oauth2_clients__client_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_oauth2_clients__] ADD  CONSTRAINT [DF_cerm8_oauth2_clients__client_id]  DEFAULT ('') FOR [client_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_oauth2_clients__client_secret]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_oauth2_clients__] ADD  CONSTRAINT [DF_cerm8_oauth2_clients__client_secret]  DEFAULT ('') FOR [client_secret]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_cerm8_oauth2_clients__scopes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[cerm8_oauth2_clients__] ADD  CONSTRAINT [DF_cerm8_oauth2_clients__scopes]  DEFAULT ('') FOR [scopes]
END

