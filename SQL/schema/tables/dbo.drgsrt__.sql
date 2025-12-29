SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drgsrt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drgsrt__](
	[srt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__cod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__rpn] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [float] NOT NULL,
	[diktemic] [float] NOT NULL,
	[klr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[digmedrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drgsrti1] PRIMARY KEY CLUSTERED 
(
	[srt__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__srt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__srt__ref]  DEFAULT ('') FOR [srt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__srt__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__srt__rpn]  DEFAULT ('') FOR [srt__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__typ__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__typ__ref]  DEFAULT ('') FOR [typ__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__typ__cod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__typ__cod]  DEFAULT ('1') FOR [typ__cod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__typ__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__typ__rpn]  DEFAULT ('') FOR [typ__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__srt__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__srt__oms]  DEFAULT ('') FOR [srt__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__grammage]  DEFAULT ((0)) FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__diktemic]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__diktemic]  DEFAULT ((0)) FOR [diktemic]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__klr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__klr__ref]  DEFAULT ('') FOR [klr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drgsrt__digmedrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drgsrt__] ADD  CONSTRAINT [DF_drgsrt__digmedrf]  DEFAULT ('') FOR [digmedrf]
END

