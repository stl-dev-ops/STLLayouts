SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pptmpl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[pptmpl__](
	[tmpl_ref] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[tmpl_oms] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[default_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lpr_long] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lpr_shrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[workmode] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltmpl_1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltmpl_2] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltmpl_3] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltmpl_4] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltmpl_5] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[plfmtb_1] [float] NOT NULL,
	[plfmtl_1] [float] NOT NULL,
	[plfmtb_2] [float] NOT NULL,
	[plfmtl_2] [float] NOT NULL,
	[plfmtb_3] [float] NOT NULL,
	[plfmtl_3] [float] NOT NULL,
	[plfmtb_4] [float] NOT NULL,
	[plfmtl_4] [float] NOT NULL,
	[plfmtb_5] [float] NOT NULL,
	[plfmtl_5] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [pptmpli0] PRIMARY KEY CLUSTERED 
(
	[tmpl_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[pptmpl__]') AND name = N'pptmpli1')
CREATE NONCLUSTERED INDEX [pptmpli1] ON [dbo].[pptmpl__]
(
	[geblokk_] ASC,
	[default_] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__tmpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__tmpl_ref]  DEFAULT ('') FOR [tmpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__tmpl_oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__tmpl_oms]  DEFAULT ('') FOR [tmpl_oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__default_]  DEFAULT ('') FOR [default_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__lpr_long]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__lpr_long]  DEFAULT ('') FOR [lpr_long]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__lpr_shrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__lpr_shrt]  DEFAULT ('') FOR [lpr_shrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__workmode]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__workmode]  DEFAULT ('') FOR [workmode]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__pltmpl_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__pltmpl_1]  DEFAULT ('') FOR [pltmpl_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__pltmpl_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__pltmpl_2]  DEFAULT ('') FOR [pltmpl_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__pltmpl_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__pltmpl_3]  DEFAULT ('') FOR [pltmpl_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__pltmpl_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__pltmpl_4]  DEFAULT ('') FOR [pltmpl_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__pltmpl_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__pltmpl_5]  DEFAULT ('') FOR [pltmpl_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtb_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtb_1]  DEFAULT ((0)) FOR [plfmtb_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtl_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtl_1]  DEFAULT ((0)) FOR [plfmtl_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtb_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtb_2]  DEFAULT ((0)) FOR [plfmtb_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtl_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtl_2]  DEFAULT ((0)) FOR [plfmtl_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtb_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtb_3]  DEFAULT ((0)) FOR [plfmtb_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtl_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtl_3]  DEFAULT ((0)) FOR [plfmtl_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtb_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtb_4]  DEFAULT ((0)) FOR [plfmtb_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtl_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtl_4]  DEFAULT ((0)) FOR [plfmtl_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtb_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtb_5]  DEFAULT ((0)) FOR [plfmtb_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_pptmpl__plfmtl_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[pptmpl__] ADD  CONSTRAINT [DF_pptmpl__plfmtl_5]  DEFAULT ((0)) FOR [plfmtl_5]
END

