SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klaper__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klaper__](
	[bkj__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[peri_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[ejk___bm] [float] NOT NULL,
	[mkl___bm] [float] NOT NULL,
	[and___bm] [float] NOT NULL,
	[and__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[zkc___bm] [float] NOT NULL,
	[zkc__man] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [klpe_id1] PRIMARY KEY CLUSTERED 
(
	[bkj__ref] ASC,
	[peri_ref] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__bkj__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__bkj__ref]  DEFAULT ('') FOR [bkj__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__peri_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__peri_ref]  DEFAULT ('') FOR [peri_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__omzet_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__omzet_bm]  DEFAULT ((0)) FOR [omzet_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__omzet_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__omzet_vm]  DEFAULT ((0)) FOR [omzet_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__omzet_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__omzet_om]  DEFAULT ((0)) FOR [omzet_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__omzet_eu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__omzet_eu]  DEFAULT ((0)) FOR [omzet_eu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__voorz_bd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__voorz_bd]  DEFAULT ((0)) FOR [voorz_bd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__omzofkbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__omzofkbm]  DEFAULT ((0)) FOR [omzofkbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__omzfafbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__omzfafbm]  DEFAULT ((0)) FOR [omzfafbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__omzavkbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__omzavkbm]  DEFAULT ((0)) FOR [omzavkbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__btw___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__btw___nr]  DEFAULT ('') FOR [btw___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__vrzm_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__vrzm_kla]  DEFAULT ('') FOR [vrzm_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__omzor_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__omzor_bm]  DEFAULT ((0)) FOR [omzor_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__komor_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__komor_bm]  DEFAULT ((0)) FOR [komor_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__ejk___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__ejk___bm]  DEFAULT ((0)) FOR [ejk___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__mkl___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__mkl___bm]  DEFAULT ((0)) FOR [mkl___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__and___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__and___bm]  DEFAULT ((0)) FOR [and___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__and__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__and__oms]  DEFAULT ('') FOR [and__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__zkc___bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__zkc___bm]  DEFAULT ((0)) FOR [zkc___bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klaper__zkc__man]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klaper__] ADD  CONSTRAINT [DF_klaper__zkc__man]  DEFAULT ('') FOR [zkc__man]
END

