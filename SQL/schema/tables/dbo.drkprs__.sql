SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkprs__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkprs__](
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[sp___typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__oms] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[isextern] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[blokkeer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__drk] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__prs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mxfmt__x] [float] NOT NULL,
	[mxfmt__y] [float] NOT NULL,
	[mnfmt__x] [float] NOT NULL,
	[mnfmt__y] [float] NOT NULL,
	[mn__gram] [float] NOT NULL,
	[mx__gram] [float] NOT NULL,
	[mn_dikte] [float] NOT NULL,
	[mx_dikte] [float] NOT NULL,
	[mxvlsomw] [float] NOT NULL,
	[ant_torn] [int] NOT NULL,
	[torensaf] [int] NOT NULL,
	[grijpwit] [float] NOT NULL,
	[stripw_s] [float] NOT NULL,
	[stripwns] [float] NOT NULL,
	[zijwit_l] [float] NOT NULL,
	[zijwit_r] [float] NOT NULL,
	[ink1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink3_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink4_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink5_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink6_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink7_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink8_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink9_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink10ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink11ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink12ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st_mach_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st_paper] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__1plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__2plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__3plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__4plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__5plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__6plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__7plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__8plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__9plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st_10plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st_11plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st_12plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[st__wplt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_1plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_2plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_3plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_4plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_5plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_6plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_7plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_8plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_9plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg10plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg11plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg12plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stg_wplt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_1plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_2plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_3plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_4plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_5plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_6plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_7plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_8plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_9plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm10plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm11plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm12plt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stm_wplt] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_1trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_2trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_3trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_4trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_5trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_6trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_7trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_8trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw_9trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw10trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw11trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stw12trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_mach_] [int] NOT NULL,
	[in_paper] [int] NOT NULL,
	[in__1plt] [int] NOT NULL,
	[in__2plt] [int] NOT NULL,
	[in__3plt] [int] NOT NULL,
	[in__4plt] [int] NOT NULL,
	[in__5plt] [int] NOT NULL,
	[in__6plt] [int] NOT NULL,
	[in__7plt] [int] NOT NULL,
	[in__8plt] [int] NOT NULL,
	[in__9plt] [int] NOT NULL,
	[in_10plt] [int] NOT NULL,
	[in_11plt] [int] NOT NULL,
	[in_12plt] [int] NOT NULL,
	[in__wplt] [int] NOT NULL,
	[ing_1plt] [int] NOT NULL,
	[ing_2plt] [int] NOT NULL,
	[ing_3plt] [int] NOT NULL,
	[ing_4plt] [int] NOT NULL,
	[ing_5plt] [int] NOT NULL,
	[ing_6plt] [int] NOT NULL,
	[ing_7plt] [int] NOT NULL,
	[ing_8plt] [int] NOT NULL,
	[ing_9plt] [int] NOT NULL,
	[ing10plt] [int] NOT NULL,
	[ing11plt] [int] NOT NULL,
	[ing12plt] [int] NOT NULL,
	[ing_wplt] [int] NOT NULL,
	[inm_1plt] [int] NOT NULL,
	[inm_2plt] [int] NOT NULL,
	[inm_3plt] [int] NOT NULL,
	[inm_4plt] [int] NOT NULL,
	[inm_5plt] [int] NOT NULL,
	[inm_6plt] [int] NOT NULL,
	[inm_7plt] [int] NOT NULL,
	[inm_8plt] [int] NOT NULL,
	[inm_9plt] [int] NOT NULL,
	[inm10plt] [int] NOT NULL,
	[inm11plt] [int] NOT NULL,
	[inm12plt] [int] NOT NULL,
	[inm_wplt] [int] NOT NULL,
	[inw_1trn] [int] NOT NULL,
	[inw_2trn] [int] NOT NULL,
	[inw_3trn] [int] NOT NULL,
	[inw_4trn] [int] NOT NULL,
	[inw_5trn] [int] NOT NULL,
	[inw_6trn] [int] NOT NULL,
	[inw_7trn] [int] NOT NULL,
	[inw_8trn] [int] NOT NULL,
	[inw_9trn] [int] NOT NULL,
	[inw10trn] [int] NOT NULL,
	[inw11trn] [int] NOT NULL,
	[inw12trn] [int] NOT NULL,
	[in_drpct] [float] NOT NULL,
	[ingdrpct] [float] NOT NULL,
	[inmdrpct] [float] NOT NULL,
	[in_pwpct] [float] NOT NULL,
	[in__1trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__2trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__3trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__4trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__5trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__6trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__7trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__8trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in__9trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_10trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_11trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_12trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_1trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_2trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_3trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_4trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_5trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_6trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_7trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_8trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit_9trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit10trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit11trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uit12trn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sp_basis] [float] NOT NULL,
	[spgbasis] [float] NOT NULL,
	[spmbasis] [float] NOT NULL,
	[ovt_nadr] [int] NOT NULL,
	[opl_spdg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ink__vrb] [float] NOT NULL,
	[inkmnvrb] [float] NOT NULL,
	[droogtyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[droogmax] [int] NOT NULL,
	[omk__mog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omk__std] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[in_omkrl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[uitomkrl] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[envelop_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdsref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstddref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdwref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdoref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdiref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdzref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdkref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_sref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_dref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_wref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_oref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_iref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_zref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_kref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_wplt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_klik] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tromtype] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omk__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kstdpref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk_pref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[smw__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkprsi1] PRIMARY KEY CLUSTERED 
(
	[prs__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__sp___typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__sp___typ]  DEFAULT ('') FOR [sp___typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__prs__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__prs__oms]  DEFAULT ('') FOR [prs__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__prs__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__prs__srt]  DEFAULT ('') FOR [prs__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__isextern]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__isextern]  DEFAULT ('') FOR [isextern]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__blokkeer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__blokkeer]  DEFAULT ('') FOR [blokkeer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__typ__drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__typ__drk]  DEFAULT ('') FOR [typ__drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__typ__prs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__typ__prs]  DEFAULT ('') FOR [typ__prs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mxfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mxfmt__x]  DEFAULT ((0)) FOR [mxfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mxfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mxfmt__y]  DEFAULT ((0)) FOR [mxfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mnfmt__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mnfmt__x]  DEFAULT ((0)) FOR [mnfmt__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mnfmt__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mnfmt__y]  DEFAULT ((0)) FOR [mnfmt__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mn__gram]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mn__gram]  DEFAULT ((0)) FOR [mn__gram]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mx__gram]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mx__gram]  DEFAULT ((0)) FOR [mx__gram]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mn_dikte]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mn_dikte]  DEFAULT ((0)) FOR [mn_dikte]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mx_dikte]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mx_dikte]  DEFAULT ((0)) FOR [mx_dikte]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__mxvlsomw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__mxvlsomw]  DEFAULT ((0)) FOR [mxvlsomw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ant_torn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ant_torn]  DEFAULT ((0)) FOR [ant_torn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__torensaf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__torensaf]  DEFAULT ((0)) FOR [torensaf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__grijpwit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__grijpwit]  DEFAULT ((0)) FOR [grijpwit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stripw_s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stripw_s]  DEFAULT ((0)) FOR [stripw_s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stripwns]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stripwns]  DEFAULT ((0)) FOR [stripwns]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__zijwit_l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__zijwit_l]  DEFAULT ((0)) FOR [zijwit_l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__zijwit_r]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__zijwit_r]  DEFAULT ((0)) FOR [zijwit_r]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink1_ref]  DEFAULT ('') FOR [ink1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink2_ref]  DEFAULT ('') FOR [ink2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink3_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink3_ref]  DEFAULT ('') FOR [ink3_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink4_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink4_ref]  DEFAULT ('') FOR [ink4_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink5_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink5_ref]  DEFAULT ('') FOR [ink5_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink6_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink6_ref]  DEFAULT ('') FOR [ink6_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink7_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink7_ref]  DEFAULT ('') FOR [ink7_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink8_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink8_ref]  DEFAULT ('') FOR [ink8_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink9_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink9_ref]  DEFAULT ('') FOR [ink9_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink10ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink10ref]  DEFAULT ('') FOR [ink10ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink11ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink11ref]  DEFAULT ('') FOR [ink11ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink12ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink12ref]  DEFAULT ('') FOR [ink12ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st_mach_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st_mach_]  DEFAULT ('') FOR [st_mach_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st_paper]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st_paper]  DEFAULT ('') FOR [st_paper]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__1plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__1plt]  DEFAULT ('') FOR [st__1plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__2plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__2plt]  DEFAULT ('') FOR [st__2plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__3plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__3plt]  DEFAULT ('') FOR [st__3plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__4plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__4plt]  DEFAULT ('') FOR [st__4plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__5plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__5plt]  DEFAULT ('') FOR [st__5plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__6plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__6plt]  DEFAULT ('') FOR [st__6plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__7plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__7plt]  DEFAULT ('') FOR [st__7plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__8plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__8plt]  DEFAULT ('') FOR [st__8plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__9plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__9plt]  DEFAULT ('') FOR [st__9plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st_10plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st_10plt]  DEFAULT ('') FOR [st_10plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st_11plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st_11plt]  DEFAULT ('') FOR [st_11plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st_12plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st_12plt]  DEFAULT ('') FOR [st_12plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__st__wplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__st__wplt]  DEFAULT ('') FOR [st__wplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_1plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_1plt]  DEFAULT ('') FOR [stg_1plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_2plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_2plt]  DEFAULT ('') FOR [stg_2plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_3plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_3plt]  DEFAULT ('') FOR [stg_3plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_4plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_4plt]  DEFAULT ('') FOR [stg_4plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_5plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_5plt]  DEFAULT ('') FOR [stg_5plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_6plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_6plt]  DEFAULT ('') FOR [stg_6plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_7plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_7plt]  DEFAULT ('') FOR [stg_7plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_8plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_8plt]  DEFAULT ('') FOR [stg_8plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_9plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_9plt]  DEFAULT ('') FOR [stg_9plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg10plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg10plt]  DEFAULT ('') FOR [stg10plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg11plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg11plt]  DEFAULT ('') FOR [stg11plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg12plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg12plt]  DEFAULT ('') FOR [stg12plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stg_wplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stg_wplt]  DEFAULT ('') FOR [stg_wplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_1plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_1plt]  DEFAULT ('') FOR [stm_1plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_2plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_2plt]  DEFAULT ('') FOR [stm_2plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_3plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_3plt]  DEFAULT ('') FOR [stm_3plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_4plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_4plt]  DEFAULT ('') FOR [stm_4plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_5plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_5plt]  DEFAULT ('') FOR [stm_5plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_6plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_6plt]  DEFAULT ('') FOR [stm_6plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_7plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_7plt]  DEFAULT ('') FOR [stm_7plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_8plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_8plt]  DEFAULT ('') FOR [stm_8plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_9plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_9plt]  DEFAULT ('') FOR [stm_9plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm10plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm10plt]  DEFAULT ('') FOR [stm10plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm11plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm11plt]  DEFAULT ('') FOR [stm11plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm12plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm12plt]  DEFAULT ('') FOR [stm12plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stm_wplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stm_wplt]  DEFAULT ('') FOR [stm_wplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_1trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_1trn]  DEFAULT ('') FOR [stw_1trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_2trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_2trn]  DEFAULT ('') FOR [stw_2trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_3trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_3trn]  DEFAULT ('') FOR [stw_3trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_4trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_4trn]  DEFAULT ('') FOR [stw_4trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_5trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_5trn]  DEFAULT ('') FOR [stw_5trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_6trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_6trn]  DEFAULT ('') FOR [stw_6trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_7trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_7trn]  DEFAULT ('') FOR [stw_7trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_8trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_8trn]  DEFAULT ('') FOR [stw_8trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw_9trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw_9trn]  DEFAULT ('') FOR [stw_9trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw10trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw10trn]  DEFAULT ('') FOR [stw10trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw11trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw11trn]  DEFAULT ('') FOR [stw11trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__stw12trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__stw12trn]  DEFAULT ('') FOR [stw12trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_mach_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_mach_]  DEFAULT ((0)) FOR [in_mach_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_paper]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_paper]  DEFAULT ((0)) FOR [in_paper]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__1plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__1plt]  DEFAULT ((0)) FOR [in__1plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__2plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__2plt]  DEFAULT ((0)) FOR [in__2plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__3plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__3plt]  DEFAULT ((0)) FOR [in__3plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__4plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__4plt]  DEFAULT ((0)) FOR [in__4plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__5plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__5plt]  DEFAULT ((0)) FOR [in__5plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__6plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__6plt]  DEFAULT ((0)) FOR [in__6plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__7plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__7plt]  DEFAULT ((0)) FOR [in__7plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__8plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__8plt]  DEFAULT ((0)) FOR [in__8plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__9plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__9plt]  DEFAULT ((0)) FOR [in__9plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_10plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_10plt]  DEFAULT ((0)) FOR [in_10plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_11plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_11plt]  DEFAULT ((0)) FOR [in_11plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_12plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_12plt]  DEFAULT ((0)) FOR [in_12plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__wplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__wplt]  DEFAULT ((0)) FOR [in__wplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_1plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_1plt]  DEFAULT ((0)) FOR [ing_1plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_2plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_2plt]  DEFAULT ((0)) FOR [ing_2plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_3plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_3plt]  DEFAULT ((0)) FOR [ing_3plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_4plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_4plt]  DEFAULT ((0)) FOR [ing_4plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_5plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_5plt]  DEFAULT ((0)) FOR [ing_5plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_6plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_6plt]  DEFAULT ((0)) FOR [ing_6plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_7plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_7plt]  DEFAULT ((0)) FOR [ing_7plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_8plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_8plt]  DEFAULT ((0)) FOR [ing_8plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_9plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_9plt]  DEFAULT ((0)) FOR [ing_9plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing10plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing10plt]  DEFAULT ((0)) FOR [ing10plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing11plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing11plt]  DEFAULT ((0)) FOR [ing11plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing12plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing12plt]  DEFAULT ((0)) FOR [ing12plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ing_wplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ing_wplt]  DEFAULT ((0)) FOR [ing_wplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_1plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_1plt]  DEFAULT ((0)) FOR [inm_1plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_2plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_2plt]  DEFAULT ((0)) FOR [inm_2plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_3plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_3plt]  DEFAULT ((0)) FOR [inm_3plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_4plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_4plt]  DEFAULT ((0)) FOR [inm_4plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_5plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_5plt]  DEFAULT ((0)) FOR [inm_5plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_6plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_6plt]  DEFAULT ((0)) FOR [inm_6plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_7plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_7plt]  DEFAULT ((0)) FOR [inm_7plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_8plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_8plt]  DEFAULT ((0)) FOR [inm_8plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_9plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_9plt]  DEFAULT ((0)) FOR [inm_9plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm10plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm10plt]  DEFAULT ((0)) FOR [inm10plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm11plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm11plt]  DEFAULT ((0)) FOR [inm11plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm12plt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm12plt]  DEFAULT ((0)) FOR [inm12plt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inm_wplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inm_wplt]  DEFAULT ((0)) FOR [inm_wplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_1trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_1trn]  DEFAULT ((0)) FOR [inw_1trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_2trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_2trn]  DEFAULT ((0)) FOR [inw_2trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_3trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_3trn]  DEFAULT ((0)) FOR [inw_3trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_4trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_4trn]  DEFAULT ((0)) FOR [inw_4trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_5trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_5trn]  DEFAULT ((0)) FOR [inw_5trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_6trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_6trn]  DEFAULT ((0)) FOR [inw_6trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_7trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_7trn]  DEFAULT ((0)) FOR [inw_7trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_8trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_8trn]  DEFAULT ((0)) FOR [inw_8trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw_9trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw_9trn]  DEFAULT ((0)) FOR [inw_9trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw10trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw10trn]  DEFAULT ((0)) FOR [inw10trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw11trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw11trn]  DEFAULT ((0)) FOR [inw11trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inw12trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inw12trn]  DEFAULT ((0)) FOR [inw12trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_drpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_drpct]  DEFAULT ((0)) FOR [in_drpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ingdrpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ingdrpct]  DEFAULT ((0)) FOR [ingdrpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inmdrpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inmdrpct]  DEFAULT ((0)) FOR [inmdrpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_pwpct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_pwpct]  DEFAULT ((0)) FOR [in_pwpct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__1trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__1trn]  DEFAULT ('') FOR [in__1trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__2trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__2trn]  DEFAULT ('') FOR [in__2trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__3trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__3trn]  DEFAULT ('') FOR [in__3trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__4trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__4trn]  DEFAULT ('') FOR [in__4trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__5trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__5trn]  DEFAULT ('') FOR [in__5trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__6trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__6trn]  DEFAULT ('') FOR [in__6trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__7trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__7trn]  DEFAULT ('') FOR [in__7trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__8trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__8trn]  DEFAULT ('') FOR [in__8trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in__9trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in__9trn]  DEFAULT ('') FOR [in__9trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_10trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_10trn]  DEFAULT ('') FOR [in_10trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_11trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_11trn]  DEFAULT ('') FOR [in_11trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_12trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_12trn]  DEFAULT ('') FOR [in_12trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_1trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_1trn]  DEFAULT ('') FOR [uit_1trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_2trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_2trn]  DEFAULT ('') FOR [uit_2trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_3trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_3trn]  DEFAULT ('') FOR [uit_3trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_4trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_4trn]  DEFAULT ('') FOR [uit_4trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_5trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_5trn]  DEFAULT ('') FOR [uit_5trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_6trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_6trn]  DEFAULT ('') FOR [uit_6trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_7trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_7trn]  DEFAULT ('') FOR [uit_7trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_8trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_8trn]  DEFAULT ('') FOR [uit_8trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit_9trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit_9trn]  DEFAULT ('') FOR [uit_9trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit10trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit10trn]  DEFAULT ('') FOR [uit10trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit11trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit11trn]  DEFAULT ('') FOR [uit11trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uit12trn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uit12trn]  DEFAULT ('') FOR [uit12trn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__sp_basis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__sp_basis]  DEFAULT ((0)) FOR [sp_basis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__spgbasis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__spgbasis]  DEFAULT ((0)) FOR [spgbasis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__spmbasis]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__spmbasis]  DEFAULT ((0)) FOR [spmbasis]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ovt_nadr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ovt_nadr]  DEFAULT ((0)) FOR [ovt_nadr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__opl_spdg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__opl_spdg]  DEFAULT ('') FOR [opl_spdg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__ink__vrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__ink__vrb]  DEFAULT ((0)) FOR [ink__vrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__inkmnvrb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__inkmnvrb]  DEFAULT ((0)) FOR [inkmnvrb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__droogtyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__droogtyd]  DEFAULT ('') FOR [droogtyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__droogmax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__droogmax]  DEFAULT ((0)) FOR [droogmax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__omk__mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__omk__mog]  DEFAULT ('') FOR [omk__mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__omk__std]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__omk__std]  DEFAULT ('') FOR [omk__std]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__in_omkrl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__in_omkrl]  DEFAULT ('') FOR [in_omkrl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__uitomkrl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__uitomkrl]  DEFAULT ('') FOR [uitomkrl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__envelop_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__envelop_]  DEFAULT ('') FOR [envelop_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__kstdsref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__kstdsref]  DEFAULT ('') FOR [kstdsref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__kstddref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__kstddref]  DEFAULT ('') FOR [kstddref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__kstdwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__kstdwref]  DEFAULT ('') FOR [kstdwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__kstdoref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__kstdoref]  DEFAULT ('') FOR [kstdoref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__kstdiref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__kstdiref]  DEFAULT ('') FOR [kstdiref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__kstdzref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__kstdzref]  DEFAULT ('') FOR [kstdzref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__kstdkref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__kstdkref]  DEFAULT ('') FOR [kstdkref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rbk_sref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rbk_sref]  DEFAULT ('') FOR [rbk_sref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rbk_dref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rbk_dref]  DEFAULT ('') FOR [rbk_dref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rbk_wref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rbk_wref]  DEFAULT ('') FOR [rbk_wref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rbk_oref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rbk_oref]  DEFAULT ('') FOR [rbk_oref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rbk_iref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rbk_iref]  DEFAULT ('') FOR [rbk_iref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rbk_zref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rbk_zref]  DEFAULT ('') FOR [rbk_zref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rbk_kref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rbk_kref]  DEFAULT ('') FOR [rbk_kref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__dev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__dev__ref]  DEFAULT ('') FOR [dev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rek_wplt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rek_wplt]  DEFAULT ('') FOR [rek_wplt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rek_klik]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rek_klik]  DEFAULT ('') FOR [rek_klik]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__tromtype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__tromtype]  DEFAULT ('') FOR [tromtype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__omk__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__omk__typ]  DEFAULT ('') FOR [omk__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__kstdpref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__kstdpref]  DEFAULT ('') FOR [kstdpref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__rbk_pref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__rbk_pref]  DEFAULT ('') FOR [rbk_pref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkprs__smw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkprs__] ADD  CONSTRAINT [DF_drkprs__smw__ref]  DEFAULT ('') FOR [smw__ref]
END

