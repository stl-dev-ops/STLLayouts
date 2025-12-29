SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pkg_definition__](
	[pkg_definition_id] [int] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[description] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NULL,
	[fixed_setup_time] [bigint] NULL,
	[amount_collaborators] [int] NULL,
	[taal___1] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[taal___2] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[taal___3] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[taal___4] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[taal___5] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[taal___6] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[taal___7] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[taal___8] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[taal___9] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[palet_layout] [nvarchar](2) COLLATE Latin1_General_CI_AS NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
 CONSTRAINT [pkg_definitioni0] PRIMARY KEY CLUSTERED 
(
	[pkg_definition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition__pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition__] ADD  CONSTRAINT [DF_pkg_definition__pkg_definition_id]  DEFAULT ((0)) FOR [pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition__] ADD  CONSTRAINT [DF_pkg_definition__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition__] ADD  CONSTRAINT [DF_pkg_definition__creation_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition__] ADD  CONSTRAINT [DF_pkg_definition__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition__] ADD  CONSTRAINT [DF_pkg_definition__last_edit_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [last_edit_time]
END

