SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[trnlyn__](
	[trnd_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgnr__] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[redo_tlr] [int] NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[lyn__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[bsbonref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn1_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn1_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok1_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp1_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn2_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn2_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok2_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp2_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrzv_dat] [date] NOT NULL,
	[vrzv_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrz__dat] [date] NOT NULL,
	[vrz__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laad_dat] [date] NOT NULL,
	[laad_uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[laaduser] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[fac__dat] [date] NOT NULL,
	[gewicht_] [float] NOT NULL,
	[aantal__] [float] NOT NULL,
	[aant_pak] [float] NOT NULL,
	[aant_pal] [float] NOT NULL,
	[trsp_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trsp_rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[zyn__ref] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[comment_] [nvarchar](250) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[ord__kst] [float] NOT NULL,
	[vrztotvm] [float] NOT NULL,
	[vrztotbm] [float] NOT NULL,
	[factotvm] [float] NOT NULL,
	[factotbm] [float] NOT NULL,
	[kst_fact] [float] NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnredi] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rbk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trng2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__dat] [date] NOT NULL,
	[lev__uur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ontvang_] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[levtrcom] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnb_ref] [nvarchar](14) COLLATE Latin1_General_CI_AS NOT NULL,
	[shaperef] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[var__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[trn_packing_id] [int] NULL,
	[trackurl] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[crea_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[creation_time] [datetime2](3) NOT NULL,
	[last_edit_usr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[last_edit_time] [datetime2](3) NOT NULL,
	[edi__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi__opm] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[edishpid] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[edishpid2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[edi_submit_timestamp] [datetime2](3) NOT NULL,
	[edi_transmit_timestamp] [datetime2](3) NOT NULL,
	[editrref] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[editttst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[edittopm] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [trnlyn_1] PRIMARY KEY CLUSTERED 
(
	[trnd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND name = N'trnlyn_2')
CREATE NONCLUSTERED INDEX [trnlyn_2] ON [dbo].[trnlyn__]
(
	[lyn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND name = N'trnlyn_4')
CREATE NONCLUSTERED INDEX [trnlyn_4] ON [dbo].[trnlyn__]
(
	[bsbonref] ASC,
	[type____] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND name = N'trnlyn_5')
CREATE NONCLUSTERED INDEX [trnlyn_5] ON [dbo].[trnlyn__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND name = N'trnlyn_6')
CREATE NONCLUSTERED INDEX [trnlyn_6] ON [dbo].[trnlyn__]
(
	[trn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND name = N'trnlyn_7')
CREATE NONCLUSTERED INDEX [trnlyn_7] ON [dbo].[trnlyn__]
(
	[trnb_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND name = N'trnlyn_8')
CREATE NONCLUSTERED INDEX [trnlyn_8] ON [dbo].[trnlyn__]
(
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND name = N'trnlyn_9')
CREATE NONCLUSTERED INDEX [trnlyn_9] ON [dbo].[trnlyn__]
(
	[type____] ASC,
	[shaperef] ASC,
	[var__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[trnlyn__]') AND name = N'trnlyn_a')
CREATE NONCLUSTERED INDEX [trnlyn_a] ON [dbo].[trnlyn__]
(
	[edishpid2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trnd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trnd_ref]  DEFAULT ('') FOR [trnd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trn__ref]  DEFAULT ('') FOR [trn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__volgnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__volgnr__]  DEFAULT ('') FOR [volgnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__type____]  DEFAULT ('0') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__redo_tlr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__redo_tlr]  DEFAULT ((0)) FOR [redo_tlr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__toestand]  DEFAULT ('1') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__ord__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__ord__tst]  DEFAULT ('1') FOR [ord__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__fac__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__fac__tst]  DEFAULT ('1') FOR [fac__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__lyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__lyn__ref]  DEFAULT ('') FOR [lyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__bsbonref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__bsbonref]  DEFAULT ('') FOR [bsbonref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trn1_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trn1_typ]  DEFAULT ('1') FOR [trn1_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trn1_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trn1_srt]  DEFAULT ('3') FOR [trn1_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__kla1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__kla1_ref]  DEFAULT ('') FOR [kla1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__lev1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__lev1_ref]  DEFAULT ('') FOR [lev1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__lok1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__lok1_ref]  DEFAULT ('') FOR [lok1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__knp1_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__knp1_ref]  DEFAULT ('') FOR [knp1_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trn2_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trn2_typ]  DEFAULT ('1') FOR [trn2_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trn2_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trn2_srt]  DEFAULT ('3') FOR [trn2_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__kla2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__kla2_ref]  DEFAULT ('') FOR [kla2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__lev2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__lev2_ref]  DEFAULT ('') FOR [lev2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__lok2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__lok2_ref]  DEFAULT ('') FOR [lok2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__knp2_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__knp2_ref]  DEFAULT ('') FOR [knp2_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__vrzv_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__vrzv_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrzv_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__vrzv_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__vrzv_uur]  DEFAULT ('') FOR [vrzv_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__vrz__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__vrz__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [vrz__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__vrz__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__vrz__uur]  DEFAULT ('') FOR [vrz__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__laad_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__laad_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [laad_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__laad_uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__laad_uur]  DEFAULT ('') FOR [laad_uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__laaduser]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__laaduser]  DEFAULT ('') FOR [laaduser]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__fac__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__fac__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [fac__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__gewicht_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__gewicht_]  DEFAULT ((0)) FOR [gewicht_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__aant_pak]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__aant_pak]  DEFAULT ((0)) FOR [aant_pak]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__aant_pal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__aant_pal]  DEFAULT ((0)) FOR [aant_pal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trsp_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trsp_ref]  DEFAULT ('') FOR [trsp_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trsp_rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trsp_rpn]  DEFAULT ('') FOR [trsp_rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__zyn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__zyn__ref]  DEFAULT ('') FOR [zyn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__comment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__comment_]  DEFAULT ('') FOR [comment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__koers___]  DEFAULT ((1)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__ord__kst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__ord__kst]  DEFAULT ((0)) FOR [ord__kst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__vrztotvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__vrztotvm]  DEFAULT ((0)) FOR [vrztotvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__vrztotbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__vrztotbm]  DEFAULT ((0)) FOR [vrztotbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__factotvm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__factotvm]  DEFAULT ((0)) FOR [factotvm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__factotbm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__factotbm]  DEFAULT ((0)) FOR [factotbm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__kst_fact]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__kst_fact]  DEFAULT ((0)) FOR [kst_fact]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__produktf]  DEFAULT ('0') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__jobnredi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__jobnredi]  DEFAULT ('') FOR [jobnredi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__rbk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__rbk__ref]  DEFAULT ('') FOR [rbk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trng2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trng2ref]  DEFAULT ('') FOR [trng2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__lev__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__lev__tst]  DEFAULT ('N') FOR [lev__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__lev__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__lev__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [lev__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__lev__uur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__lev__uur]  DEFAULT ('') FOR [lev__uur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__ontvang_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__ontvang_]  DEFAULT ('') FOR [ontvang_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__levtrcom]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__levtrcom]  DEFAULT ('') FOR [levtrcom]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trnb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trnb_ref]  DEFAULT ('') FOR [trnb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__shaperef]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__shaperef]  DEFAULT ('') FOR [shaperef]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__var__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__var__ref]  DEFAULT ('') FOR [var__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__trackurl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__trackurl]  DEFAULT ('') FOR [trackurl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__crea_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__crea_usr]  DEFAULT ('') FOR [crea_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__creation_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__creation_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [creation_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__last_edit_usr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__last_edit_usr]  DEFAULT ('') FOR [last_edit_usr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__last_edit_time]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__last_edit_time]  DEFAULT (CONVERT([datetime2](3),sysdatetime(),(112))) FOR [last_edit_time]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__edi__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__edi__tst]  DEFAULT ('1') FOR [edi__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__edi__opm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__edi__opm]  DEFAULT ('') FOR [edi__opm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__edishpid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__edishpid]  DEFAULT ('') FOR [edishpid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__edishpid2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__edishpid2]  DEFAULT ('') FOR [edishpid2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__edi_submit_timestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__edi_submit_timestamp]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [edi_submit_timestamp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__edi_transmit_timestamp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__edi_transmit_timestamp]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [edi_transmit_timestamp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__editrref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__editrref]  DEFAULT ('') FOR [editrref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__editttst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__editttst]  DEFAULT ('1') FOR [editttst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trnlyn__edittopm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trnlyn__] ADD  CONSTRAINT [DF_trnlyn__edittopm]  DEFAULT ('') FOR [edittopm]
END

