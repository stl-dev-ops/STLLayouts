SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2kdvl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2kdvl__](
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aard____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_brief] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pagbrief] [int] NOT NULL,
	[vwm__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtpag_x] [float] NOT NULL,
	[fmtpag_y] [float] NOT NULL,
	[fmt_open] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_gesl] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmt_comm] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[rug_____] [float] NOT NULL,
	[flap___v] [float] NOT NULL,
	[flap___a] [float] NOT NULL,
	[flap___b] [float] NOT NULL,
	[flap___o] [float] NOT NULL,
	[hinge___] [float] NOT NULL,
	[fold____] [float] NOT NULL,
	[lpr__vwm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afloop__] [float] NOT NULL,
	[vls__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[verliesx] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[verliesy] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[smw__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod__r] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod__v] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[drkprref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[imp__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtimp_x] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[fmtimp_y] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[keervorm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omkeer__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rotated_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opv__pag] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[envelop_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[posvrhou] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[posvrho1] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[wsl1comm] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[wsl2comm] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[par_calc] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[imp__ort] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[omk__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2kdvli1] PRIMARY KEY CLUSTERED 
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kdvl__]') AND name = N'v2kdvli2')
CREATE NONCLUSTERED INDEX [v2kdvli2] ON [dbo].[v2kdvl__]
(
	[off__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__kpn__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__kpn__vnr]  DEFAULT ('') FOR [kpn__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__aard____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__aard____]  DEFAULT ('') FOR [aard____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__in_brief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__in_brief]  DEFAULT ('') FOR [in_brief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__pagbrief]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__pagbrief]  DEFAULT ((0)) FOR [pagbrief]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__vwm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__vwm__ref]  DEFAULT ('') FOR [vwm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__fmtpag_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__fmtpag_x]  DEFAULT ((0)) FOR [fmtpag_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__fmtpag_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__fmtpag_y]  DEFAULT ((0)) FOR [fmtpag_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__fmt_open]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__fmt_open]  DEFAULT ('') FOR [fmt_open]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__fmt_gesl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__fmt_gesl]  DEFAULT ('') FOR [fmt_gesl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__fmt_comm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__fmt_comm]  DEFAULT ('') FOR [fmt_comm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__rug_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__rug_____]  DEFAULT ((0)) FOR [rug_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__flap___v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__flap___v]  DEFAULT ((0)) FOR [flap___v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__flap___a]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__flap___a]  DEFAULT ((0)) FOR [flap___a]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__flap___b]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__flap___b]  DEFAULT ((0)) FOR [flap___b]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__flap___o]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__flap___o]  DEFAULT ((0)) FOR [flap___o]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__hinge___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__hinge___]  DEFAULT ((0)) FOR [hinge___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__fold____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__fold____]  DEFAULT ((0)) FOR [fold____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__lpr__vwm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__lpr__vwm]  DEFAULT ('') FOR [lpr__vwm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__afloop__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__afloop__]  DEFAULT ((0)) FOR [afloop__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__vls__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__vls__ref]  DEFAULT ('') FOR [vls__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__verliesx]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__verliesx]  DEFAULT ('') FOR [verliesx]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__verliesy]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__verliesy]  DEFAULT ('') FOR [verliesy]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__smw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__smw__ref]  DEFAULT ('') FOR [smw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__klcod__r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__klcod__r]  DEFAULT ('') FOR [klcod__r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__klcod__v]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__klcod__v]  DEFAULT ('') FOR [klcod__v]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__drkprref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__drkprref]  DEFAULT ('') FOR [drkprref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__imp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__imp__ref]  DEFAULT ('') FOR [imp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__fmtimp_x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__fmtimp_x]  DEFAULT ('') FOR [fmtimp_x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__fmtimp_y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__fmtimp_y]  DEFAULT ('') FOR [fmtimp_y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__keervorm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__keervorm]  DEFAULT ('') FOR [keervorm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__omkeer__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__omkeer__]  DEFAULT ('') FOR [omkeer__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__rotated_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__rotated_]  DEFAULT ('') FOR [rotated_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__opv__pag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__opv__pag]  DEFAULT ('') FOR [opv__pag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__envelop_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__envelop_]  DEFAULT ('') FOR [envelop_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__posvrhou]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__posvrhou]  DEFAULT ('') FOR [posvrhou]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__posvrho1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__posvrho1]  DEFAULT ('') FOR [posvrho1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__wsl1comm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__wsl1comm]  DEFAULT ('') FOR [wsl1comm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__wsl2comm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__wsl2comm]  DEFAULT ('') FOR [wsl2comm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__par_calc]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__par_calc]  DEFAULT ('') FOR [par_calc]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__imp__ort]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__imp__ort]  DEFAULT ('') FOR [imp__ort]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__omk__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__omk__typ]  DEFAULT ('') FOR [omk__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kdvl__vrs__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kdvl__] ADD  CONSTRAINT [DF_v2kdvl__vrs__typ]  DEFAULT ('') FOR [vrs__typ]
END

