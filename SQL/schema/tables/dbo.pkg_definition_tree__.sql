SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pkg_definition_tree__](
	[pkg_definition_id] [int] NOT NULL,
	[parent_pkg_definition_id] [int] NOT NULL,
	[param_pkg_definition_id] [int] NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [pkg_definition_treei0] PRIMARY KEY CLUSTERED 
(
	[pkg_definition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND name = N'pkg_definition_treei1')
CREATE NONCLUSTERED INDEX [pkg_definition_treei1] ON [dbo].[pkg_definition_tree__]
(
	[param_pkg_definition_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND name = N'pkg_definition_treei2')
CREATE NONCLUSTERED INDEX [pkg_definition_treei2] ON [dbo].[pkg_definition_tree__]
(
	[afg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND name = N'pkg_definition_treei3')
CREATE NONCLUSTERED INDEX [pkg_definition_treei3] ON [dbo].[pkg_definition_tree__]
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND name = N'pkg_definition_treei4')
CREATE NONCLUSTERED INDEX [pkg_definition_treei4] ON [dbo].[pkg_definition_tree__]
(
	[afr__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND name = N'pkg_definition_treei5')
CREATE NONCLUSTERED INDEX [pkg_definition_treei5] ON [dbo].[pkg_definition_tree__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND name = N'pkg_definition_treei6')
CREATE NONCLUSTERED INDEX [pkg_definition_treei6] ON [dbo].[pkg_definition_tree__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND name = N'pkg_definition_treei7')
CREATE NONCLUSTERED INDEX [pkg_definition_treei7] ON [dbo].[pkg_definition_tree__]
(
	[shaperef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pkg_definition_tree__]') AND name = N'pkg_definition_treei8')
CREATE NONCLUSTERED INDEX [pkg_definition_treei8] ON [dbo].[pkg_definition_tree__]
(
	[prd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__pkg_definition_id]  DEFAULT ((0)) FOR [pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__parent_pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__parent_pkg_definition_id]  DEFAULT ((0)) FOR [parent_pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__param_pkg_definition_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__param_pkg_definition_id]  DEFAULT ((0)) FOR [param_pkg_definition_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__afr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__afr__ref]  DEFAULT ('') FOR [afr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pkg_definition_tree__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pkg_definition_tree__] ADD  CONSTRAINT [DF_pkg_definition_tree__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

