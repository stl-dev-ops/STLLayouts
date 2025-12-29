SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[netdir__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[netdir__](
	[ndir_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[unc_path] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[username] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[password] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [netdiri0] PRIMARY KEY CLUSTERED 
(
	[ndir_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_netdir__ndir_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[netdir__] ADD  CONSTRAINT [DF_netdir__ndir_ref]  DEFAULT ('') FOR [ndir_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_netdir__unc_path]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[netdir__] ADD  CONSTRAINT [DF_netdir__unc_path]  DEFAULT ('') FOR [unc_path]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_netdir__username]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[netdir__] ADD  CONSTRAINT [DF_netdir__username]  DEFAULT ('') FOR [username]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_netdir__password]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[netdir__] ADD  CONSTRAINT [DF_netdir__password]  DEFAULT ('') FOR [password]
END

