SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shapes_standard_design_parameter__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shapes_standard_design_parameter__](
	[stddesignref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[param_name] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[sequence_nr] [int] NOT NULL,
	[default_value] [float] NOT NULL,
	[menu] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [shapes_standard_design_parameteri1] PRIMARY KEY CLUSTERED 
(
	[stddesignref] ASC,
	[param_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design_parameter__stddesignref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design_parameter__] ADD  CONSTRAINT [DF_shapes_standard_design_parameter__stddesignref]  DEFAULT ('') FOR [stddesignref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design_parameter__param_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design_parameter__] ADD  CONSTRAINT [DF_shapes_standard_design_parameter__param_name]  DEFAULT ('') FOR [param_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design_parameter__sequence_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design_parameter__] ADD  CONSTRAINT [DF_shapes_standard_design_parameter__sequence_nr]  DEFAULT ((0)) FOR [sequence_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design_parameter__default_value]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design_parameter__] ADD  CONSTRAINT [DF_shapes_standard_design_parameter__default_value]  DEFAULT ((0)) FOR [default_value]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design_parameter__menu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design_parameter__] ADD  CONSTRAINT [DF_shapes_standard_design_parameter__menu]  DEFAULT ('') FOR [menu]
END

