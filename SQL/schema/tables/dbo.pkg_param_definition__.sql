SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pkg_param_definition__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pkg_param_definition__](
	[pkg_definition_id] [int] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[palet_layout] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fixed_setup_time] [bigint] NOT NULL,
	[amount_collaborators] [int] NOT NULL,
	[blocked] [bit] NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
	[taal___1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment] [varchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fixed_rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[variable_rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[setup_kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[setup_helper_kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_helper_kstd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pkg_param_definitioni0] PRIMARY KEY CLUSTERED 
(
	[pkg_definition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__pkg_definition_id]  DEFAULT ((0)) FOR [pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__palet_layout]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__palet_layout]  DEFAULT ('') FOR [palet_layout]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__fixed_setup_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__fixed_setup_time]  DEFAULT ((0)) FOR [fixed_setup_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__amount_collaborators]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__amount_collaborators]  DEFAULT ((0)) FOR [amount_collaborators]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__blocked]  DEFAULT ((0)) FOR [blocked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__creation_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__last_edit_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__taal___9]  DEFAULT ('') FOR [taal___9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__comment]  DEFAULT ('') FOR [comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__fixed_rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__fixed_rbk__ref]  DEFAULT ('') FOR [fixed_rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__variable_rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__variable_rbk__ref]  DEFAULT ('') FOR [variable_rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__setup_kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__setup_kstd_ref]  DEFAULT ('') FOR [setup_kstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__production_kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__production_kstd_ref]  DEFAULT ('') FOR [production_kstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__setup_helper_kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__setup_helper_kstd_ref]  DEFAULT ('') FOR [setup_helper_kstd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_definition__production_helper_kstd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_definition__] ADD  CONSTRAINT [DF_pkg_param_definition__production_helper_kstd_ref]  DEFAULT ('') FOR [production_helper_kstd_ref]
END

