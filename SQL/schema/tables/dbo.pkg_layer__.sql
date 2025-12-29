SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pkg_layer__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pkg_layer__](
	[pkg_definition_id] [int] NOT NULL,
	[sequence_nr] [int] NULL,
	[pkg_layer_id] [int] NOT NULL,
	[pkg_element_id] [int] NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NULL,
	[indivisible_unit] [bit] NULL,
	[sku_unit] [bit] NULL,
	[print_label] [bit] NULL,
	[nr_labels] [int] NULL,
	[invoice_unit] [bit] NULL,
	[roll_diameter] [float] NULL,
	[sleeve_thickness_factor] [float] NULL,
	[max_quantity_per_unit] [float] NULL,
	[max_gross_weight] [float] NULL,
	[tare_weight_user] [float] NULL,
	[production_duration] [bigint] NULL,
	[production_quantity] [float] NULL,
	[parent_image_valid] [bit] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[max_height] [float] NULL,
 CONSTRAINT [pkg_layeri0] PRIMARY KEY CLUSTERED 
(
	[pkg_definition_id] ASC,
	[pkg_layer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_layer__pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_layer__] ADD  CONSTRAINT [DF_pkg_layer__pkg_definition_id]  DEFAULT ((0)) FOR [pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_layer__pkg_layer_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_layer__] ADD  CONSTRAINT [DF_pkg_layer__pkg_layer_id]  DEFAULT ((0)) FOR [pkg_layer_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_layer__parent_image_valid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_layer__] ADD  CONSTRAINT [DF_pkg_layer__parent_image_valid]  DEFAULT ((1)) FOR [parent_image_valid]
END

