SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[partij__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[partij__](
	[destinat] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[transfer] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[reg__awz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[hostname] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[hostdir_] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[extor_nu] [int] NOT NULL,
	[extor_na] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[extor_kl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[inlawzvw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inlpntvw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[inlvrbvw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pntsplit] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__bet] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt_nbet] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt___pv] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[nbet_awz] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrl_pnt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrl_min] [float] NOT NULL,
	[ktrl_max] [float] NOT NULL,
	[jaar____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[maand___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[dir_et__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[nam_et__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[dlm_et__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[nr_asci_] [int] NOT NULL,
	[ext__atl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wiswnatl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plg__atl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plgatlwn] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[atlprdbn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[prdbn_v6] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[resv_atl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[awz__atl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pauzeond] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrf_nr] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[bedrfoms] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[y2k_aant] [int] NOT NULL,
	[max_aant] [int] NOT NULL,
	[askrolws] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpak_hlf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[minl_hlf] [int] NOT NULL,
	[ondrhoud] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plcdagen] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [partiji0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__destinat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__destinat]  DEFAULT ('') FOR [destinat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__transfer]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__transfer]  DEFAULT ('') FOR [transfer]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__reg__awz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__reg__awz]  DEFAULT ('') FOR [reg__awz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__hostname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__hostname]  DEFAULT ('') FOR [hostname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__hostdir_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__hostdir_]  DEFAULT ('') FOR [hostdir_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__extor_nu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__extor_nu]  DEFAULT ((0)) FOR [extor_nu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__extor_na]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__extor_na]  DEFAULT ('') FOR [extor_na]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__extor_kl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__extor_kl]  DEFAULT ('') FOR [extor_kl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__inlawzvw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__inlawzvw]  DEFAULT ('') FOR [inlawzvw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__inlpntvw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__inlpntvw]  DEFAULT ('') FOR [inlpntvw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__inlvrbvw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__inlvrbvw]  DEFAULT ('') FOR [inlvrbvw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__pntsplit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__pntsplit]  DEFAULT ('') FOR [pntsplit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__akt__bet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__akt__bet]  DEFAULT ('') FOR [akt__bet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__akt_nbet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__akt_nbet]  DEFAULT ('') FOR [akt_nbet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__akt___pv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__akt___pv]  DEFAULT ('') FOR [akt___pv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__nbet_awz]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__nbet_awz]  DEFAULT ('') FOR [nbet_awz]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__ktrl_pnt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__ktrl_pnt]  DEFAULT ('') FOR [ktrl_pnt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__ktrl_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__ktrl_min]  DEFAULT ((0)) FOR [ktrl_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__ktrl_max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__ktrl_max]  DEFAULT ((0)) FOR [ktrl_max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__jaar____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__jaar____]  DEFAULT ('') FOR [jaar____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__maand___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__maand___]  DEFAULT ('') FOR [maand___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__dir_et__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__dir_et__]  DEFAULT ('') FOR [dir_et__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__nam_et__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__nam_et__]  DEFAULT ('') FOR [nam_et__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__dlm_et__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__dlm_et__]  DEFAULT ('') FOR [dlm_et__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__nr_asci_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__nr_asci_]  DEFAULT ((0)) FOR [nr_asci_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__ext__atl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__ext__atl]  DEFAULT ('') FOR [ext__atl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__wiswnatl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__wiswnatl]  DEFAULT ('') FOR [wiswnatl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__plg__atl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__plg__atl]  DEFAULT ('') FOR [plg__atl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__plgatlwn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__plgatlwn]  DEFAULT ('') FOR [plgatlwn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__atlprdbn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__atlprdbn]  DEFAULT ('') FOR [atlprdbn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__prdbn_v6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__prdbn_v6]  DEFAULT ('') FOR [prdbn_v6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__resv_atl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__resv_atl]  DEFAULT ('') FOR [resv_atl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__awz__atl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__awz__atl]  DEFAULT ('') FOR [awz__atl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__pauzeond]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__pauzeond]  DEFAULT ('') FOR [pauzeond]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__bedrf_nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__bedrf_nr]  DEFAULT ('') FOR [bedrf_nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__bedrfoms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__bedrfoms]  DEFAULT ('') FOR [bedrfoms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__y2k_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__y2k_aant]  DEFAULT ((0)) FOR [y2k_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__max_aant]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__max_aant]  DEFAULT ((0)) FOR [max_aant]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__askrolws]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__askrolws]  DEFAULT ('') FOR [askrolws]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__vpak_hlf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__vpak_hlf]  DEFAULT ('') FOR [vpak_hlf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__minl_hlf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__minl_hlf]  DEFAULT ((0)) FOR [minl_hlf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__ondrhoud]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__ondrhoud]  DEFAULT ('') FOR [ondrhoud]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_partij__plcdagen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[partij__] ADD  CONSTRAINT [DF_partij__plcdagen]  DEFAULT ((0)) FOR [plcdagen]
END

