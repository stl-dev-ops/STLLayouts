SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_intent_operation__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_intent_operation__](
	[production_flow_id] [int] NOT NULL,
	[intent_id] [int] NOT NULL,
	[intent_operation_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[operation_id] [int] NOT NULL,
	[side] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[count] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_intent_operationi0] PRIMARY KEY CLUSTERED 
(
	[production_flow_id] ASC,
	[intent_id] ASC,
	[intent_operation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_operation__production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_operation__] ADD  CONSTRAINT [DF_pf_intent_operation__production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_operation__intent_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_operation__] ADD  CONSTRAINT [DF_pf_intent_operation__intent_id]  DEFAULT ((0)) FOR [intent_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_operation__intent_operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_operation__] ADD  CONSTRAINT [DF_pf_intent_operation__intent_operation_id]  DEFAULT ((0)) FOR [intent_operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_operation__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_operation__] ADD  CONSTRAINT [DF_pf_intent_operation__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_operation__operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_operation__] ADD  CONSTRAINT [DF_pf_intent_operation__operation_id]  DEFAULT ((0)) FOR [operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_operation__side]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_operation__] ADD  CONSTRAINT [DF_pf_intent_operation__side]  DEFAULT ('') FOR [side]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_intent_operation__count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_intent_operation__] ADD  CONSTRAINT [DF_pf_intent_operation__count]  DEFAULT ((0)) FOR [count]
END

