SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pf_param_device__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pf_param_device__](
	[device_id] [int] NOT NULL,
	[blocked] [bit] NOT NULL,
	[removed] [bit] NOT NULL,
	[name] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[description] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[device_class_id] [int] NOT NULL,
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NULL,
	[min_dimension_x] [float] NULL,
	[max_dimension_x] [float] NULL,
	[dimension_x_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[min_dimension_y] [float] NULL,
	[max_dimension_y] [float] NULL,
	[dimension_y_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[min_dimension_z] [float] NULL,
	[max_dimension_z] [float] NULL,
	[dimension_z_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[min_grammage] [float] NULL,
	[max_grammage] [float] NULL,
	[grammage_unit] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[margin_left] [float] NOT NULL,
	[margin_right] [float] NOT NULL,
	[margin_top] [float] NOT NULL,
	[margin_bottom] [float] NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[granularity] [nvarchar](53) COLLATE Latin1_General_CI_AS NOT NULL,
	[creates_sfg] [bit] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pf_param_devicei0] PRIMARY KEY CLUSTERED 
(
	[device_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__device_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__device_id]  DEFAULT ((0)) FOR [device_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__blocked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__blocked]  DEFAULT ((0)) FOR [blocked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__removed]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__removed]  DEFAULT ((0)) FOR [removed]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__description]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__description]  DEFAULT ('') FOR [description]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__device_class_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__device_class_id]  DEFAULT ((0)) FOR [device_class_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__margin_left]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__margin_left]  DEFAULT ((0)) FOR [margin_left]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__margin_right]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__margin_right]  DEFAULT ((0)) FOR [margin_right]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__margin_top]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__margin_top]  DEFAULT ((0)) FOR [margin_top]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__margin_bottom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__margin_bottom]  DEFAULT ((0)) FOR [margin_bottom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__granularity]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__granularity]  DEFAULT ('Workstep') FOR [granularity]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pf_param_device__creates_sfg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pf_param_device__] ADD  CONSTRAINT [DF_pf_param_device__creates_sfg]  DEFAULT ((1)) FOR [creates_sfg]
END

