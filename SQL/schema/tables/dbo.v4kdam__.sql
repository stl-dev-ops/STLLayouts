SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4kdam__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4kdam__](
	[dam__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtpag_x] [float] NOT NULL,
	[fmtpag_y] [float] NOT NULL,
	[rug_____] [float] NOT NULL,
	[flap___v] [float] NOT NULL,
	[flap___a] [float] NOT NULL,
	[flap___b] [float] NOT NULL,
	[flap___o] [float] NOT NULL,
	[hinge___] [float] NOT NULL,
	[fold____] [float] NOT NULL,
	[verliesx] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[verliesy] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_open] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_gesl] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_comm] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[lnk__ref] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[opp__pct] [float] NOT NULL,
	[vrs__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[var__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lpr__vwm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[spacingx] [float] NOT NULL,
	[spacingy] [float] NOT NULL,
	[klcod__r] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod__v] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[kldet__r] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[kldet__v] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[tmpl_ref] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[color___] [int] NOT NULL,
	[position] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwslist] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwglist] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v4kdami1] PRIMARY KEY CLUSTERED 
(
	[dam__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4kdam__]') AND name = N'v4kdami2')
CREATE NONCLUSTERED INDEX [v4kdami2] ON [dbo].[v4kdam__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4kdam__]') AND name = N'v4kdami3')
CREATE NONCLUSTERED INDEX [v4kdami3] ON [dbo].[v4kdam__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__dam__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__dam__ref]  DEFAULT ('') FOR [dam__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__fmtpag_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__fmtpag_x]  DEFAULT ((0)) FOR [fmtpag_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__fmtpag_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__fmtpag_y]  DEFAULT ((0)) FOR [fmtpag_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__rug_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__rug_____]  DEFAULT ((0)) FOR [rug_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__flap___v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__flap___v]  DEFAULT ((0)) FOR [flap___v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__flap___a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__flap___a]  DEFAULT ((0)) FOR [flap___a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__flap___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__flap___b]  DEFAULT ((0)) FOR [flap___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__flap___o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__flap___o]  DEFAULT ((0)) FOR [flap___o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__hinge___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__hinge___]  DEFAULT ((0)) FOR [hinge___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__fold____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__fold____]  DEFAULT ((0)) FOR [fold____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__verliesx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__verliesx]  DEFAULT ('') FOR [verliesx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__verliesy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__verliesy]  DEFAULT ('') FOR [verliesy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__fmt_open]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__fmt_open]  DEFAULT ('') FOR [fmt_open]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__fmt_gesl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__fmt_gesl]  DEFAULT ('') FOR [fmt_gesl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__fmt_comm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__fmt_comm]  DEFAULT ('') FOR [fmt_comm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__lnk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__lnk__ref]  DEFAULT ('') FOR [lnk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__opp__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__opp__pct]  DEFAULT ((0)) FOR [opp__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__var__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__var__ref]  DEFAULT ('') FOR [var__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__lpr__vwm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__lpr__vwm]  DEFAULT ('') FOR [lpr__vwm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__spacingx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__spacingx]  DEFAULT ((0)) FOR [spacingx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__spacingy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__spacingy]  DEFAULT ((0)) FOR [spacingy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__klcod__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__klcod__r]  DEFAULT ('') FOR [klcod__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__klcod__v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__klcod__v]  DEFAULT ('') FOR [klcod__v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__kldet__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__kldet__r]  DEFAULT ('') FOR [kldet__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__kldet__v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__kldet__v]  DEFAULT ('') FOR [kldet__v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__tmpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__tmpl_ref]  DEFAULT ('') FOR [tmpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__color___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__color___]  DEFAULT ((0)) FOR [color___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__position]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__position]  DEFAULT ('') FOR [position]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__afwslist]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__afwslist]  DEFAULT ('') FOR [afwslist]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4kdam__afwglist]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4kdam__] ADD  CONSTRAINT [DF_v4kdam__afwglist]  DEFAULT ('') FOR [afwglist]
END

