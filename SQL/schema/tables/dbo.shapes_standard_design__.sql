SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shapes_standard_design__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shapes_standard_design__](
	[stddesignref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[catalog1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[catalog2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[catalog3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[catalog4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[catalog5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [shapes_standard_designi0] PRIMARY KEY CLUSTERED 
(
	[stddesignref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__stddesignref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__stddesignref]  DEFAULT ('') FOR [stddesignref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__catalog1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__catalog1]  DEFAULT ('') FOR [catalog1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__catalog2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__catalog2]  DEFAULT ('') FOR [catalog2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__catalog3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__catalog3]  DEFAULT ('') FOR [catalog3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__catalog4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__catalog4]  DEFAULT ('') FOR [catalog4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__catalog5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__catalog5]  DEFAULT ('') FOR [catalog5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_standard_design__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_standard_design__] ADD  CONSTRAINT [DF_shapes_standard_design__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

