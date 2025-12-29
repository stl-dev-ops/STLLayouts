SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_resource_data_link__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_resource_data_link__](
	[production_flow_id] [int] NOT NULL,
	[resource_id] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[resource_instance_id] [int] NULL,
	[tool_layout_id] [int] NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[drg_vrpl] [bit] NOT NULL,
	[link_production_flow_id] [int] NULL,
	[link_resource_id] [int] NULL,
	[link_resource_instance_id] [int] NULL,
 CONSTRAINT [pf_resource_data_linki0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pf_resource_data_link__]') AND name = N'pf_resource_data_linki1')
CREATE NONCLUSTERED INDEX [pf_resource_data_linki1] ON [dbo].[pf_resource_data_link__]
(
	[production_flow_id] ASC,
	[resource_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_data_link__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_data_link__] ADD  CONSTRAINT [DF_pf_resource_data_link__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_data_link__resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_data_link__] ADD  CONSTRAINT [DF_pf_resource_data_link__resource_id]  DEFAULT ((0)) FOR [resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_data_link__drg_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_data_link__] ADD  CONSTRAINT [DF_pf_resource_data_link__drg_vrpl]  DEFAULT ((0)) FOR [drg_vrpl]
END

