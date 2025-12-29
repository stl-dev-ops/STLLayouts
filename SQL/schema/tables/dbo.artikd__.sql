SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[artikd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[artikd__](
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_stock] [float] NOT NULL,
	[in___qrt] [float] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vaks_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak2_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pal__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__qrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levdat__] [date] NOT NULL,
	[levuur__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[besteld_] [float] NOT NULL,
	[komment_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[komm_qrt] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnrlev] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[nakprijs] [float] NOT NULL,
	[validdat] [date] NOT NULL,
	[joins___] [int] NOT NULL,
	[core____] [float] NOT NULL,
	[face____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [artikdi1] PRIMARY KEY CLUSTERED 
(
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artikd__]') AND name = N'artikdi2')
CREATE UNIQUE NONCLUSTERED INDEX [artikdi2] ON [dbo].[artikd__]
(
	[art__ref] ASC,
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artikd__]') AND name = N'artikdi3')
CREATE NONCLUSTERED INDEX [artikdi3] ON [dbo].[artikd__]
(
	[vak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[artikd__]') AND name = N'artikdi4')
CREATE NONCLUSTERED INDEX [artikdi4] ON [dbo].[artikd__]
(
	[zyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__in_stock]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__in_stock]  DEFAULT ((0)) FOR [in_stock]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__in___qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__in___qrt]  DEFAULT ((0)) FOR [in___qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__vaks_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__vaks_ref]  DEFAULT ('') FOR [vaks_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__vak2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__vak2_ref]  DEFAULT ('') FOR [vak2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__pal__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__pal__ref]  DEFAULT ('') FOR [pal__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__tst__qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__tst__qrt]  DEFAULT ('1') FOR [tst__qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__levdat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__levdat__]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levdat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__levuur__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__levuur__]  DEFAULT ('  0:00') FOR [levuur__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__besteld_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__besteld_]  DEFAULT ((0)) FOR [besteld_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__komm_qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__komm_qrt]  DEFAULT ('') FOR [komm_qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__jobnrlev]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__jobnrlev]  DEFAULT ('') FOR [jobnrlev]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__nakprijs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__nakprijs]  DEFAULT ((0)) FOR [nakprijs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__validdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__validdat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [validdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__joins___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__joins___]  DEFAULT ((0)) FOR [joins___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__core____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__core____]  DEFAULT ((0)) FOR [core____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_artikd__face____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[artikd__] ADD  CONSTRAINT [DF_artikd__face____]  DEFAULT ('') FOR [face____]
END

