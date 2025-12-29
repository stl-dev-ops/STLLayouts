SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ordafd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ordafd__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omloop__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[laat_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[laat_dat] [date] NOT NULL,
	[volledig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dok__dat] [date] NOT NULL,
	[prod____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod_dat] [date] NOT NULL,
	[clot_dat] [date] NOT NULL,
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
	[vkp_kost] [float] NOT NULL,
	[adm_kost] [float] NOT NULL,
	[adm___hd] [float] NOT NULL,
	[adm___sp] [float] NOT NULL,
	[markt_ok] [float] NOT NULL,
	[markt_hd] [float] NOT NULL,
	[markt_sp] [float] NOT NULL,
	[gefakt__] [float] NOT NULL,
	[stock___] [float] NOT NULL,
	[wio___yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ordafdi1] PRIMARY KEY CLUSTERED 
(
	[ord__ref] ASC,
	[afd__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordafd__]') AND name = N'ordafdi2')
CREATE UNIQUE NONCLUSTERED INDEX [ordafdi2] ON [dbo].[ordafd__]
(
	[afd__ref] ASC,
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ordafd__]') AND name = N'ordafdi3')
CREATE UNIQUE NONCLUSTERED INDEX [ordafdi3] ON [dbo].[ordafd__]
(
	[afd__ref] ASC,
	[wio___yn] ASC,
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__omloop__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__omloop__]  DEFAULT ('') FOR [omloop__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__laat_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__laat_srt]  DEFAULT ('') FOR [laat_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__laat_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__laat_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [laat_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__volledig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__volledig]  DEFAULT ('') FOR [volledig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__dok__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__dok__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dok__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__prod____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__prod____]  DEFAULT ('') FOR [prod____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__prod_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__prod_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [prod_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__clot_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__clot_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [clot_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__lonen_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__lonen_ok]  DEFAULT ((0)) FOR [lonen_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__machi_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__machi_ok]  DEFAULT ((0)) FOR [machi_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__overh_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__overh_ok]  DEFAULT ((0)) FOR [overh_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__afsch_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__afsch_ok]  DEFAULT ((0)) FOR [afsch_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__duur__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__duur__ok]  DEFAULT ((0)) FOR [duur__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__lonen_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__lonen_hd]  DEFAULT ((0)) FOR [lonen_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__machi_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__machi_hd]  DEFAULT ((0)) FOR [machi_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__overh_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__overh_hd]  DEFAULT ((0)) FOR [overh_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__afsch_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__afsch_hd]  DEFAULT ((0)) FOR [afsch_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__duur__hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__duur__hd]  DEFAULT ((0)) FOR [duur__hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__lonen_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__lonen_sp]  DEFAULT ((0)) FOR [lonen_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__machi_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__machi_sp]  DEFAULT ((0)) FOR [machi_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__overh_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__overh_sp]  DEFAULT ((0)) FOR [overh_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__afsch_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__afsch_sp]  DEFAULT ((0)) FOR [afsch_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__duur__sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__duur__sp]  DEFAULT ((0)) FOR [duur__sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__papie_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__papie_ok]  DEFAULT ((0)) FOR [papie_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__grdvrbok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__grdvrbok]  DEFAULT ((0)) FOR [grdvrbok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__papie_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__papie_hd]  DEFAULT ((0)) FOR [papie_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__grdvrbhd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__grdvrbhd]  DEFAULT ((0)) FOR [grdvrbhd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__papie_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__papie_sp]  DEFAULT ((0)) FOR [papie_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__grdvrbsp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__grdvrbsp]  DEFAULT ((0)) FOR [grdvrbsp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__ondaan__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__ondaan__]  DEFAULT ((0)) FOR [ondaan__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__ondaanhd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__ondaanhd]  DEFAULT ((0)) FOR [ondaanhd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__ondaansp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__ondaansp]  DEFAULT ((0)) FOR [ondaansp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__vkp_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__vkp_kost]  DEFAULT ((0)) FOR [vkp_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__adm_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__adm_kost]  DEFAULT ((0)) FOR [adm_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__adm___hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__adm___hd]  DEFAULT ((0)) FOR [adm___hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__adm___sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__adm___sp]  DEFAULT ((0)) FOR [adm___sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__markt_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__markt_ok]  DEFAULT ((0)) FOR [markt_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__markt_hd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__markt_hd]  DEFAULT ((0)) FOR [markt_hd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__markt_sp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__markt_sp]  DEFAULT ((0)) FOR [markt_sp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__gefakt__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__gefakt__]  DEFAULT ((0)) FOR [gefakt__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__stock___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__stock___]  DEFAULT ((0)) FOR [stock___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ordafd__wio___yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ordafd__] ADD  CONSTRAINT [DF_ordafd__wio___yn]  DEFAULT ('') FOR [wio___yn]
END

