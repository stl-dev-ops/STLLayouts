SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_resource__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_resource__](
	[production_flow_id] [int] NOT NULL,
	[resource_id] [int] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[resource_class_id] [int] NOT NULL,
	[dimension_x] [float] NULL,
	[dimension_x_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[dimension_y] [float] NULL,
	[dimension_y_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[dimension_z] [float] NULL,
	[dimension_z_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[grammage] [float] NULL,
	[grammage_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[min_dimension_x] [float] NULL,
	[min_dimension_x_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[min_dimension_y] [float] NULL,
	[min_dimension_y_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[min_dimension_z] [float] NULL,
	[min_dimension_z_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[requested_grain_direction] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[resource_direction] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[resource_gap] [float] NOT NULL,
	[unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[per_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[per_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[correction_comment] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[unit_price_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[unit_price] [float] NULL,
	[unit_price_unit_dimension] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[unit_price_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[unit_price_per_amount] [float] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_resourcei0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[resource_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource__] ADD  CONSTRAINT [DF_pf_resource__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource__resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource__] ADD  CONSTRAINT [DF_pf_resource__resource_id]  DEFAULT ((0)) FOR [resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource__] ADD  CONSTRAINT [DF_pf_resource__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource__resource_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource__] ADD  CONSTRAINT [DF_pf_resource__resource_class_id]  DEFAULT ((0)) FOR [resource_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource__resource_direction]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource__] ADD  CONSTRAINT [DF_pf_resource__resource_direction]  DEFAULT ('y') FOR [resource_direction]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource__resource_gap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource__] ADD  CONSTRAINT [DF_pf_resource__resource_gap]  DEFAULT ((0)) FOR [resource_gap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource__correction_comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource__] ADD  CONSTRAINT [DF_pf_resource__correction_comment]  DEFAULT ('') FOR [correction_comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource__unit_price_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource__] ADD  CONSTRAINT [DF_pf_resource__unit_price_type]  DEFAULT ('Automatic') FOR [unit_price_type]
END

