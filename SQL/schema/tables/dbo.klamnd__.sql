SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klamnd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klamnd__](
	[kjaar___] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[maand___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzet_bm] [float] NOT NULL,
	[omzet_vm] [float] NOT NULL,
	[omzet_om] [float] NOT NULL,
	[omzet_eu] [float] NOT NULL,
	[voorz_bd] [float] NOT NULL,
	[omzofkbm] [float] NOT NULL,
	[omzfafbm] [float] NOT NULL,
	[omzavkbm] [float] NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw___nr] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrzm_kla] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[omzor_bm] [float] NOT NULL,
	[komor_bm] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [klmd_id1] PRIMARY KEY CLUSTERED 
(
	[kjaar___] ASC,
	[maand___] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__kjaar___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__kjaar___]  DEFAULT ('') FOR [kjaar___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__maand___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__maand___]  DEFAULT ('') FOR [maand___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__omzet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__omzet_bm]  DEFAULT ((0)) FOR [omzet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__omzet_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__omzet_vm]  DEFAULT ((0)) FOR [omzet_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__omzet_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__omzet_om]  DEFAULT ((0)) FOR [omzet_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__omzet_eu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__omzet_eu]  DEFAULT ((0)) FOR [omzet_eu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__voorz_bd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__voorz_bd]  DEFAULT ((0)) FOR [voorz_bd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__omzofkbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__omzofkbm]  DEFAULT ((0)) FOR [omzofkbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__omzfafbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__omzfafbm]  DEFAULT ((0)) FOR [omzfafbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__omzavkbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__omzavkbm]  DEFAULT ((0)) FOR [omzavkbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__vrzm_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__vrzm_kla]  DEFAULT ('') FOR [vrzm_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__omzor_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__omzor_bm]  DEFAULT ((0)) FOR [omzor_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klamnd__komor_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klamnd__] ADD  CONSTRAINT [DF_klamnd__komor_bm]  DEFAULT ((0)) FOR [komor_bm]
END

