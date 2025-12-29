SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2krub__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2krub__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[duur___i] [int] NOT NULL,
	[duur___c] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[grdvb_t_] [float] NOT NULL,
	[oa____t_] [float] NOT NULL,
	[total___] [float] NOT NULL,
	[markt___] [float] NOT NULL,
	[lonen_t_] [float] NOT NULL,
	[machi_t_] [float] NOT NULL,
	[overh_t_] [float] NOT NULL,
	[total_t_] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2krubi1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[kpn__ref] ASC,
	[sub__ref] ASC,
	[rbk__ref] ASC,
	[kst__srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__kst__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__kst__srt]  DEFAULT ('') FOR [kst__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__duur___i]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__duur___i]  DEFAULT ((0)) FOR [duur___i]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__duur___c]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__duur___c]  DEFAULT ('') FOR [duur___c]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__grdvb_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__grdvb_t_]  DEFAULT ((0)) FOR [grdvb_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__oa____t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__oa____t_]  DEFAULT ((0)) FOR [oa____t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__total___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__total___]  DEFAULT ((0)) FOR [total___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__markt___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__markt___]  DEFAULT ((0)) FOR [markt___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__lonen_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__lonen_t_]  DEFAULT ((0)) FOR [lonen_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__machi_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__machi_t_]  DEFAULT ((0)) FOR [machi_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__overh_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__overh_t_]  DEFAULT ((0)) FOR [overh_t_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2krub__total_t_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2krub__] ADD  CONSTRAINT [DF_v2krub__total_t_]  DEFAULT ((0)) FOR [total_t_]
END

