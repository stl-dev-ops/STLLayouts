SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tool_layout_shape__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tool_layout_shape__](
	[tool_layout_id] [int] NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[count] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [tool_layout_shapei0] PRIMARY KEY CLUSTERED 
(
	[tool_layout_id] ASC,
	[shaperef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout_shape__tool_layout_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout_shape__] ADD  CONSTRAINT [DF_tool_layout_shape__tool_layout_id]  DEFAULT ((0)) FOR [tool_layout_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout_shape__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout_shape__] ADD  CONSTRAINT [DF_tool_layout_shape__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tool_layout_shape__count]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tool_layout_shape__] ADD  CONSTRAINT [DF_tool_layout_shape__count]  DEFAULT ((0)) FOR [count]
END

