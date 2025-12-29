SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pkg_param_material__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pkg_param_material__](
	[pkg_layer_id] [int] NOT NULL,
	[pkg_definition_id] [int] NOT NULL,
	[pkg_material_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[quantity] [float] NOT NULL,
	[additional_duration] [bigint] NOT NULL,
	[core_width] [float] NOT NULL,
	[core_thickness] [float] NOT NULL,
	[core_diameter] [float] NOT NULL,
	[core_indentation] [float] NOT NULL,
	[core_price] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[comment] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [pkg_param_materiali0] PRIMARY KEY CLUSTERED 
(
	[pkg_definition_id] ASC,
	[pkg_layer_id] ASC,
	[pkg_material_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__pkg_layer_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__pkg_layer_id]  DEFAULT ((0)) FOR [pkg_layer_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__pkg_definition_id]  DEFAULT ((0)) FOR [pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__pkg_material_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__pkg_material_id]  DEFAULT ((0)) FOR [pkg_material_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__artc_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__artc_ref]  DEFAULT ('') FOR [artc_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__quantity]  DEFAULT ((0)) FOR [quantity]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__additional_duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__additional_duration]  DEFAULT ((0)) FOR [additional_duration]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__core_width]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__core_width]  DEFAULT ((0)) FOR [core_width]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__core_thickness]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__core_thickness]  DEFAULT ((0)) FOR [core_thickness]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__core_diameter]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__core_diameter]  DEFAULT ((0)) FOR [core_diameter]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__core_indentation]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__core_indentation]  DEFAULT ((0)) FOR [core_indentation]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__core_price]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__core_price]  DEFAULT ((0)) FOR [core_price]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_material__comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_material__] ADD  CONSTRAINT [DF_pkg_param_material__comment]  DEFAULT ('') FOR [comment]
END

