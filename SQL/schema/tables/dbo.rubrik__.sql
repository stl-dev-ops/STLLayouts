SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rubrik__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[rubrik__](
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_rbk_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[sto__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kst__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[voctonac] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prest_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr_ppu__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prestpr1] [float] NOT NULL,
	[prestpr2] [float] NOT NULL,
	[prestpr3] [float] NOT NULL,
	[prestpr4] [float] NOT NULL,
	[prestpr5] [float] NOT NULL,
	[prstppu1] [float] NOT NULL,
	[prstppu2] [float] NOT NULL,
	[prstppu3] [float] NOT NULL,
	[prstppu4] [float] NOT NULL,
	[prstppu5] [float] NOT NULL,
	[grst__yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grst_pr1] [float] NOT NULL,
	[grst_pr2] [float] NOT NULL,
	[grst_pr3] [float] NOT NULL,
	[grst_pr4] [float] NOT NULL,
	[grst_pr5] [float] NOT NULL,
	[werkd_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[werkdpr1] [float] NOT NULL,
	[werkdpr2] [float] NOT NULL,
	[werkdpr3] [float] NOT NULL,
	[werkdpr4] [float] NOT NULL,
	[werkdpr5] [float] NOT NULL,
	[pdok__yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pdok_pr1] [float] NOT NULL,
	[pdok_pr2] [float] NOT NULL,
	[pdok_pr3] [float] NOT NULL,
	[pdok_pr4] [float] NOT NULL,
	[pdok_pr5] [float] NOT NULL,
	[rbk_hvdt] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__vdt] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_vdt3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_vdt4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vkrbkref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms_aant] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[addhour_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[incl_kst] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ref__rbk] PRIMARY KEY CLUSTERED 
(
	[rbk__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__oms_rbk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__oms_rbk_]  DEFAULT ('') FOR [oms_rbk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__sto__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__sto__ref]  DEFAULT ('') FOR [sto__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__kst__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__kst__typ]  DEFAULT ('') FOR [kst__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__voctonac]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__voctonac]  DEFAULT ('') FOR [voctonac]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prest_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prest_yn]  DEFAULT ('') FOR [prest_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__pr_ppu__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__pr_ppu__]  DEFAULT ('') FOR [pr_ppu__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prestpr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prestpr1]  DEFAULT ((0)) FOR [prestpr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prestpr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prestpr2]  DEFAULT ((0)) FOR [prestpr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prestpr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prestpr3]  DEFAULT ((0)) FOR [prestpr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prestpr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prestpr4]  DEFAULT ((0)) FOR [prestpr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prestpr5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prestpr5]  DEFAULT ((0)) FOR [prestpr5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prstppu1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prstppu1]  DEFAULT ((0)) FOR [prstppu1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prstppu2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prstppu2]  DEFAULT ((0)) FOR [prstppu2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prstppu3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prstppu3]  DEFAULT ((0)) FOR [prstppu3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prstppu4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prstppu4]  DEFAULT ((0)) FOR [prstppu4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__prstppu5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__prstppu5]  DEFAULT ((0)) FOR [prstppu5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__grst__yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__grst__yn]  DEFAULT ('') FOR [grst__yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__grst_pr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__grst_pr1]  DEFAULT ((0)) FOR [grst_pr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__grst_pr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__grst_pr2]  DEFAULT ((0)) FOR [grst_pr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__grst_pr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__grst_pr3]  DEFAULT ((0)) FOR [grst_pr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__grst_pr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__grst_pr4]  DEFAULT ((0)) FOR [grst_pr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__grst_pr5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__grst_pr5]  DEFAULT ((0)) FOR [grst_pr5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__werkd_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__werkd_yn]  DEFAULT ('') FOR [werkd_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__werkdpr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__werkdpr1]  DEFAULT ((0)) FOR [werkdpr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__werkdpr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__werkdpr2]  DEFAULT ((0)) FOR [werkdpr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__werkdpr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__werkdpr3]  DEFAULT ((0)) FOR [werkdpr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__werkdpr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__werkdpr4]  DEFAULT ((0)) FOR [werkdpr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__werkdpr5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__werkdpr5]  DEFAULT ((0)) FOR [werkdpr5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__pdok__yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__pdok__yn]  DEFAULT ('') FOR [pdok__yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__pdok_pr1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__pdok_pr1]  DEFAULT ((0)) FOR [pdok_pr1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__pdok_pr2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__pdok_pr2]  DEFAULT ((0)) FOR [pdok_pr2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__pdok_pr3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__pdok_pr3]  DEFAULT ((0)) FOR [pdok_pr3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__pdok_pr4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__pdok_pr4]  DEFAULT ((0)) FOR [pdok_pr4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__pdok_pr5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__pdok_pr5]  DEFAULT ((0)) FOR [pdok_pr5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__rbk_hvdt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__rbk_hvdt]  DEFAULT ('') FOR [rbk_hvdt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__rbk__vdt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__rbk__vdt]  DEFAULT ('') FOR [rbk__vdt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__rbk_vdt3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__rbk_vdt3]  DEFAULT ('') FOR [rbk_vdt3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__rbk_vdt4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__rbk_vdt4]  DEFAULT ('') FOR [rbk_vdt4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__rbk__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__rbk__typ]  DEFAULT ('') FOR [rbk__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__vkrbkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__vkrbkref]  DEFAULT ('') FOR [vkrbkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__oms_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__oms_aant]  DEFAULT ('') FOR [oms_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__addhour_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__addhour_]  DEFAULT ('') FOR [addhour_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_rubrik__incl_kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[rubrik__] ADD  CONSTRAINT [DF_rubrik__incl_kst]  DEFAULT ((0)) FOR [incl_kst]
END

