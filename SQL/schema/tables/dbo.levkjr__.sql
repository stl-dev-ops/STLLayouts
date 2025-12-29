SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[levkjr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[levkjr__](
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kjaar___] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_bm] [float] NOT NULL,
	[omzet_vm] [float] NOT NULL,
	[directbm] [float] NOT NULL,
	[directvm] [float] NOT NULL,
	[grd___bm] [float] NOT NULL,
	[grd___vm] [float] NOT NULL,
	[wdd___bm] [float] NOT NULL,
	[wdd___vm] [float] NOT NULL,
	[trn___bm] [float] NOT NULL,
	[trn___vm] [float] NOT NULL,
	[afg___bm] [float] NOT NULL,
	[afg___vm] [float] NOT NULL,
	[toc___bm] [float] NOT NULL,
	[toc___vm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [levkjri0] PRIMARY KEY CLUSTERED 
(
	[kjaar___] ASC,
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__kjaar___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__kjaar___]  DEFAULT ('') FOR [kjaar___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__omzet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__omzet_bm]  DEFAULT ((0)) FOR [omzet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__omzet_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__omzet_vm]  DEFAULT ((0)) FOR [omzet_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__directbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__directbm]  DEFAULT ((0)) FOR [directbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__directvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__directvm]  DEFAULT ((0)) FOR [directvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__grd___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__grd___bm]  DEFAULT ((0)) FOR [grd___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__grd___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__grd___vm]  DEFAULT ((0)) FOR [grd___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__wdd___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__wdd___bm]  DEFAULT ((0)) FOR [wdd___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__wdd___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__wdd___vm]  DEFAULT ((0)) FOR [wdd___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__trn___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__trn___bm]  DEFAULT ((0)) FOR [trn___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__trn___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__trn___vm]  DEFAULT ((0)) FOR [trn___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__afg___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__afg___bm]  DEFAULT ((0)) FOR [afg___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__afg___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__afg___vm]  DEFAULT ((0)) FOR [afg___vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__toc___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__toc___bm]  DEFAULT ((0)) FOR [toc___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_levkjr__toc___vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[levkjr__] ADD  CONSTRAINT [DF_levkjr__toc___vm]  DEFAULT ((0)) FOR [toc___vm]
END

