SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_template__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_template__](
	[template_id] [int] NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[blocked] [bit] NOT NULL,
	[template_class_id] [int] NOT NULL,
	[production_flow_id] [int] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_templatei0] PRIMARY KEY CLUSTERED 
(
	[template_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_template__template_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_template__] ADD  CONSTRAINT [DF_pf_param_template__template_id]  DEFAULT ((0)) FOR [template_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_template__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_template__] ADD  CONSTRAINT [DF_pf_param_template__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_template__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_template__] ADD  CONSTRAINT [DF_pf_param_template__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_template__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_template__] ADD  CONSTRAINT [DF_pf_param_template__blocked]  DEFAULT ((0)) FOR [blocked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_template__template_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_template__] ADD  CONSTRAINT [DF_pf_param_template__template_class_id]  DEFAULT ((0)) FOR [template_class_id]
END

