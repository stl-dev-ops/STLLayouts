SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_resource_instance_content__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_resource_instance_content__](
	[production_flow_id] [int] NOT NULL,
	[resource_id] [int] NOT NULL,
	[resource_instance_id] [int] NOT NULL,
	[resource_part_id] [int] NOT NULL,
	[resource_part_index_id] [int] NOT NULL,
	[content_id] [int] NOT NULL,
	[count] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_resource_instance_contenti0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[resource_id] ASC,
	[resource_instance_id] ASC,
	[resource_part_id] ASC,
	[resource_part_index_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance_content__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance_content__] ADD  CONSTRAINT [DF_pf_resource_instance_content__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance_content__resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance_content__] ADD  CONSTRAINT [DF_pf_resource_instance_content__resource_id]  DEFAULT ((0)) FOR [resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance_content__resource_instance_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance_content__] ADD  CONSTRAINT [DF_pf_resource_instance_content__resource_instance_id]  DEFAULT ((0)) FOR [resource_instance_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance_content__resource_part_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance_content__] ADD  CONSTRAINT [DF_pf_resource_instance_content__resource_part_id]  DEFAULT ((0)) FOR [resource_part_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance_content__resource_part_index_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance_content__] ADD  CONSTRAINT [DF_pf_resource_instance_content__resource_part_index_id]  DEFAULT ((0)) FOR [resource_part_index_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance_content__content_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance_content__] ADD  CONSTRAINT [DF_pf_resource_instance_content__content_id]  DEFAULT ((0)) FOR [content_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_instance_content__count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_instance_content__] ADD  CONSTRAINT [DF_pf_resource_instance_content__count]  DEFAULT ((0)) FOR [count]
END

