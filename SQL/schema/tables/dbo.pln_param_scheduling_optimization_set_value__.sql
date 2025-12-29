SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pln_param_scheduling_optimization_set_value__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pln_param_scheduling_optimization_set_value__](
	[scheduling_optimization_set_id] [int] NOT NULL,
	[name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[value] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[type] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pln_param_scheduling_optimization_set_valuei0] PRIMARY KEY CLUSTERED 
(
	[scheduling_optimization_set_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set_value__scheduling_optimization_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set_value__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set_value__scheduling_optimization_set_id]  DEFAULT ((0)) FOR [scheduling_optimization_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set_value__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set_value__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set_value__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set_value__value]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set_value__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set_value__value]  DEFAULT ('') FOR [value]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set_value__type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set_value__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set_value__type]  DEFAULT ('') FOR [type]
END

