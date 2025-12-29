SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2kkst__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2kkst__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[det__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstb_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[duur___i] [int] NOT NULL,
	[duur___c] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[papier__] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[total___] [float] NOT NULL,
	[lonen__t] [float] NOT NULL,
	[machi__t] [float] NOT NULL,
	[overh__t] [float] NOT NULL,
	[papier_t] [float] NOT NULL,
	[grdvb__t] [float] NOT NULL,
	[oa_____t] [float] NOT NULL,
	[total__t] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2kksti0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kkst__]') AND name = N'v2kksti1')
CREATE NONCLUSTERED INDEX [v2kksti1] ON [dbo].[v2kkst__]
(
	[off__ref] ASC,
	[kst__typ] ASC,
	[kst__srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v2kkst__]') AND name = N'v2kksti2')
CREATE NONCLUSTERED INDEX [v2kksti2] ON [dbo].[v2kkst__]
(
	[det__ref] ASC,
	[kst__typ] ASC,
	[kst__srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__kst__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__kst__typ]  DEFAULT ('') FOR [kst__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__det__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__det__ref]  DEFAULT ('') FOR [det__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__kstb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__kstb_ref]  DEFAULT ('') FOR [kstb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__kst__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__kst__srt]  DEFAULT ('') FOR [kst__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__duur___i]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__duur___i]  DEFAULT ((0)) FOR [duur___i]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__duur___c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__duur___c]  DEFAULT ('') FOR [duur___c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__papier__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__papier__]  DEFAULT ((0)) FOR [papier__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__total___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__total___]  DEFAULT ((0)) FOR [total___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__lonen__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__lonen__t]  DEFAULT ((0)) FOR [lonen__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__machi__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__machi__t]  DEFAULT ((0)) FOR [machi__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__overh__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__overh__t]  DEFAULT ((0)) FOR [overh__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__papier_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__papier_t]  DEFAULT ((0)) FOR [papier_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__grdvb__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__grdvb__t]  DEFAULT ((0)) FOR [grdvb__t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__oa_____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__oa_____t]  DEFAULT ((0)) FOR [oa_____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2kkst__total__t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2kkst__] ADD  CONSTRAINT [DF_v2kkst__total__t]  DEFAULT ((0)) FOR [total__t]
END

