SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shapes__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[shapes__](
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[eti_vorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[zynrefkl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[srtdrkvl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[shp__oms] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[project_ap] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[etiket_b] [float] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[radius__] [float] NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_dat] [date] NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[wij__dat] [date] NOT NULL,
	[looprich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stddesignref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt____a] [float] NOT NULL,
	[fmt____b] [float] NOT NULL,
	[fmt____h] [float] NOT NULL,
	[opp_____] [float] NOT NULL,
	[cutting_length] [float] NOT NULL,
	[creasing_length] [float] NOT NULL,
	[cut_box_x] [float] NOT NULL,
	[cut_box_y] [float] NOT NULL,
	[flat_dimension_x] [float] NOT NULL,
	[flat_dimension_y] [float] NOT NULL,
	[flat_dimension_z] [float] NOT NULL,
	[ord__ref_cad] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[parent_shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[root_shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[multipart] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cad_customer] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[cad_designer] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[cad_substrate] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [shapesi0] PRIMARY KEY CLUSTERED 
(
	[shaperef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[shapes__]') AND name = N'shapesi1')
CREATE NONCLUSTERED INDEX [shapesi1] ON [dbo].[shapes__]
(
	[eti_vorm] ASC,
	[zynrefkl] ASC,
	[etiket_b] ASC,
	[etiket_h] ASC,
	[radius__] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[shapes__]') AND name = N'shapesi2')
CREATE UNIQUE NONCLUSTERED INDEX [shapesi2] ON [dbo].[shapes__]
(
	[root_shaperef] ASC,
	[shaperef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[shapes__]') AND name = N'shapesi3')
CREATE NONCLUSTERED INDEX [shapesi3] ON [dbo].[shapes__]
(
	[cde___ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__eti_vorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__eti_vorm]  DEFAULT ('') FOR [eti_vorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__zynrefkl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__zynrefkl]  DEFAULT ('') FOR [zynrefkl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__srtdrkvl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__srtdrkvl]  DEFAULT ('') FOR [srtdrkvl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__shp__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__shp__rpn]  DEFAULT ('') FOR [shp__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__shp__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__shp__oms]  DEFAULT ('') FOR [shp__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__project_ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__project_ap]  DEFAULT ('') FOR [project_ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__etiket_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__etiket_b]  DEFAULT ((0)) FOR [etiket_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__radius__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__radius__]  DEFAULT ((0)) FOR [radius__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__crea_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__crea_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [crea_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__wij__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__wij__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [wij__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__looprich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__looprich]  DEFAULT ('') FOR [looprich]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__stddesignref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__stddesignref]  DEFAULT ('') FOR [stddesignref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__fmt____a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__fmt____a]  DEFAULT ((0)) FOR [fmt____a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__fmt____b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__fmt____b]  DEFAULT ((0)) FOR [fmt____b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__fmt____h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__fmt____h]  DEFAULT ((0)) FOR [fmt____h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__opp_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__opp_____]  DEFAULT ((0)) FOR [opp_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__cutting_length]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__cutting_length]  DEFAULT ((0)) FOR [cutting_length]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__creasing_length]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__creasing_length]  DEFAULT ((0)) FOR [creasing_length]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__cut_box_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__cut_box_x]  DEFAULT ((0)) FOR [cut_box_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__cut_box_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__cut_box_y]  DEFAULT ((0)) FOR [cut_box_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__flat_dimension_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__flat_dimension_x]  DEFAULT ((0)) FOR [flat_dimension_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__flat_dimension_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__flat_dimension_y]  DEFAULT ((0)) FOR [flat_dimension_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__flat_dimension_z]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__flat_dimension_z]  DEFAULT ((0)) FOR [flat_dimension_z]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__ord__ref_cad]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__ord__ref_cad]  DEFAULT ('') FOR [ord__ref_cad]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__parent_shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__parent_shaperef]  DEFAULT ('') FOR [parent_shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__root_shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__root_shaperef]  DEFAULT ('') FOR [root_shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__multipart]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__multipart]  DEFAULT ('') FOR [multipart]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__cad_customer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__cad_customer]  DEFAULT ('') FOR [cad_customer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__cad_designer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__cad_designer]  DEFAULT ('') FOR [cad_designer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__cad_substrate]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__cad_substrate]  DEFAULT ('') FOR [cad_substrate]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_shapes__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[shapes__] ADD  CONSTRAINT [DF_shapes__comment_]  DEFAULT ('') FOR [comment_]
END

