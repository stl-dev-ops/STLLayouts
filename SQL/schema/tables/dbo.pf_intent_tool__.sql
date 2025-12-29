SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_intent_tool__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_intent_tool__](
	[production_flow_id] [int] NOT NULL,
	[intent_id] [int] NOT NULL,
	[intent_resource_id] [int] NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_intent_tooli0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[intent_id] ASC,
	[intent_resource_id] ASC,
	[arth_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_tool__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_tool__] ADD  CONSTRAINT [DF_pf_intent_tool__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_tool__intent_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_tool__] ADD  CONSTRAINT [DF_pf_intent_tool__intent_id]  DEFAULT ((0)) FOR [intent_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_tool__intent_resource_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_tool__] ADD  CONSTRAINT [DF_pf_intent_tool__intent_resource_id]  DEFAULT ((0)) FOR [intent_resource_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_tool__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_tool__] ADD  CONSTRAINT [DF_pf_intent_tool__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

