SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pln_param_capacity__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pln_param_capacity__](
	[capacity_id] [int] NOT NULL,
	[keyword] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pln_param_capacityi0] PRIMARY KEY CLUSTERED 
(
	[capacity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity__capacity_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity__] ADD  CONSTRAINT [DF_pln_param_capacity__capacity_id]  DEFAULT ((0)) FOR [capacity_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity__keyword]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity__] ADD  CONSTRAINT [DF_pln_param_capacity__keyword]  DEFAULT ('') FOR [keyword]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity__] ADD  CONSTRAINT [DF_pln_param_capacity__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pln_param_capacity__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pln_param_capacity__] ADD  CONSTRAINT [DF_pln_param_capacity__dossier_]  DEFAULT ('') FOR [dossier_]
END

