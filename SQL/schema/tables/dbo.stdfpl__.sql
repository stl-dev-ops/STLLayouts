SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stdfpl__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stdfpl__](
	[fpl__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fpl__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt11] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt21] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt12] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt22] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt13] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt23] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt14] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt24] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt15] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt25] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt16] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt26] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt17] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt27] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt18] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt28] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt19] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fkttxt29] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant3] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant4] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant5] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant6] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant7] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant8] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[omsaant9] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[prys_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [int] NOT NULL,
	[kort_pct] [float] NOT NULL,
	[eigenbtw] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[stx__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kort_mog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[komm_mog] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ordergeb] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[verplich] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[priorite] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[prijs_bm] [float] NOT NULL,
	[prijs_vm] [float] NOT NULL,
	[prijs_om] [float] NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koers___] [float] NOT NULL,
	[use_arek] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[areksys1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[areksys2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[areksys3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[areksys4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[areksys5] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[areksys6] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[areksys7] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv1ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv2ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[aniv3ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[afdruk__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[kolom_10] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [stdfpli0] PRIMARY KEY CLUSTERED 
(
	[ktrk_ref] ASC,
	[fpl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[stdfpl__]') AND name = N'stdfpli1')
CREATE UNIQUE NONCLUSTERED INDEX [stdfpli1] ON [dbo].[stdfpl__]
(
	[ktrk_ref] ASC,
	[fpl__rpn] ASC,
	[fpl__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fpl__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fpl__ref]  DEFAULT ('') FOR [fpl__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fpl__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fpl__rpn]  DEFAULT ('') FOR [fpl__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt11]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt11]  DEFAULT ('') FOR [fkttxt11]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt21]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt21]  DEFAULT ('') FOR [fkttxt21]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt12]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt12]  DEFAULT ('') FOR [fkttxt12]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt22]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt22]  DEFAULT ('') FOR [fkttxt22]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt13]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt13]  DEFAULT ('') FOR [fkttxt13]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt23]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt23]  DEFAULT ('') FOR [fkttxt23]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt14]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt14]  DEFAULT ('') FOR [fkttxt14]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt24]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt24]  DEFAULT ('') FOR [fkttxt24]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt15]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt15]  DEFAULT ('') FOR [fkttxt15]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt25]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt25]  DEFAULT ('') FOR [fkttxt25]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt16]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt16]  DEFAULT ('') FOR [fkttxt16]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt26]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt26]  DEFAULT ('') FOR [fkttxt26]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt17]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt17]  DEFAULT ('') FOR [fkttxt17]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt27]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt27]  DEFAULT ('') FOR [fkttxt27]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt18]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt18]  DEFAULT ('') FOR [fkttxt18]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt28]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt28]  DEFAULT ('') FOR [fkttxt28]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt19]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt19]  DEFAULT ('') FOR [fkttxt19]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__fkttxt29]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__fkttxt29]  DEFAULT ('') FOR [fkttxt29]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant1]  DEFAULT ('') FOR [omsaant1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant2]  DEFAULT ('') FOR [omsaant2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant3]  DEFAULT ('') FOR [omsaant3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant4]  DEFAULT ('') FOR [omsaant4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant5]  DEFAULT ('') FOR [omsaant5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant6]  DEFAULT ('') FOR [omsaant6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant7]  DEFAULT ('') FOR [omsaant7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant8]  DEFAULT ('') FOR [omsaant8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__omsaant9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__omsaant9]  DEFAULT ('') FOR [omsaant9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__prys_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__prys_srt]  DEFAULT ('') FOR [prys_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__kort_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__kort_pct]  DEFAULT ((0)) FOR [kort_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__eigenbtw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__eigenbtw]  DEFAULT ('') FOR [eigenbtw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__btw_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__btw_____]  DEFAULT ('') FOR [btw_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__stx__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__stx__srt]  DEFAULT ('') FOR [stx__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__kort_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__kort_mog]  DEFAULT ('') FOR [kort_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__komm_mog]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__komm_mog]  DEFAULT ('') FOR [komm_mog]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__ordergeb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__ordergeb]  DEFAULT ('') FOR [ordergeb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__verplich]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__verplich]  DEFAULT ('') FOR [verplich]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__priorite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__priorite]  DEFAULT ('') FOR [priorite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__prijs_bm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__prijs_bm]  DEFAULT ((0)) FOR [prijs_bm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__prijs_vm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__prijs_vm]  DEFAULT ((0)) FOR [prijs_vm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__prijs_om]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__prijs_om]  DEFAULT ((0)) FOR [prijs_om]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__koers___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__koers___]  DEFAULT ((0)) FOR [koers___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__use_arek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__use_arek]  DEFAULT ('') FOR [use_arek]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__arek_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__arek_srt]  DEFAULT ('') FOR [arek_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__areksys1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__areksys1]  DEFAULT ('') FOR [areksys1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__areksys2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__areksys2]  DEFAULT ('') FOR [areksys2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__areksys3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__areksys3]  DEFAULT ('') FOR [areksys3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__areksys4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__areksys4]  DEFAULT ('') FOR [areksys4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__areksys5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__areksys5]  DEFAULT ('') FOR [areksys5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__areksys6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__areksys6]  DEFAULT ('') FOR [areksys6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__areksys7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__areksys7]  DEFAULT ('') FOR [areksys7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__aniv1ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__aniv1ref]  DEFAULT ('') FOR [aniv1ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__aniv2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__aniv2ref]  DEFAULT ('') FOR [aniv2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__aniv3ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__aniv3ref]  DEFAULT ('') FOR [aniv3ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__afdruk__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__afdruk__]  DEFAULT ('') FOR [afdruk__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__oplage__]  DEFAULT ('') FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stdfpl__kolom_10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stdfpl__] ADD  CONSTRAINT [DF_stdfpl__kolom_10]  DEFAULT ('') FOR [kolom_10]
END

