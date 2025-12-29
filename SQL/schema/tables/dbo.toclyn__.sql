SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[toclyn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[toclyn__](
	[toc__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[tocd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[lev__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [toclyni1] PRIMARY KEY CLUSTERED 
(
	[toc__ref] ASC,
	[tocd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__toc__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__toc__ref]  DEFAULT ('') FOR [toc__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__tocd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__tocd_ref]  DEFAULT ('') FOR [tocd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__levr_vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__levr_vnr]  DEFAULT ('') FOR [levr_vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__lev__tst]  DEFAULT ('') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_toclyn__grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[toclyn__] ADD  CONSTRAINT [DF_toclyn__grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

