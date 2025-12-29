SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[etifmt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[etifmt__](
	[fmt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[eti_vorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[radius__] [float] NOT NULL,
	[etiket_b] [float] NOT NULL,
	[etiket_h] [float] NOT NULL,
	[fmt__txt] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_comm] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [etifmti1] PRIMARY KEY CLUSTERED 
(
	[fmt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_etifmt__fmt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[etifmt__] ADD  CONSTRAINT [DF_etifmt__fmt__ref]  DEFAULT ('') FOR [fmt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_etifmt__fmt__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[etifmt__] ADD  CONSTRAINT [DF_etifmt__fmt__rpn]  DEFAULT ('') FOR [fmt__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_etifmt__eti_vorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[etifmt__] ADD  CONSTRAINT [DF_etifmt__eti_vorm]  DEFAULT ('1') FOR [eti_vorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_etifmt__radius__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[etifmt__] ADD  CONSTRAINT [DF_etifmt__radius__]  DEFAULT ((0)) FOR [radius__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_etifmt__etiket_b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[etifmt__] ADD  CONSTRAINT [DF_etifmt__etiket_b]  DEFAULT ((0)) FOR [etiket_b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_etifmt__etiket_h]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[etifmt__] ADD  CONSTRAINT [DF_etifmt__etiket_h]  DEFAULT ((0)) FOR [etiket_h]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_etifmt__fmt__txt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[etifmt__] ADD  CONSTRAINT [DF_etifmt__fmt__txt]  DEFAULT ('') FOR [fmt__txt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_etifmt__fmt_comm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[etifmt__] ADD  CONSTRAINT [DF_etifmt__fmt_comm]  DEFAULT ('') FOR [fmt_comm]
END

