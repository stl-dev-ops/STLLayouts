SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_resource_instance__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_resource_instance__](
	[production_flow_id] [int] NOT NULL,
	[resource_id] [int] NOT NULL,
	[resource_instance_id] [int] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[amount] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[dimension_x] [float] NULL,
	[dimension_x_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[dimension_y] [float] NULL,
	[dimension_y_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[dimension_z] [float] NULL,
	[dimension_z_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[grammage] [float] NULL,
	[grammage_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
 CONSTRAINT [pf_resource_instancei0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[resource_id] ASC,
	[resource_instance_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance__] ADD  CONSTRAINT [DF_pf_resource_instance__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance__resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance__] ADD  CONSTRAINT [DF_pf_resource_instance__resource_id]  DEFAULT ((0)) FOR [resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance__resource_instance_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance__] ADD  CONSTRAINT [DF_pf_resource_instance__resource_instance_id]  DEFAULT ((0)) FOR [resource_instance_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance__] ADD  CONSTRAINT [DF_pf_resource_instance__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance__amount]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance__] ADD  CONSTRAINT [DF_pf_resource_instance__amount]  DEFAULT ((0)) FOR [amount]
END

