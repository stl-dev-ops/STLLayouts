SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkppr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkppr__](
	[drkprref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkprrpn] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[klrboven] [int] NOT NULL,
	[klronder] [int] NOT NULL,
	[mxfmt__x] [float] NOT NULL,
	[mxfmt__y] [float] NOT NULL,
	[mnfmt__x] [float] NOT NULL,
	[mnfmt__y] [float] NOT NULL,
	[mn__gram] [float] NOT NULL,
	[mx__gram] [float] NOT NULL,
	[mn_dikte] [float] NOT NULL,
	[mx_dikte] [float] NOT NULL,
	[mxvlsomw] [float] NOT NULL,
	[grijpwit] [float] NOT NULL,
	[stripw_s] [float] NOT NULL,
	[stripwns] [float] NOT NULL,
	[zijwit_l] [float] NOT NULL,
	[zijwit_r] [float] NOT NULL,
	[omkeer__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omk__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[druktype] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[envelop_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tromtype] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reken___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[smw__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkppri1] PRIMARY KEY CLUSTERED 
(
	[drkprref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__drkprref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__drkprref]  DEFAULT ('') FOR [drkprref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__drkprrpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__drkprrpn]  DEFAULT ('') FOR [drkprrpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__blokkeer]  DEFAULT ('N') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__klrboven]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__klrboven]  DEFAULT ((0)) FOR [klrboven]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__klronder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__klronder]  DEFAULT ((0)) FOR [klronder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mxfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mxfmt__x]  DEFAULT ((0)) FOR [mxfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mxfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mxfmt__y]  DEFAULT ((0)) FOR [mxfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mnfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mnfmt__x]  DEFAULT ((0)) FOR [mnfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mnfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mnfmt__y]  DEFAULT ((0)) FOR [mnfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mn__gram]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mn__gram]  DEFAULT ((0)) FOR [mn__gram]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mx__gram]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mx__gram]  DEFAULT ((0)) FOR [mx__gram]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mn_dikte]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mn_dikte]  DEFAULT ((0)) FOR [mn_dikte]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mx_dikte]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mx_dikte]  DEFAULT ((0)) FOR [mx_dikte]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__mxvlsomw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__mxvlsomw]  DEFAULT ((0)) FOR [mxvlsomw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__grijpwit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__grijpwit]  DEFAULT ((0)) FOR [grijpwit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__stripw_s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__stripw_s]  DEFAULT ((0)) FOR [stripw_s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__stripwns]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__stripwns]  DEFAULT ((0)) FOR [stripwns]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__zijwit_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__zijwit_l]  DEFAULT ((0)) FOR [zijwit_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__zijwit_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__zijwit_r]  DEFAULT ((0)) FOR [zijwit_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__omkeer__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__omkeer__]  DEFAULT ('N') FOR [omkeer__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__omk__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__omk__typ]  DEFAULT ('0') FOR [omk__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__druktype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__druktype]  DEFAULT ('1') FOR [druktype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__envelop_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__envelop_]  DEFAULT ('N') FOR [envelop_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__tromtype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__tromtype]  DEFAULT ('0') FOR [tromtype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__reken___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__reken___]  DEFAULT ('1') FOR [reken___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__smw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__smw__ref]  DEFAULT ('') FOR [smw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkppr__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkppr__] ADD  CONSTRAINT [DF_drkppr__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

