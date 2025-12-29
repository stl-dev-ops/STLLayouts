SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_resource_part__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_resource_part__](
	[production_flow_id] [int] NOT NULL,
	[resource_id] [int] NOT NULL,
	[resource_part_id] [int] NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[count] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_resource_parti0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[resource_id] ASC,
	[resource_part_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_part__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_part__] ADD  CONSTRAINT [DF_pf_resource_part__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_part__resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_part__] ADD  CONSTRAINT [DF_pf_resource_part__resource_id]  DEFAULT ((0)) FOR [resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_part__resource_part_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_part__] ADD  CONSTRAINT [DF_pf_resource_part__resource_part_id]  DEFAULT ((0)) FOR [resource_part_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_part__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_part__] ADD  CONSTRAINT [DF_pf_resource_part__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_resource_part__count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_resource_part__] ADD  CONSTRAINT [DF_pf_resource_part__count]  DEFAULT ((0)) FOR [count]
END

