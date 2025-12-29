SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_operation_input__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_operation_input__](
	[operation_id] [int] NOT NULL,
	[input_id] [int] NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[resource_class_id] [int] NOT NULL,
	[min_count] [int] NOT NULL,
	[max_count] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[blocked] [bit] NOT NULL,
 CONSTRAINT [pf_param_operation_inputi0] PRIMARY KEY CLUSTERED 
(
	[operation_id] ASC,
	[input_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_input__operation_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_input__] ADD  CONSTRAINT [DF_pf_param_operation_input__operation_id]  DEFAULT ((0)) FOR [operation_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_input__input_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_input__] ADD  CONSTRAINT [DF_pf_param_operation_input__input_id]  DEFAULT ((0)) FOR [input_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_input__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_input__] ADD  CONSTRAINT [DF_pf_param_operation_input__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_input__resource_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_input__] ADD  CONSTRAINT [DF_pf_param_operation_input__resource_class_id]  DEFAULT ((0)) FOR [resource_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_input__min_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_input__] ADD  CONSTRAINT [DF_pf_param_operation_input__min_count]  DEFAULT ((1)) FOR [min_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_input__max_count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_input__] ADD  CONSTRAINT [DF_pf_param_operation_input__max_count]  DEFAULT ((1)) FOR [max_count]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_operation_input__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_operation_input__] ADD  CONSTRAINT [DF_pf_param_operation_input__blocked]  DEFAULT ((0)) FOR [blocked]
END

