SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pkg_param_layer__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pkg_param_layer__](
	[pkg_definition_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[pkg_layer_id] [int] NOT NULL,
	[pkg_element_id] [int] NOT NULL,
	[layoutnr] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[indivisible_unit] [bit] NOT NULL,
	[sku_unit] [bit] NOT NULL,
	[print_label] [bit] NOT NULL,
	[nr_labels] [int] NOT NULL,
	[invoice_unit] [bit] NOT NULL,
	[roll_diameter] [float] NOT NULL,
	[sleeve_thickness_factor] [float] NOT NULL,
	[max_quantity_per_unit] [float] NOT NULL,
	[max_height] [float] NOT NULL,
	[max_gross_weight] [float] NOT NULL,
	[tare_weight_user] [float] NOT NULL,
	[production_duration] [bigint] NOT NULL,
	[production_quantity] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pkg_param_layeri0] PRIMARY KEY CLUSTERED 
(
	[pkg_definition_id] ASC,
	[pkg_layer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__pkg_definition_id]  DEFAULT ((0)) FOR [pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__pkg_layer_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__pkg_layer_id]  DEFAULT ((0)) FOR [pkg_layer_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__pkg_element_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__pkg_element_id]  DEFAULT ((0)) FOR [pkg_element_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__layoutnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__layoutnr]  DEFAULT ('') FOR [layoutnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__indivisible_unit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__indivisible_unit]  DEFAULT ((0)) FOR [indivisible_unit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__sku_unit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__sku_unit]  DEFAULT ((0)) FOR [sku_unit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__print_label]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__print_label]  DEFAULT ((0)) FOR [print_label]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__nr_labels]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__nr_labels]  DEFAULT ((0)) FOR [nr_labels]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__invoice_unit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__invoice_unit]  DEFAULT ((0)) FOR [invoice_unit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__roll_diameter]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__roll_diameter]  DEFAULT ((0)) FOR [roll_diameter]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__sleeve_thickness_factor]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__sleeve_thickness_factor]  DEFAULT ((0)) FOR [sleeve_thickness_factor]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__max_quantity_per_unit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__max_quantity_per_unit]  DEFAULT ((0)) FOR [max_quantity_per_unit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__max_height]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__max_height]  DEFAULT ((0)) FOR [max_height]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__max_gross_weight]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__max_gross_weight]  DEFAULT ((0)) FOR [max_gross_weight]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__tare_weight_user]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__tare_weight_user]  DEFAULT ((0)) FOR [tare_weight_user]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__production_duration]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__production_duration]  DEFAULT ((0)) FOR [production_duration]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_param_layer__production_quantity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_param_layer__] ADD  CONSTRAINT [DF_pkg_param_layer__production_quantity]  DEFAULT ((0)) FOR [production_quantity]
END

