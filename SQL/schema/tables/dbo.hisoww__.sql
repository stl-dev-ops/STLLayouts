SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hisoww__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hisoww__](
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[idf_boww] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_ovww] [date] NOT NULL,
	[lonen_ok] [float] NOT NULL,
	[machi_ok] [float] NOT NULL,
	[overh_ok] [float] NOT NULL,
	[afsch_ok] [float] NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[papie_ok] [float] NOT NULL,
	[pap__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[grdvrbok] [float] NOT NULL,
	[grd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[ondaan__] [float] NOT NULL,
	[onda_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkp_kost] [float] NOT NULL,
	[adm_kost] [float] NOT NULL,
	[vkp__ohw] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [hisowwi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__idf_boww]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__idf_boww]  DEFAULT ('') FOR [idf_boww]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__dat_ovww]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__dat_ovww]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_ovww]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__lonen_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__lonen_ok]  DEFAULT ((0)) FOR [lonen_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__machi_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__machi_ok]  DEFAULT ((0)) FOR [machi_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__overh_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__overh_ok]  DEFAULT ((0)) FOR [overh_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__afsch_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__afsch_ok]  DEFAULT ((0)) FOR [afsch_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__papie_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__papie_ok]  DEFAULT ((0)) FOR [papie_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__grdvrbok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__grdvrbok]  DEFAULT ((0)) FOR [grdvrbok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__grd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__grd__ref]  DEFAULT ('') FOR [grd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__ondaan__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__ondaan__]  DEFAULT ((0)) FOR [ondaan__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__onda_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__onda_ref]  DEFAULT ('') FOR [onda_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__vkp_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__vkp_kost]  DEFAULT ((0)) FOR [vkp_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__adm_kost]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__adm_kost]  DEFAULT ((0)) FOR [adm_kost]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hisoww__vkp__ohw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hisoww__] ADD  CONSTRAINT [DF_hisoww__vkp__ohw]  DEFAULT ((0)) FOR [vkp__ohw]
END

