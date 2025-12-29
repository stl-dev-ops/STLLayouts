SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pln_param_scheduling_optimization_set__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pln_param_scheduling_optimization_set__](
	[scheduling_optimization_set_id] [int] NOT NULL,
	[keyword] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[active] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[blocked] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pln_param_scheduling_optimization_seti0] PRIMARY KEY CLUSTERED 
(
	[scheduling_optimization_set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set__scheduling_optimization_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set__scheduling_optimization_set_id]  DEFAULT ((0)) FOR [scheduling_optimization_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set__keyword]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set__keyword]  DEFAULT ('') FOR [keyword]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set__active]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set__active]  DEFAULT ('No') FOR [active]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_scheduling_optimization_set__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_scheduling_optimization_set__] ADD  CONSTRAINT [DF_pln_param_scheduling_optimization_set__blocked]  DEFAULT ((0)) FOR [blocked]
END

