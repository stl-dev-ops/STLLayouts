SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aprlyn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aprlyn__](
	[grbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[gvrz_dat] [date] NOT NULL,
	[gvrz_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[gvrzodat] [date] NOT NULL,
	[gvrzouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__dat] [date] NOT NULL,
	[vrz__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[glev_dat] [date] NOT NULL,
	[glev_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[glevodat] [date] NOT NULL,
	[glevouur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[levr_dat] [date] NOT NULL,
	[levr_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_dat] [date] NOT NULL,
	[fiat_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_num] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval01] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval02] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval03] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval04] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tstval05] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[baant___] [float] NOT NULL,
	[laant___] [float] NOT NULL,
	[faant___] [float] NOT NULL,
	[bpri__vm] [float] NOT NULL,
	[bpri__bm] [float] NOT NULL,
	[fpri__vm] [float] NOT NULL,
	[fpri__bm] [float] NOT NULL,
	[btot__vm] [float] NOT NULL,
	[btot__bm] [float] NOT NULL,
	[ltot__vm] [float] NOT NULL,
	[ltot__bm] [float] NOT NULL,
	[ftot__vm] [float] NOT NULL,
	[ftot__bm] [float] NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant__e2] [float] NOT NULL,
	[aant__e3] [float] NOT NULL,
	[aant__e4] [float] NOT NULL,
	[aant__e5] [float] NOT NULL,
	[afr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
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
 CONSTRAINT [aprlyni0] PRIMARY KEY CLUSTERED 
(
	[lyn__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aprlyn__]') AND name = N'aprlyni1')
CREATE NONCLUSTERED INDEX [aprlyni1] ON [dbo].[aprlyn__]
(
	[afg__ref] ASC,
	[lev__tst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aprlyn__]') AND name = N'aprlyni2')
CREATE NONCLUSTERED INDEX [aprlyni2] ON [dbo].[aprlyn__]
(
	[grbonref] ASC,
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aprlyn__]') AND name = N'aprlyni3')
CREATE NONCLUSTERED INDEX [aprlyni3] ON [dbo].[aprlyn__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[aprlyn__]') AND name = N'aprlyni4')
CREATE NONCLUSTERED INDEX [aprlyni4] ON [dbo].[aprlyn__]
(
	[afr__ref] ASC,
	[grbonref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__grbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__grbonref]  DEFAULT ('') FOR [grbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__lev__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__lev__rpn]  DEFAULT ('') FOR [lev__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__fiat_tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__fiat_tst]  DEFAULT ('0') FOR [fiat_tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__lev__tst]  DEFAULT ('1') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__fac__tst]  DEFAULT ('1') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__trnt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__trnt_ref]  DEFAULT ('') FOR [trnt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__gvrz_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__gvrz_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gvrz_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__gvrz_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__gvrz_uur]  DEFAULT ('  0:00') FOR [gvrz_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__gvrzodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__gvrzodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [gvrzodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__gvrzouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__gvrzouur]  DEFAULT ('  0:00') FOR [gvrzouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__vrz__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__vrz__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrz__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__vrz__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__vrz__uur]  DEFAULT ('  0:00') FOR [vrz__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__glev_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__glev_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [glev_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__glev_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__glev_uur]  DEFAULT ('  0:00') FOR [glev_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__glevodat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__glevodat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [glevodat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__glevouur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__glevouur]  DEFAULT ('  0:00') FOR [glevouur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__levr_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__levr_dat]  DEFAULT (CONVERT([date],'20491231',(112))) FOR [levr_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__levr_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__levr_uur]  DEFAULT ('  0:00') FOR [levr_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__fiat_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__fiat_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fiat_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__fiat_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__fiat_uur]  DEFAULT ('  0:00') FOR [fiat_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__fiat_num]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__fiat_num]  DEFAULT ('') FOR [fiat_num]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__comment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__comment2]  DEFAULT ('') FOR [comment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__aant_dec]  DEFAULT ((2)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__baant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__baant___]  DEFAULT ((0)) FOR [baant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__laant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__laant___]  DEFAULT ((0)) FOR [laant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__faant___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__faant___]  DEFAULT ((0)) FOR [faant___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__bpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__bpri__vm]  DEFAULT ((0)) FOR [bpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__bpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__bpri__bm]  DEFAULT ((0)) FOR [bpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__fpri__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__fpri__vm]  DEFAULT ((0)) FOR [fpri__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__fpri__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__fpri__bm]  DEFAULT ((0)) FOR [fpri__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__btot__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__btot__vm]  DEFAULT ((0)) FOR [btot__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__btot__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__btot__bm]  DEFAULT ((0)) FOR [btot__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__ltot__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__ltot__vm]  DEFAULT ((0)) FOR [ltot__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__ltot__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__ltot__bm]  DEFAULT ((0)) FOR [ltot__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__ftot__vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__ftot__vm]  DEFAULT ((0)) FOR [ftot__vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__ftot__bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__ftot__bm]  DEFAULT ((0)) FOR [ftot__bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__aant__e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__aant__e2]  DEFAULT ((0)) FOR [aant__e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__aant__e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__aant__e3]  DEFAULT ((0)) FOR [aant__e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__aant__e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__aant__e4]  DEFAULT ((0)) FOR [aant__e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__aant__e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__aant__e5]  DEFAULT ((0)) FOR [aant__e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__afr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__afr__ref]  DEFAULT ('') FOR [afr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval11]  DEFAULT ('') FOR [tstval11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval12]  DEFAULT ('') FOR [tstval12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval13]  DEFAULT ('') FOR [tstval13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval14]  DEFAULT ('') FOR [tstval14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval15]  DEFAULT ('') FOR [tstval15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval16]  DEFAULT ('') FOR [tstval16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval17]  DEFAULT ('') FOR [tstval17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval18]  DEFAULT ('') FOR [tstval18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval19]  DEFAULT ('') FOR [tstval19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aprlyn__tstval20]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aprlyn__] ADD  CONSTRAINT [DF_aprlyn__tstval20]  DEFAULT ('') FOR [tstval20]
END

