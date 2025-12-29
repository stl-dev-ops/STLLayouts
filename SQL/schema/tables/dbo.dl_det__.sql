SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dl_det__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[dl_det__](
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dlprdref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dldetref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[default_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws___r] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws___v] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod__r] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod__v] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [float] NOT NULL,
	[pagesmin] [int] NOT NULL,
	[pagesmax] [int] NOT NULL,
	[pagesdef] [int] NOT NULL,
	[afw_zyde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vbpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awpr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[waarde_1] [float] NOT NULL,
	[waarde_2] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[zoekkrit] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [dl_deti0] PRIMARY KEY CLUSTERED 
(
	[prd__ref] ASC,
	[dlprdref] ASC,
	[dldetref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__prd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__prd__ref]  DEFAULT ('') FOR [prd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__dlprdref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__dlprdref]  DEFAULT ('') FOR [dlprdref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__dldetref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__dldetref]  DEFAULT ('') FOR [dldetref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__default_]  DEFAULT ('N') FOR [default_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__afws___r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__afws___r]  DEFAULT ('') FOR [afws___r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__afws___v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__afws___v]  DEFAULT ('') FOR [afws___v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__klcod__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__klcod__r]  DEFAULT ('') FOR [klcod__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__klcod__v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__klcod__v]  DEFAULT ('') FOR [klcod__v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__grammage]  DEFAULT ((0)) FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__pagesmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__pagesmin]  DEFAULT ((0)) FOR [pagesmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__pagesmax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__pagesmax]  DEFAULT ((0)) FOR [pagesmax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__pagesdef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__pagesdef]  DEFAULT ((0)) FOR [pagesdef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__afw_zyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__afw_zyde]  DEFAULT ('') FOR [afw_zyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__vbst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__vbst_ref]  DEFAULT ('') FOR [vbst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__vbpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__vbpr_ref]  DEFAULT ('') FOR [vbpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__awst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__awst_ref]  DEFAULT ('') FOR [awst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__awpr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__awpr_ref]  DEFAULT ('') FOR [awpr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__waarde_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__waarde_1]  DEFAULT ((0)) FOR [waarde_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__waarde_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__waarde_2]  DEFAULT ((0)) FOR [waarde_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_dl_det__zoekkrit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[dl_det__] ADD  CONSTRAINT [DF_dl_det__zoekkrit]  DEFAULT ('') FOR [zoekkrit]
END

