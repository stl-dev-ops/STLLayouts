SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shapes_variant__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shapes_variant__](
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[var__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap_variant] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_mockup_int] [int] NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval06] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval07] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval08] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval09] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval10] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [shapes_varianti0] PRIMARY KEY CLUSTERED 
(
	[shaperef] ASC,
	[var__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__var__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__var__ref]  DEFAULT ('') FOR [var__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__cde___ap_variant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__cde___ap_variant]  DEFAULT ('') FOR [cde___ap_variant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__aant_mockup_int]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__aant_mockup_int]  DEFAULT ((0)) FOR [aant_mockup_int]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant__] ADD  CONSTRAINT [DF_shapes_variant__tstval10]  DEFAULT ('') FOR [tstval10]
END

