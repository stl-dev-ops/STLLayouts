SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[grsbon__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[grsbon__](
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[compl___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[grs__com] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[tstval20] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [gsbonid1] PRIMARY KEY CLUSTERED 
(
	[grs__vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[grsbon__]') AND name = N'grsboni4')
CREATE NONCLUSTERED INDEX [grsboni4] ON [dbo].[grsbon__]
(
	[lev__ref] ASC,
	[fac__tst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[grsbon__]') AND name = N'gsbonid0')
CREATE NONCLUSTERED INDEX [gsbonid0] ON [dbo].[grsbon__]
(
	[grbonref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[grsbon__]') AND name = N'gsbonid2')
CREATE NONCLUSTERED INDEX [gsbonid2] ON [dbo].[grsbon__]
(
	[art__ref] ASC,
	[lev__tst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[grsbon__]') AND name = N'gsbonid3')
CREATE NONCLUSTERED INDEX [gsbonid3] ON [dbo].[grsbon__]
(
	[ord__ref] ASC,
	[art__ref] ASC,
	[fac__tst] ASC,
	[grs__vnr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__grs__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__grs__vnr]  DEFAULT ('') FOR [grs__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__compl___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__compl___]  DEFAULT ('') FOR [compl___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__lev__tst]  DEFAULT ('') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fac__tst]  DEFAULT ('') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__grs__com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__grs__com]  DEFAULT ('') FOR [grs__com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__grs_com2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__grs_com2]  DEFAULT ('') FOR [grs_com2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__art_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__art_oms2]  DEFAULT ('') FOR [art_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__art__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__art__typ]  DEFAULT ('') FOR [art__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__glev_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__glev_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [glev_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__glev_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__glev_uur]  DEFAULT ('') FOR [glev_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__glevodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__glevodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [glevodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__glevouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__glevouur]  DEFAULT ('') FOR [glevouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__levr_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__levr_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [levr_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__levr_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__levr_uur]  DEFAULT ('') FOR [levr_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__gvrz_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__gvrz_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gvrz_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__gvrz_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__gvrz_uur]  DEFAULT ('') FOR [gvrz_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__gvrzodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__gvrzodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gvrzodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__gvrzouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__gvrzouur]  DEFAULT ('') FOR [gvrzouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__vrz__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__vrz__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrz__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__vrz__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__vrz__uur]  DEFAULT ('') FOR [vrz__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__elecbest]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__elecbest]  DEFAULT ('') FOR [elecbest]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fiat__ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fiat__ok]  DEFAULT ('') FOR [fiat__ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fiat_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fiat_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fiat_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fiat_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fiat_uur]  DEFAULT ('') FOR [fiat_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fiat_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fiat_usr]  DEFAULT ('') FOR [fiat_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fiat_com]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fiat_com]  DEFAULT ('') FOR [fiat_com]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fiat_num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fiat_num]  DEFAULT ('') FOR [fiat_num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval11]  DEFAULT ('') FOR [tstval11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval12]  DEFAULT ('') FOR [tstval12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval13]  DEFAULT ('') FOR [tstval13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval14]  DEFAULT ('') FOR [tstval14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval15]  DEFAULT ('') FOR [tstval15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval16]  DEFAULT ('') FOR [tstval16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval17]  DEFAULT ('') FOR [tstval17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval18]  DEFAULT ('') FOR [tstval18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval19]  DEFAULT ('') FOR [tstval19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__tstval20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__tstval20]  DEFAULT ('') FOR [tstval20]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__gaant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__gaant___]  DEFAULT ((0)) FOR [gaant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__gaant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__gaant_kg]  DEFAULT ((0)) FOR [gaant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__laant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__laant___]  DEFAULT ((0)) FOR [laant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__laant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__laant_kg]  DEFAULT ((0)) FOR [laant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__faant_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__faant_kg]  DEFAULT ((0)) FOR [faant_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__pak__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__pak__oms]  DEFAULT ('') FOR [pak__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__pak__inh]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__pak__inh]  DEFAULT ((0)) FOR [pak__inh]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__drg_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__drg_prys]  DEFAULT ('') FOR [drg_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__bpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__bpri__vm]  DEFAULT ((0)) FOR [bpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__bpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__bpri__bm]  DEFAULT ((0)) FOR [bpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__bpri__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__bpri__om]  DEFAULT ((0)) FOR [bpri__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__bprik_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__bprik_vm]  DEFAULT ((0)) FOR [bprik_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__bprik_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__bprik_bm]  DEFAULT ((0)) FOR [bprik_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__bprik_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__bprik_om]  DEFAULT ((0)) FOR [bprik_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fpri__vm]  DEFAULT ((0)) FOR [fpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fpri__bm]  DEFAULT ((0)) FOR [fpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fpri__om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fpri__om]  DEFAULT ((0)) FOR [fpri__om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fprik_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fprik_vm]  DEFAULT ((0)) FOR [fprik_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fprik_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fprik_bm]  DEFAULT ((0)) FOR [fprik_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fprik_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fprik_om]  DEFAULT ((0)) FOR [fprik_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__totfp_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__totfp_vm]  DEFAULT ((0)) FOR [totfp_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__totfp_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__totfp_bm]  DEFAULT ((0)) FOR [totfp_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__totfp_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__totfp_om]  DEFAULT ((0)) FOR [totfp_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__teofk_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__teofk_bm]  DEFAULT ((0)) FOR [teofk_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fprto2vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fprto2vm]  DEFAULT ((0)) FOR [fprto2vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fprto2bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fprto2bm]  DEFAULT ((0)) FOR [fprto2bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__fprto2om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__fprto2om]  DEFAULT ((0)) FOR [fprto2om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__totbp_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__totbp_bm]  DEFAULT ((0)) FOR [totbp_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__totbp_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__totbp_vm]  DEFAULT ((0)) FOR [totbp_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__totlp_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__totlp_bm]  DEFAULT ((0)) FOR [totlp_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__totlp_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__totlp_vm]  DEFAULT ((0)) FOR [totlp_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__aktr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__aktr_ref]  DEFAULT ('') FOR [aktr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_grsbon__salesgroup_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[grsbon__] ADD  CONSTRAINT [DF_grsbon__salesgroup_id]  DEFAULT ('') FOR [salesgroup_id]
END

