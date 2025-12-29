SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4subo__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4subo__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aard____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[elm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf__oms] [nvarchar](61) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtvar__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwslist] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws___r] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afws___v] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod__r] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod__v] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[wispla_r] [int] NOT NULL,
	[wispla_v] [int] NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammage] [float] NOT NULL,
	[pages___] [int] NOT NULL,
	[gangpool] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grp__prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtpag_x] [float] NOT NULL,
	[fmtpag_y] [float] NOT NULL,
	[rug_____] [float] NOT NULL,
	[flap___v] [float] NOT NULL,
	[flap___a] [float] NOT NULL,
	[flap___b] [float] NOT NULL,
	[flap___o] [float] NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[hinge___] [float] NOT NULL,
	[fold____] [float] NOT NULL,
	[mpafgtyp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv__pag] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mgr__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [i4_sub_1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[sub__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__aard____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__aard____]  DEFAULT ('') FOR [aard____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__kpn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__kpn__srt]  DEFAULT ('') FOR [kpn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__elm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__elm__ref]  DEFAULT ('') FOR [elm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__brf__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__brf__oms]  DEFAULT ('') FOR [brf__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__fmtvar__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__fmtvar__]  DEFAULT ('') FOR [fmtvar__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__afwslist]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__afwslist]  DEFAULT ('') FOR [afwslist]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__afws___r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__afws___r]  DEFAULT ('') FOR [afws___r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__afws___v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__afws___v]  DEFAULT ('') FOR [afws___v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__klcod__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__klcod__r]  DEFAULT ('') FOR [klcod__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__klcod__v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__klcod__v]  DEFAULT ('') FOR [klcod__v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__wispla_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__wispla_r]  DEFAULT ((0)) FOR [wispla_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__wispla_v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__wispla_v]  DEFAULT ((0)) FOR [wispla_v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__grammage]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__grammage]  DEFAULT ((0)) FOR [grammage]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__pages___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__pages___]  DEFAULT ((0)) FOR [pages___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__gangpool]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__gangpool]  DEFAULT ('') FOR [gangpool]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__grp__prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__grp__prd]  DEFAULT ('') FOR [grp__prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__fmtpag_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__fmtpag_x]  DEFAULT ((0)) FOR [fmtpag_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__fmtpag_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__fmtpag_y]  DEFAULT ((0)) FOR [fmtpag_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__rug_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__rug_____]  DEFAULT ((0)) FOR [rug_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__flap___v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__flap___v]  DEFAULT ((0)) FOR [flap___v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__flap___a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__flap___a]  DEFAULT ((0)) FOR [flap___a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__flap___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__flap___b]  DEFAULT ((0)) FOR [flap___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__flap___o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__flap___o]  DEFAULT ((0)) FOR [flap___o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__hinge___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__hinge___]  DEFAULT ((0)) FOR [hinge___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__fold____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__fold____]  DEFAULT ((0)) FOR [fold____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__mpafgtyp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__mpafgtyp]  DEFAULT ('') FOR [mpafgtyp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__opv__pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__opv__pag]  DEFAULT ('') FOR [opv__pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__mgr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__mgr__ref]  DEFAULT ('') FOR [mgr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4subo__vrs__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4subo__] ADD  CONSTRAINT [DF_v4subo__vrs__typ]  DEFAULT ('') FOR [vrs__typ]
END

