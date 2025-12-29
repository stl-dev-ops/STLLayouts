SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4pf____]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4pf____](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NOT NULL,
	[value_set_id] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v4pf__i0] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4pf____off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4pf____] ADD  CONSTRAINT [DF_v4pf____off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4pf____production_flow_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4pf____] ADD  CONSTRAINT [DF_v4pf____production_flow_id]  DEFAULT ((0)) FOR [production_flow_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4pf____value_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4pf____] ADD  CONSTRAINT [DF_v4pf____value_set_id]  DEFAULT ((0)) FOR [value_set_id]
END

