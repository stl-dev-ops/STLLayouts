SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisvok__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisvok__](
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__kst] [date] NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[iscalkst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stvokref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[lonen___] [float] NOT NULL,
	[machi___] [float] NOT NULL,
	[overh___] [float] NOT NULL,
	[papie___] [float] NOT NULL,
	[grdvb___] [float] NOT NULL,
	[oa______] [float] NOT NULL,
	[verkoop_] [float] NOT NULL,
	[adm_kost] [float] NOT NULL,
	[total___] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisvoki1] PRIMARY KEY CLUSTERED 
(
	[ord__ref] ASC,
	[vok__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hisvok__]') AND name = N'hisvoki2')
CREATE NONCLUSTERED INDEX [hisvoki2] ON [dbo].[hisvok__]
(
	[dat__kst] ASC,
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__vok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__vok__ref]  DEFAULT ('') FOR [vok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__dat__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__dat__kst]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__iscalkst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__iscalkst]  DEFAULT ('') FOR [iscalkst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__stvokref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__stvokref]  DEFAULT ('') FOR [stvokref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__lonen___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__lonen___]  DEFAULT ((0)) FOR [lonen___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__machi___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__machi___]  DEFAULT ((0)) FOR [machi___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__overh___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__overh___]  DEFAULT ((0)) FOR [overh___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__papie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__papie___]  DEFAULT ((0)) FOR [papie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__grdvb___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__grdvb___]  DEFAULT ((0)) FOR [grdvb___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__oa______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__oa______]  DEFAULT ((0)) FOR [oa______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__verkoop_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__verkoop_]  DEFAULT ((0)) FOR [verkoop_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__adm_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__adm_kost]  DEFAULT ((0)) FOR [adm_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisvok__total___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisvok__] ADD  CONSTRAINT [DF_hisvok__total___]  DEFAULT ((0)) FOR [total___]
END

