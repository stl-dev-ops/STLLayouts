SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pkg_material__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pkg_material__](
	[pkg_definition_id] [int] NOT NULL,
	[pkg_layer_id] [int] NOT NULL,
	[pkg_material_id] [int] NOT NULL,
	[sequence_nr] [int] NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[artc_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[quantity] [float] NULL,
	[additional_duration] [bigint] NULL,
	[core_width] [float] NULL,
	[core_thickness] [float] NULL,
	[core_diameter] [float] NULL,
	[core_indentation] [float] NULL,
	[core_price] [float] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[comment] [nvarchar](250) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [pkg_materiali0] PRIMARY KEY CLUSTERED 
(
	[pkg_definition_id] ASC,
	[pkg_material_id] ASC,
	[pkg_layer_id] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_material__pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_material__] ADD  CONSTRAINT [DF_pkg_material__pkg_definition_id]  DEFAULT ((0)) FOR [pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_material__pkg_layer_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_material__] ADD  CONSTRAINT [DF_pkg_material__pkg_layer_id]  DEFAULT ((0)) FOR [pkg_layer_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_material__pkg_material_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_material__] ADD  CONSTRAINT [DF_pkg_material__pkg_material_id]  DEFAULT ((0)) FOR [pkg_material_id]
END

