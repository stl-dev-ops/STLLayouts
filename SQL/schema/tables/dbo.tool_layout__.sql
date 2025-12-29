SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tool_layout__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tool_layout__](
	[tool_layout_id] [int] NOT NULL,
	[name] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[ggdr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cut_box_x] [float] NOT NULL,
	[cut_box_y] [float] NOT NULL,
	[margin_left] [float] NOT NULL,
	[margin_top] [float] NOT NULL,
	[margin_right] [float] NOT NULL,
	[margin_bottom] [float] NOT NULL,
	[cutting_length] [float] NOT NULL,
	[creasing_length] [float] NOT NULL,
	[waste] [float] NOT NULL,
	[grain_direction] [nvarchar](53) COLLATE Latin1_General_CI_AS NULL,
	[rotated] [bit] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [tool_layouti0] PRIMARY KEY CLUSTERED 
(
	[tool_layout_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__tool_layout_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__tool_layout_id]  DEFAULT ((0)) FOR [tool_layout_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__name]  DEFAULT ('') FOR [name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__ggdr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__ggdr_ref]  DEFAULT ('') FOR [ggdr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__cut_box_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__cut_box_x]  DEFAULT ((0)) FOR [cut_box_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__cut_box_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__cut_box_y]  DEFAULT ((0)) FOR [cut_box_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__margin_left]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__margin_left]  DEFAULT ((0)) FOR [margin_left]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__margin_top]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__margin_top]  DEFAULT ((0)) FOR [margin_top]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__margin_right]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__margin_right]  DEFAULT ((0)) FOR [margin_right]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__margin_bottom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__margin_bottom]  DEFAULT ((0)) FOR [margin_bottom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__cutting_length]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__cutting_length]  DEFAULT ((0)) FOR [cutting_length]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__creasing_length]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__creasing_length]  DEFAULT ((0)) FOR [creasing_length]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout__waste]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout__] ADD  CONSTRAINT [DF_tool_layout__waste]  DEFAULT ((0)) FOR [waste]
END

