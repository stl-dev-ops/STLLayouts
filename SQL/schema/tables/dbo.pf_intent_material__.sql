SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_intent_material__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_intent_material__](
	[production_flow_id] [int] NOT NULL,
	[intent_id] [int] NOT NULL,
	[intent_resource_id] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_intent_materiali0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[intent_id] ASC,
	[intent_resource_id] ASC,
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_material__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_material__] ADD  CONSTRAINT [DF_pf_intent_material__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_material__intent_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_material__] ADD  CONSTRAINT [DF_pf_intent_material__intent_id]  DEFAULT ((0)) FOR [intent_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_material__intent_resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_material__] ADD  CONSTRAINT [DF_pf_intent_material__intent_resource_id]  DEFAULT ((0)) FOR [intent_resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_material__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_material__] ADD  CONSTRAINT [DF_pf_intent_material__art__ref]  DEFAULT ('') FOR [art__ref]
END

