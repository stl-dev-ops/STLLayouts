SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shapes_variant_sms__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shapes_variant_sms__](
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[var__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef_child] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[var__ref_child] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [shapes_variant_smsi0] PRIMARY KEY CLUSTERED 
(
	[shaperef] ASC,
	[var__ref] ASC,
	[shaperef_child] ASC,
	[var__ref_child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[shapes_variant_sms__]') AND name = N'shapes_variant_smsi1')
CREATE NONCLUSTERED INDEX [shapes_variant_smsi1] ON [dbo].[shapes_variant_sms__]
(
	[shaperef_child] ASC,
	[var__ref_child] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant_sms__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant_sms__] ADD  CONSTRAINT [DF_shapes_variant_sms__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant_sms__var__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant_sms__] ADD  CONSTRAINT [DF_shapes_variant_sms__var__ref]  DEFAULT ('') FOR [var__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant_sms__shaperef_child]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant_sms__] ADD  CONSTRAINT [DF_shapes_variant_sms__shaperef_child]  DEFAULT ('') FOR [shaperef_child]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant_sms__var__ref_child]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant_sms__] ADD  CONSTRAINT [DF_shapes_variant_sms__var__ref_child]  DEFAULT ('') FOR [var__ref_child]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes_variant_sms__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes_variant_sms__] ADD  CONSTRAINT [DF_shapes_variant_sms__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

