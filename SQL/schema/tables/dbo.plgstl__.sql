SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plgstl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plgstl__](
	[plg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma___rkw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_su__1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_nrm_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_anv_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_anvv1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_su__2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_min_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_nrm_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_anv_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_su__3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_min_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_nrm_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_anv_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_aanko] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_vertr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ma_pauze] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di___rkw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_su__1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_nrm_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_anv_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_anvv1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_su__2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_min_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_nrm_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_anv_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_su__3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_min_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_nrm_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_anv_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_aanko] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_vertr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[di_pauze] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo___rkw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_su__1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_nrm_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_anv_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_anvv1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_su__2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_min_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_nrm_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_anv_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_su__3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_min_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_nrm_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_anv_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_aanko] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_vertr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wo_pauze] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do___rkw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_su__1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_nrm_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_anv_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_anvv1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_su__2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_min_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_nrm_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_anv_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_su__3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_min_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_nrm_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_anv_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_aanko] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_vertr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[do_pauze] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr___rkw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_su__1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_nrm_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_anv_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_anvv1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_su__2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_min_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_nrm_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_anv_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_su__3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_min_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_nrm_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_anv_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_aanko] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_vertr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vr_pauze] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za___rkw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_su__1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_nrm_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_anv_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_anvv1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_su__2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_min_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_nrm_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_anv_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_su__3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_min_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_nrm_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_anv_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_aanko] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_vertr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[za_pauze] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo___rkw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_su__1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_nrm_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_anv_1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_anvv1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_su__2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_min_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_nrm_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_anv_2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_su__3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_min_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_nrm_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_anv_3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_aanko] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_vertr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zo_pauze] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plgstli1] PRIMARY KEY CLUSTERED 
(
	[plg__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__plg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__plg__ref]  DEFAULT ('') FOR [plg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma___rkw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma___rkw]  DEFAULT ('') FOR [ma___rkw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_su__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_su__1]  DEFAULT ('') FOR [ma_su__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_nrm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_nrm_1]  DEFAULT ('') FOR [ma_nrm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_anv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_anv_1]  DEFAULT ('') FOR [ma_anv_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_anvv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_anvv1]  DEFAULT ('') FOR [ma_anvv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_su__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_su__2]  DEFAULT ('') FOR [ma_su__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_min_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_min_2]  DEFAULT ('') FOR [ma_min_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_nrm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_nrm_2]  DEFAULT ('') FOR [ma_nrm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_anv_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_anv_2]  DEFAULT ('') FOR [ma_anv_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_su__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_su__3]  DEFAULT ('') FOR [ma_su__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_min_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_min_3]  DEFAULT ('') FOR [ma_min_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_nrm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_nrm_3]  DEFAULT ('') FOR [ma_nrm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_anv_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_anv_3]  DEFAULT ('') FOR [ma_anv_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_aanko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_aanko]  DEFAULT ('') FOR [ma_aanko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_vertr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_vertr]  DEFAULT ('') FOR [ma_vertr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__ma_pauze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__ma_pauze]  DEFAULT ('') FOR [ma_pauze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di___rkw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di___rkw]  DEFAULT ('') FOR [di___rkw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_su__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_su__1]  DEFAULT ('') FOR [di_su__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_nrm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_nrm_1]  DEFAULT ('') FOR [di_nrm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_anv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_anv_1]  DEFAULT ('') FOR [di_anv_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_anvv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_anvv1]  DEFAULT ('') FOR [di_anvv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_su__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_su__2]  DEFAULT ('') FOR [di_su__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_min_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_min_2]  DEFAULT ('') FOR [di_min_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_nrm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_nrm_2]  DEFAULT ('') FOR [di_nrm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_anv_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_anv_2]  DEFAULT ('') FOR [di_anv_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_su__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_su__3]  DEFAULT ('') FOR [di_su__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_min_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_min_3]  DEFAULT ('') FOR [di_min_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_nrm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_nrm_3]  DEFAULT ('') FOR [di_nrm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_anv_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_anv_3]  DEFAULT ('') FOR [di_anv_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_aanko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_aanko]  DEFAULT ('') FOR [di_aanko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_vertr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_vertr]  DEFAULT ('') FOR [di_vertr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__di_pauze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__di_pauze]  DEFAULT ('') FOR [di_pauze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo___rkw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo___rkw]  DEFAULT ('') FOR [wo___rkw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_su__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_su__1]  DEFAULT ('') FOR [wo_su__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_nrm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_nrm_1]  DEFAULT ('') FOR [wo_nrm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_anv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_anv_1]  DEFAULT ('') FOR [wo_anv_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_anvv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_anvv1]  DEFAULT ('') FOR [wo_anvv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_su__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_su__2]  DEFAULT ('') FOR [wo_su__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_min_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_min_2]  DEFAULT ('') FOR [wo_min_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_nrm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_nrm_2]  DEFAULT ('') FOR [wo_nrm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_anv_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_anv_2]  DEFAULT ('') FOR [wo_anv_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_su__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_su__3]  DEFAULT ('') FOR [wo_su__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_min_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_min_3]  DEFAULT ('') FOR [wo_min_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_nrm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_nrm_3]  DEFAULT ('') FOR [wo_nrm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_anv_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_anv_3]  DEFAULT ('') FOR [wo_anv_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_aanko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_aanko]  DEFAULT ('') FOR [wo_aanko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_vertr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_vertr]  DEFAULT ('') FOR [wo_vertr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__wo_pauze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__wo_pauze]  DEFAULT ('') FOR [wo_pauze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do___rkw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do___rkw]  DEFAULT ('') FOR [do___rkw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_su__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_su__1]  DEFAULT ('') FOR [do_su__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_nrm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_nrm_1]  DEFAULT ('') FOR [do_nrm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_anv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_anv_1]  DEFAULT ('') FOR [do_anv_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_anvv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_anvv1]  DEFAULT ('') FOR [do_anvv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_su__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_su__2]  DEFAULT ('') FOR [do_su__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_min_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_min_2]  DEFAULT ('') FOR [do_min_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_nrm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_nrm_2]  DEFAULT ('') FOR [do_nrm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_anv_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_anv_2]  DEFAULT ('') FOR [do_anv_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_su__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_su__3]  DEFAULT ('') FOR [do_su__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_min_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_min_3]  DEFAULT ('') FOR [do_min_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_nrm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_nrm_3]  DEFAULT ('') FOR [do_nrm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_anv_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_anv_3]  DEFAULT ('') FOR [do_anv_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_aanko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_aanko]  DEFAULT ('') FOR [do_aanko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_vertr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_vertr]  DEFAULT ('') FOR [do_vertr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__do_pauze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__do_pauze]  DEFAULT ('') FOR [do_pauze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr___rkw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr___rkw]  DEFAULT ('') FOR [vr___rkw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_su__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_su__1]  DEFAULT ('') FOR [vr_su__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_nrm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_nrm_1]  DEFAULT ('') FOR [vr_nrm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_anv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_anv_1]  DEFAULT ('') FOR [vr_anv_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_anvv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_anvv1]  DEFAULT ('') FOR [vr_anvv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_su__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_su__2]  DEFAULT ('') FOR [vr_su__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_min_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_min_2]  DEFAULT ('') FOR [vr_min_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_nrm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_nrm_2]  DEFAULT ('') FOR [vr_nrm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_anv_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_anv_2]  DEFAULT ('') FOR [vr_anv_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_su__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_su__3]  DEFAULT ('') FOR [vr_su__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_min_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_min_3]  DEFAULT ('') FOR [vr_min_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_nrm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_nrm_3]  DEFAULT ('') FOR [vr_nrm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_anv_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_anv_3]  DEFAULT ('') FOR [vr_anv_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_aanko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_aanko]  DEFAULT ('') FOR [vr_aanko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_vertr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_vertr]  DEFAULT ('') FOR [vr_vertr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__vr_pauze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__vr_pauze]  DEFAULT ('') FOR [vr_pauze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za___rkw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za___rkw]  DEFAULT ('') FOR [za___rkw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_su__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_su__1]  DEFAULT ('') FOR [za_su__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_nrm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_nrm_1]  DEFAULT ('') FOR [za_nrm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_anv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_anv_1]  DEFAULT ('') FOR [za_anv_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_anvv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_anvv1]  DEFAULT ('') FOR [za_anvv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_su__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_su__2]  DEFAULT ('') FOR [za_su__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_min_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_min_2]  DEFAULT ('') FOR [za_min_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_nrm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_nrm_2]  DEFAULT ('') FOR [za_nrm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_anv_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_anv_2]  DEFAULT ('') FOR [za_anv_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_su__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_su__3]  DEFAULT ('') FOR [za_su__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_min_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_min_3]  DEFAULT ('') FOR [za_min_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_nrm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_nrm_3]  DEFAULT ('') FOR [za_nrm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_anv_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_anv_3]  DEFAULT ('') FOR [za_anv_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_aanko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_aanko]  DEFAULT ('') FOR [za_aanko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_vertr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_vertr]  DEFAULT ('') FOR [za_vertr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__za_pauze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__za_pauze]  DEFAULT ('') FOR [za_pauze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo___rkw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo___rkw]  DEFAULT ('') FOR [zo___rkw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_su__1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_su__1]  DEFAULT ('') FOR [zo_su__1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_nrm_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_nrm_1]  DEFAULT ('') FOR [zo_nrm_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_anv_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_anv_1]  DEFAULT ('') FOR [zo_anv_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_anvv1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_anvv1]  DEFAULT ('') FOR [zo_anvv1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_su__2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_su__2]  DEFAULT ('') FOR [zo_su__2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_min_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_min_2]  DEFAULT ('') FOR [zo_min_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_nrm_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_nrm_2]  DEFAULT ('') FOR [zo_nrm_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_anv_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_anv_2]  DEFAULT ('') FOR [zo_anv_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_su__3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_su__3]  DEFAULT ('') FOR [zo_su__3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_min_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_min_3]  DEFAULT ('') FOR [zo_min_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_nrm_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_nrm_3]  DEFAULT ('') FOR [zo_nrm_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_anv_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_anv_3]  DEFAULT ('') FOR [zo_anv_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_aanko]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_aanko]  DEFAULT ('') FOR [zo_aanko]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_vertr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_vertr]  DEFAULT ('') FOR [zo_vertr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgstl__zo_pauze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgstl__] ADD  CONSTRAINT [DF_plgstl__zo_pauze]  DEFAULT ('') FOR [zo_pauze]
END

