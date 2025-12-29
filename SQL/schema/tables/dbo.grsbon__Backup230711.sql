SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[grsbon__Backup230711]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[grsbon__Backup230711](
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[compl___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__com] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[grs_com2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[art_oms2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[glev_dat] [date] NOT NULL,
	[glev_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[glevodat] [date] NOT NULL,
	[glevouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_dat] [date] NOT NULL,
	[levr_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gvrz_dat] [date] NOT NULL,
	[gvrz_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gvrzodat] [date] NOT NULL,
	[gvrzouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__dat] [date] NOT NULL,
	[vrz__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[elecbest] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat__ok] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_dat] [date] NOT NULL,
	[fiat_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_usr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_com] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_num] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[gaant___] [float] NOT NULL,
	[gaant_kg] [float] NOT NULL,
	[laant___] [float] NOT NULL,
	[laant_kg] [float] NOT NULL,
	[faant___] [float] NOT NULL,
	[faant_kg] [float] NOT NULL,
	[pak__oms] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[pak__inh] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[drg_prys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[bpri__vm] [float] NOT NULL,
	[bpri__bm] [float] NOT NULL,
	[bpri__om] [float] NOT NULL,
	[bprik_vm] [float] NOT NULL,
	[bprik_bm] [float] NOT NULL,
	[bprik_om] [float] NOT NULL,
	[fpri__vm] [float] NOT NULL,
	[fpri__bm] [float] NOT NULL,
	[fpri__om] [float] NOT NULL,
	[fprik_vm] [float] NOT NULL,
	[fprik_bm] [float] NOT NULL,
	[fprik_om] [float] NOT NULL,
	[totfp_vm] [float] NOT NULL,
	[totfp_bm] [float] NOT NULL,
	[totfp_om] [float] NOT NULL,
	[teofk_bm] [float] NOT NULL,
	[fprto2vm] [float] NOT NULL,
	[fprto2bm] [float] NOT NULL,
	[fprto2om] [float] NOT NULL,
	[totbp_bm] [float] NOT NULL,
	[totbp_vm] [float] NOT NULL,
	[totlp_bm] [float] NOT NULL,
	[totlp_vm] [float] NOT NULL,
	[aktr_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[salesgroup_id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] NOT NULL,
	[tstval06] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval07] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval08] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval09] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval10] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval11] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval12] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval13] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval14] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval15] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval16] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval17] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval18] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval19] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval20] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_compl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_compl___]  DEFAULT ('') FOR [compl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_lev__tst]  DEFAULT ('') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fac__tst]  DEFAULT ('') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_grs__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_grs__com]  DEFAULT ('') FOR [grs__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_grs_com2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_grs_com2]  DEFAULT ('') FOR [grs_com2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_art_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_art_oms2]  DEFAULT ('') FOR [art_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_art__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_art__typ]  DEFAULT ('') FOR [art__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_glev_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_glev_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [glev_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_glev_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_glev_uur]  DEFAULT ('') FOR [glev_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_glevodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_glevodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [glevodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_glevouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_glevouur]  DEFAULT ('') FOR [glevouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_levr_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_levr_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levr_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_levr_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_levr_uur]  DEFAULT ('') FOR [levr_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_gvrz_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_gvrz_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gvrz_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_gvrz_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_gvrz_uur]  DEFAULT ('') FOR [gvrz_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_gvrzodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_gvrzodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gvrzodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_gvrzouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_gvrzouur]  DEFAULT ('') FOR [gvrzouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_vrz__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_vrz__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrz__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_vrz__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_vrz__uur]  DEFAULT ('') FOR [vrz__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_elecbest]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_elecbest]  DEFAULT ('') FOR [elecbest]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fiat__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fiat__ok]  DEFAULT ('') FOR [fiat__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fiat_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fiat_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fiat_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fiat_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fiat_uur]  DEFAULT ('') FOR [fiat_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fiat_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fiat_usr]  DEFAULT ('') FOR [fiat_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fiat_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fiat_com]  DEFAULT ('') FOR [fiat_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fiat_num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fiat_num]  DEFAULT ('') FOR [fiat_num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_gaant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_gaant___]  DEFAULT ((0)) FOR [gaant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_gaant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_gaant_kg]  DEFAULT ((0)) FOR [gaant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_laant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_laant___]  DEFAULT ((0)) FOR [laant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_laant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_laant_kg]  DEFAULT ((0)) FOR [laant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_faant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_faant_kg]  DEFAULT ((0)) FOR [faant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_pak__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_pak__oms]  DEFAULT ('') FOR [pak__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_pak__inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_pak__inh]  DEFAULT ((0)) FOR [pak__inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_drg_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_drg_prys]  DEFAULT ('') FOR [drg_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_bpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_bpri__vm]  DEFAULT ((0)) FOR [bpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_bpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_bpri__bm]  DEFAULT ((0)) FOR [bpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_bpri__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_bpri__om]  DEFAULT ((0)) FOR [bpri__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_bprik_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_bprik_vm]  DEFAULT ((0)) FOR [bprik_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_bprik_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_bprik_bm]  DEFAULT ((0)) FOR [bprik_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_bprik_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_bprik_om]  DEFAULT ((0)) FOR [bprik_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fpri__vm]  DEFAULT ((0)) FOR [fpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fpri__bm]  DEFAULT ((0)) FOR [fpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fpri__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fpri__om]  DEFAULT ((0)) FOR [fpri__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fprik_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fprik_vm]  DEFAULT ((0)) FOR [fprik_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fprik_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fprik_bm]  DEFAULT ((0)) FOR [fprik_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fprik_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fprik_om]  DEFAULT ((0)) FOR [fprik_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_totfp_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_totfp_vm]  DEFAULT ((0)) FOR [totfp_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_totfp_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_totfp_bm]  DEFAULT ((0)) FOR [totfp_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_totfp_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_totfp_om]  DEFAULT ((0)) FOR [totfp_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_teofk_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_teofk_bm]  DEFAULT ((0)) FOR [teofk_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fprto2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fprto2vm]  DEFAULT ((0)) FOR [fprto2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fprto2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fprto2bm]  DEFAULT ((0)) FOR [fprto2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_fprto2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_fprto2om]  DEFAULT ((0)) FOR [fprto2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_totbp_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_totbp_bm]  DEFAULT ((0)) FOR [totbp_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_totbp_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_totbp_vm]  DEFAULT ((0)) FOR [totbp_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_totlp_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_totlp_bm]  DEFAULT ((0)) FOR [totlp_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_totlp_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_totlp_vm]  DEFAULT ((0)) FOR [totlp_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_aktr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_aktr_ref]  DEFAULT ('') FOR [aktr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_salesgroup_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_salesgroup_id]  DEFAULT ('') FOR [salesgroup_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval11]  DEFAULT ('') FOR [tstval11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval12]  DEFAULT ('') FOR [tstval12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval13]  DEFAULT ('') FOR [tstval13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval14]  DEFAULT ('') FOR [tstval14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval15]  DEFAULT ('') FOR [tstval15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval16]  DEFAULT ('') FOR [tstval16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval17]  DEFAULT ('') FOR [tstval17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval18]  DEFAULT ('') FOR [tstval18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval19]  DEFAULT ('') FOR [tstval19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__Backup230711_tstval20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__Backup230711] ADD  CONSTRAINT [DF_grsbon__Backup230711_tstval20]  DEFAULT ('') FOR [tstval20]
END

