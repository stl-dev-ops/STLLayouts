SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkafs__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkafs__](
	[afws_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[res__oms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp1srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwp2srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw_line] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw1line] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw2line] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afw_zyde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_opv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwg_vrb] [float] NOT NULL,
	[afwm_opv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwm_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___1] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___2] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___3] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___4] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___5] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___6] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___7] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___8] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal___9] [nvarchar](65) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkafsi1] PRIMARY KEY CLUSTERED 
(
	[afws_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afws_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afws_ref]  DEFAULT ('') FOR [afws_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afws_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afws_rpn]  DEFAULT ('') FOR [afws_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__res__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__res__oms]  DEFAULT ('') FOR [res__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__type____]  DEFAULT ('0') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afwp_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afwp_srt]  DEFAULT ('0') FOR [afwp_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afwp1srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afwp1srt]  DEFAULT ('0') FOR [afwp1srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afwp2srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afwp2srt]  DEFAULT ('0') FOR [afwp2srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afw_line]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afw_line]  DEFAULT ('0') FOR [afw_line]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afw1line]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afw1line]  DEFAULT ('0') FOR [afw1line]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afw2line]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afw2line]  DEFAULT ('0') FOR [afw2line]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afw_zyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afw_zyde]  DEFAULT ('0') FOR [afw_zyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afwg_opv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afwg_opv]  DEFAULT ('N') FOR [afwg_opv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afwg_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afwg_ref]  DEFAULT ('') FOR [afwg_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afwg_vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afwg_vrb]  DEFAULT ((0)) FOR [afwg_vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afwm_opv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afwm_opv]  DEFAULT ('N') FOR [afwm_opv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__afwm_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__afwm_ref]  DEFAULT ('') FOR [afwm_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__in_brief]  DEFAULT ('Y') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___1]  DEFAULT ('') FOR [taal___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___2]  DEFAULT ('') FOR [taal___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___3]  DEFAULT ('') FOR [taal___3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___4]  DEFAULT ('') FOR [taal___4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___5]  DEFAULT ('') FOR [taal___5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___6]  DEFAULT ('') FOR [taal___6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___7]  DEFAULT ('') FOR [taal___7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___8]  DEFAULT ('') FOR [taal___8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkafs__taal___9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkafs__] ADD  CONSTRAINT [DF_drkafs__taal___9]  DEFAULT ('') FOR [taal___9]
END

