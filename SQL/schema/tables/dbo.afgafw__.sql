SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[afgafw__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[afgafw__](
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg2_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[versiref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgorde] [int] NOT NULL,
	[etas_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_ex_il] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[per_hoev] [int] NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__rpn] [nvarchar](17) COLLATE Latin1_General_CI_AS NOT NULL,
	[arth_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drg_vrpl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[afw_zyde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [afga_id1] PRIMARY KEY CLUSTERED 
(
	[afg__ref] ASC,
	[afw__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__afg2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__afg2_ref]  DEFAULT ('') FOR [afg2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__versiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__versiref]  DEFAULT ('001') FOR [versiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__afw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__afw__ref]  DEFAULT ('') FOR [afw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__volgorde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__volgorde]  DEFAULT ((0)) FOR [volgorde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__etas_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__etas_ref]  DEFAULT ('') FOR [etas_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__afwp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__afwp_ref]  DEFAULT ('') FOR [afwp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__awst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__awst_ref]  DEFAULT ('') FOR [awst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__in_ex_il]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__in_ex_il]  DEFAULT ('') FOR [in_ex_il]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__per_hoev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__per_hoev]  DEFAULT ((0)) FOR [per_hoev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__art__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__art__rpn]  DEFAULT ('') FOR [art__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__arth_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__arth_ref]  DEFAULT ('') FOR [arth_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__drg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__drg__ref]  DEFAULT ('') FOR [drg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__drg_vrpl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__drg_vrpl]  DEFAULT ('N') FOR [drg_vrpl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_afgafw__afw_zyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[afgafw__] ADD  CONSTRAINT [DF_afgafw__afw_zyde]  DEFAULT ('') FOR [afw_zyde]
END

