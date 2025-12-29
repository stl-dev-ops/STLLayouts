SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_value_set__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_value_set__](
	[value_set_id] [int] NOT NULL,
	[blocked] [bit] NOT NULL,
	[removed] [bit] NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_value_seti0] PRIMARY KEY CLUSTERED 
(
	[value_set_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_value_set__value_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_value_set__] ADD  CONSTRAINT [DF_pf_param_value_set__value_set_id]  DEFAULT ((0)) FOR [value_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_value_set__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_value_set__] ADD  CONSTRAINT [DF_pf_param_value_set__blocked]  DEFAULT ((0)) FOR [blocked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_value_set__removed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_value_set__] ADD  CONSTRAINT [DF_pf_param_value_set__removed]  DEFAULT ((0)) FOR [removed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_value_set__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_value_set__] ADD  CONSTRAINT [DF_pf_param_value_set__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_value_set__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_value_set__] ADD  CONSTRAINT [DF_pf_param_value_set__description]  DEFAULT ('') FOR [description]
END

