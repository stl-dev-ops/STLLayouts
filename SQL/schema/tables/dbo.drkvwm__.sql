SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkvwm__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkvwm__](
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv__pag] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srt__pag] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vouwen__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[envelop_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lpr__vwm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plano___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rotatie_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[label___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kaft____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dvl__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[value__x] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[value__y] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[image__x] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[image__y] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vouwzyde] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grijpers] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_fcat] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_cell] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prodtype] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[aut__sny] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[orienjdf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx__vwm] PRIMARY KEY CLUSTERED 
(
	[vwm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__vwm__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__vwm__oms]  DEFAULT ('') FOR [vwm__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__vwm__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__vwm__rpn]  DEFAULT ('') FOR [vwm__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__kommen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__kommen__]  DEFAULT ('') FOR [kommen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__opv__pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__opv__pag]  DEFAULT ('N') FOR [opv__pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__srt__pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__srt__pag]  DEFAULT ('1') FOR [srt__pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__vouwen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__vouwen__]  DEFAULT ('N') FOR [vouwen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__envelop_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__envelop_]  DEFAULT ('N') FOR [envelop_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__lpr__vwm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__lpr__vwm]  DEFAULT ('3') FOR [lpr__vwm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__plano___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__plano___]  DEFAULT ('Y') FOR [plano___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__rotatie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__rotatie_]  DEFAULT ('Y') FOR [rotatie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__label___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__label___]  DEFAULT ('Y') FOR [label___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__kaft____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__kaft____]  DEFAULT ('N') FOR [kaft____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__dvl__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__dvl__oms]  DEFAULT ('') FOR [dvl__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__value__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__value__x]  DEFAULT ('') FOR [value__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__value__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__value__y]  DEFAULT ('') FOR [value__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__image__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__image__x]  DEFAULT ('') FOR [image__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__image__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__image__y]  DEFAULT ('') FOR [image__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__vouwzyde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__vouwzyde]  DEFAULT ('1') FOR [vouwzyde]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__grijpers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__grijpers]  DEFAULT ('0') FOR [grijpers]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__jdf_fcat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__jdf_fcat]  DEFAULT ('') FOR [jdf_fcat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__jdf_cell]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__jdf_cell]  DEFAULT ('0') FOR [jdf_cell]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__prodtype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__prodtype]  DEFAULT ('') FOR [prodtype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__jdf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__jdf__oms]  DEFAULT ('') FOR [jdf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__aut__sny]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__aut__sny]  DEFAULT ('N') FOR [aut__sny]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkvwm__orienjdf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkvwm__] ADD  CONSTRAINT [DF_drkvwm__orienjdf]  DEFAULT ('0') FOR [orienjdf]
END

