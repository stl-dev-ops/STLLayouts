SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kpncum__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kpncum__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lonen_ok] [float] NOT NULL,
	[machi_ok] [float] NOT NULL,
	[overh_ok] [float] NOT NULL,
	[afsch_ok] [float] NOT NULL,
	[duur__ok] [int] NOT NULL,
	[lonen_hd] [float] NOT NULL,
	[machi_hd] [float] NOT NULL,
	[overh_hd] [float] NOT NULL,
	[afsch_hd] [float] NOT NULL,
	[duur__hd] [int] NOT NULL,
	[lonen_sp] [float] NOT NULL,
	[machi_sp] [float] NOT NULL,
	[overh_sp] [float] NOT NULL,
	[afsch_sp] [float] NOT NULL,
	[duur__sp] [int] NOT NULL,
	[papie_ok] [float] NOT NULL,
	[grdvrbok] [float] NOT NULL,
	[papie_hd] [float] NOT NULL,
	[grdvrbhd] [float] NOT NULL,
	[papie_sp] [float] NOT NULL,
	[grdvrbsp] [float] NOT NULL,
	[ondaan__] [float] NOT NULL,
	[ondaanhd] [float] NOT NULL,
	[ondaansp] [float] NOT NULL,
	[markt_ok] [float] NOT NULL,
	[markt_hd] [float] NOT NULL,
	[markt_sp] [float] NOT NULL,
	[stat__01] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__02] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__11] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__12] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__13] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__21] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__31] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__32] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__33] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__34] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__35] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__36] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__61] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stat__62] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [kpncumi1] PRIMARY KEY CLUSTERED 
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[kpncum__]') AND name = N'kpncumi2')
CREATE NONCLUSTERED INDEX [kpncumi2] ON [dbo].[kpncum__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__lonen_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__lonen_ok]  DEFAULT ((0)) FOR [lonen_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__machi_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__machi_ok]  DEFAULT ((0)) FOR [machi_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__overh_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__overh_ok]  DEFAULT ((0)) FOR [overh_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__afsch_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__afsch_ok]  DEFAULT ((0)) FOR [afsch_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__duur__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__duur__ok]  DEFAULT ((0)) FOR [duur__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__lonen_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__lonen_hd]  DEFAULT ((0)) FOR [lonen_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__machi_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__machi_hd]  DEFAULT ((0)) FOR [machi_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__overh_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__overh_hd]  DEFAULT ((0)) FOR [overh_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__afsch_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__afsch_hd]  DEFAULT ((0)) FOR [afsch_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__duur__hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__duur__hd]  DEFAULT ((0)) FOR [duur__hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__lonen_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__lonen_sp]  DEFAULT ((0)) FOR [lonen_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__machi_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__machi_sp]  DEFAULT ((0)) FOR [machi_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__overh_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__overh_sp]  DEFAULT ((0)) FOR [overh_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__afsch_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__afsch_sp]  DEFAULT ((0)) FOR [afsch_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__duur__sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__duur__sp]  DEFAULT ((0)) FOR [duur__sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__papie_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__papie_ok]  DEFAULT ((0)) FOR [papie_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__grdvrbok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__grdvrbok]  DEFAULT ((0)) FOR [grdvrbok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__papie_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__papie_hd]  DEFAULT ((0)) FOR [papie_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__grdvrbhd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__grdvrbhd]  DEFAULT ((0)) FOR [grdvrbhd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__papie_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__papie_sp]  DEFAULT ((0)) FOR [papie_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__grdvrbsp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__grdvrbsp]  DEFAULT ((0)) FOR [grdvrbsp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__ondaan__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__ondaan__]  DEFAULT ((0)) FOR [ondaan__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__ondaanhd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__ondaanhd]  DEFAULT ((0)) FOR [ondaanhd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__ondaansp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__ondaansp]  DEFAULT ((0)) FOR [ondaansp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__markt_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__markt_ok]  DEFAULT ((0)) FOR [markt_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__markt_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__markt_hd]  DEFAULT ((0)) FOR [markt_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__markt_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__markt_sp]  DEFAULT ((0)) FOR [markt_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__01]  DEFAULT ('') FOR [stat__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__02]  DEFAULT ('') FOR [stat__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__11]  DEFAULT ('') FOR [stat__11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__12]  DEFAULT ('') FOR [stat__12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__13]  DEFAULT ('') FOR [stat__13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__21]  DEFAULT ('') FOR [stat__21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__31]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__31]  DEFAULT ('') FOR [stat__31]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__32]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__32]  DEFAULT ('') FOR [stat__32]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__33]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__33]  DEFAULT ('') FOR [stat__33]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__34]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__34]  DEFAULT ('') FOR [stat__34]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__35]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__35]  DEFAULT ('') FOR [stat__35]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__36]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__36]  DEFAULT ('') FOR [stat__36]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__61]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__61]  DEFAULT ('') FOR [stat__61]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_kpncum__stat__62]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[kpncum__] ADD  CONSTRAINT [DF_kpncum__stat__62]  DEFAULT ('') FOR [stat__62]
END

