SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v1alternative_substrates__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v1alternative_substrates__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bom_type] [int] NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etap_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etaf_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v1alternative_substratesi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v1alternative_substrates__]') AND name = N'v1alternative_substratesi1')
CREATE NONCLUSTERED INDEX [v1alternative_substratesi1] ON [dbo].[v1alternative_substrates__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1alternative_substrates__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1alternative_substrates__] ADD  CONSTRAINT [DF_v1alternative_substrates__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1alternative_substrates__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1alternative_substrates__] ADD  CONSTRAINT [DF_v1alternative_substrates__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1alternative_substrates__bom_type]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1alternative_substrates__] ADD  CONSTRAINT [DF_v1alternative_substrates__bom_type]  DEFAULT ((0)) FOR [bom_type]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1alternative_substrates__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1alternative_substrates__] ADD  CONSTRAINT [DF_v1alternative_substrates__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1alternative_substrates__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1alternative_substrates__] ADD  CONSTRAINT [DF_v1alternative_substrates__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1alternative_substrates__etap_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1alternative_substrates__] ADD  CONSTRAINT [DF_v1alternative_substrates__etap_typ]  DEFAULT ('') FOR [etap_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1alternative_substrates__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1alternative_substrates__] ADD  CONSTRAINT [DF_v1alternative_substrates__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v1alternative_substrates__etaf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v1alternative_substrates__] ADD  CONSTRAINT [DF_v1alternative_substrates__etaf_ref]  DEFAULT ('') FOR [etaf_ref]
END

