SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_resource_class_filter__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_resource_class_filter__](
	[resource_class_id] [int] NOT NULL,
	[filter_id] [int] NOT NULL,
	[resource_type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[fixed] [bit] NOT NULL,
	[filter] [nvarchar](4000) COLLATE Latin1_General_CI_AS NOT NULL,
	[removed] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_resource_class_filteri1] PRIMARY KEY CLUSTERED 
(
	[filter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_resource_class_filter__]') AND name = N'pf_param_resource_class_filteri0')
CREATE UNIQUE NONCLUSTERED INDEX [pf_param_resource_class_filteri0] ON [dbo].[pf_param_resource_class_filter__]
(
	[resource_class_id] ASC,
	[resource_type] ASC,
	[fixed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_resource_class_filter__resource_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_resource_class_filter__] ADD  CONSTRAINT [DF_pf_param_resource_class_filter__resource_class_id]  DEFAULT ((0)) FOR [resource_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_resource_class_filter__filter_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_resource_class_filter__] ADD  CONSTRAINT [DF_pf_param_resource_class_filter__filter_id]  DEFAULT ((0)) FOR [filter_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_resource_class_filter__resource_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_resource_class_filter__] ADD  CONSTRAINT [DF_pf_param_resource_class_filter__resource_type]  DEFAULT ('') FOR [resource_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_resource_class_filter__fixed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_resource_class_filter__] ADD  CONSTRAINT [DF_pf_param_resource_class_filter__fixed]  DEFAULT ((0)) FOR [fixed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_resource_class_filter__filter]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_resource_class_filter__] ADD  CONSTRAINT [DF_pf_param_resource_class_filter__filter]  DEFAULT ('') FOR [filter]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_resource_class_filter__removed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_resource_class_filter__] ADD  CONSTRAINT [DF_pf_param_resource_class_filter__removed]  DEFAULT ((0)) FOR [removed]
END

