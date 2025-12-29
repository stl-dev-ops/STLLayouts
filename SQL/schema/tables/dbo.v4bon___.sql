SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v4bon___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v4bon___](
	[bon__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bon__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[klgr_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[knp__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrt__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommiss_] [float] NOT NULL,
	[kommiss2] [float] NOT NULL,
	[rfrt_kla] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[ktrk_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[funktie_] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[int_cont] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[afdr_dat] [date] NOT NULL,
	[best_dat] [date] NOT NULL,
	[leverdat] [date] NOT NULL,
	[leverkod] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[opvlgdat] [date] NOT NULL,
	[aanvrdat] [date] NOT NULL,
	[geld_dat] [date] NOT NULL,
	[krit___1] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[krit___2] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[voorz_bd] [float] NOT NULL,
	[concu_bd] [float] NOT NULL,
	[bn2__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bn2__dat] [date] NOT NULL,
	[vorigord] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prkl_ref] [nvarchar](12) COLLATE Latin1_General_CI_AS NOT NULL,
	[ean___nr] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment3] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommext1] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommext2] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommext3] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[lok__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[naam____] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[dienst__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[straat__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[wijk____] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[land_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[county__] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[state___] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[post_ref] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[postnaam] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpb_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpb_nam] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpb_vnm] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpb_sex] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[knpblett] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[taal_ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefax_] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telefoon] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[telex___] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[dgbk_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[bestmail] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[best_fax] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wordnr__] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[lulnr___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[fax___dr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[faxknpdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[faxpkpdr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fax__pkp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[fax__knp] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[betk_ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[levvwref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev___vw] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[munt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_dec] [int] NOT NULL,
	[koersvkp] [float] NOT NULL,
	[varia___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[optie___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user2___] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[funktie2] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[verantw_] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[pltsbedr] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toonwyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_prys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_supp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[brf_oplv] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oms__pap] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[labelbrf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[exists__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gedrukt_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rek_staf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[mn___opl] [int] NOT NULL,
	[mx___opl] [int] NOT NULL,
	[crea_ori] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[apv__src] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[salesorders_default_stafprys] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
 CONSTRAINT [v4bon_i1] PRIMARY KEY CLUSTERED 
(
	[bon__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4bon___]') AND name = N'v4bon_i2')
CREATE NONCLUSTERED INDEX [v4bon_i2] ON [dbo].[v4bon___]
(
	[kla__ref] ASC,
	[knp__ref] ASC,
	[tst__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v4bon___]') AND name = N'v4bon_i3')
CREATE NONCLUSTERED INDEX [v4bon_i3] ON [dbo].[v4bon___]
(
	[best_dat] ASC,
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___bon__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___bon__ref]  DEFAULT ('') FOR [bon__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___bon__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___bon__rpn]  DEFAULT ('') FOR [bon__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___klgr_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___klgr_ref]  DEFAULT ('') FOR [klgr_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___knp__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___knp__ref]  DEFAULT ('') FOR [knp__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___vrt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___vrt__ref]  DEFAULT ('') FOR [vrt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___kommiss_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___kommiss_]  DEFAULT ((0)) FOR [kommiss_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___kommiss2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___kommiss2]  DEFAULT ((0)) FOR [kommiss2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___rfrt_kla]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___rfrt_kla]  DEFAULT ('') FOR [rfrt_kla]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___ktrk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___ktrk_ref]  DEFAULT ('') FOR [ktrk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___funktie_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___funktie_]  DEFAULT ('') FOR [funktie_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___int_cont]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___int_cont]  DEFAULT ('') FOR [int_cont]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___afdr_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___afdr_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [afdr_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___best_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___best_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [best_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___leverdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___leverdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [leverdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___leverkod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___leverkod]  DEFAULT ('') FOR [leverkod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___opvlgdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___opvlgdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [opvlgdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___aanvrdat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___aanvrdat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [aanvrdat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___geld_dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___geld_dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [geld_dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___krit___1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___krit___1]  DEFAULT ('') FOR [krit___1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___krit___2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___krit___2]  DEFAULT ('') FOR [krit___2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tst__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tst__ref]  DEFAULT ('') FOR [tst__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___voorz_bd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___voorz_bd]  DEFAULT ((0)) FOR [voorz_bd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___concu_bd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___concu_bd]  DEFAULT ((0)) FOR [concu_bd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___bn2__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___bn2__ref]  DEFAULT ('') FOR [bn2__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___bn2__dat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___bn2__dat]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [bn2__dat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___vorigord]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___vorigord]  DEFAULT ('') FOR [vorigord]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___prkl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___prkl_ref]  DEFAULT ('') FOR [prkl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___ean___nr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___ean___nr]  DEFAULT ('') FOR [ean___nr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___komment3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___komment3]  DEFAULT ('') FOR [komment3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___kommext1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___kommext1]  DEFAULT ('') FOR [kommext1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___kommext2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___kommext2]  DEFAULT ('') FOR [kommext2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___kommext3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___kommext3]  DEFAULT ('') FOR [kommext3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___lok__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___lok__ref]  DEFAULT ('') FOR [lok__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___naam____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___naam____]  DEFAULT ('') FOR [naam____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___dienst__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___dienst__]  DEFAULT ('') FOR [dienst__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___straat__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___straat__]  DEFAULT ('') FOR [straat__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___wijk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___wijk____]  DEFAULT ('') FOR [wijk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___land_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___land_ref]  DEFAULT ('') FOR [land_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___county__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___county__]  DEFAULT ('') FOR [county__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___state___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___state___]  DEFAULT ('') FOR [state___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___post_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___post_ref]  DEFAULT ('') FOR [post_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___postnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___postnaam]  DEFAULT ('') FOR [postnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___knpb_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___knpb_ref]  DEFAULT ('') FOR [knpb_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___knpb_nam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___knpb_nam]  DEFAULT ('') FOR [knpb_nam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___knpb_vnm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___knpb_vnm]  DEFAULT ('') FOR [knpb_vnm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___knpb_sex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___knpb_sex]  DEFAULT ('') FOR [knpb_sex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___knpblett]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___knpblett]  DEFAULT ('') FOR [knpblett]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___taal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___taal_ref]  DEFAULT ('') FOR [taal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___telefax_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___telefax_]  DEFAULT ('') FOR [telefax_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___telefoon]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___telefoon]  DEFAULT ('') FOR [telefoon]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___telex___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___telex___]  DEFAULT ('') FOR [telex___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___dgbk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___dgbk_ref]  DEFAULT ('') FOR [dgbk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___bestmail]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___bestmail]  DEFAULT ('') FOR [bestmail]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___best_fax]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___best_fax]  DEFAULT ('') FOR [best_fax]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___wordnr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___wordnr__]  DEFAULT ('') FOR [wordnr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___lulnr___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___lulnr___]  DEFAULT ('') FOR [lulnr___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___fax___dr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___fax___dr]  DEFAULT ('') FOR [fax___dr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___faxknpdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___faxknpdr]  DEFAULT ('') FOR [faxknpdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___faxpkpdr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___faxpkpdr]  DEFAULT ('') FOR [faxpkpdr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___fax__pkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___fax__pkp]  DEFAULT ('') FOR [fax__pkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___fax__knp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___fax__knp]  DEFAULT ('') FOR [fax__knp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___betk_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___betk_ref]  DEFAULT ('') FOR [betk_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___levvwref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___levvwref]  DEFAULT ('') FOR [levvwref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___lev___vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___lev___vw]  DEFAULT ('') FOR [lev___vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___munt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___munt_ref]  DEFAULT ('') FOR [munt_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___aant_dec]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___aant_dec]  DEFAULT ((0)) FOR [aant_dec]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___koersvkp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___koersvkp]  DEFAULT ((0)) FOR [koersvkp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___varia___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___varia___]  DEFAULT ('') FOR [varia___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___optie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___optie___]  DEFAULT ('') FOR [optie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___user2___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___user2___]  DEFAULT ('') FOR [user2___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___funktie2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___funktie2]  DEFAULT ('') FOR [funktie2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___verantw_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___verantw_]  DEFAULT ('') FOR [verantw_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___pltsbedr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___pltsbedr]  DEFAULT ('') FOR [pltsbedr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___toonwyze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___toonwyze]  DEFAULT ('') FOR [toonwyze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___brf_prys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___brf_prys]  DEFAULT ('') FOR [brf_prys]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___brf_supp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___brf_supp]  DEFAULT ('') FOR [brf_supp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___brf_oplv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___brf_oplv]  DEFAULT ('') FOR [brf_oplv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___oms__pap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___oms__pap]  DEFAULT ('') FOR [oms__pap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___labelbrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___labelbrf]  DEFAULT ('') FOR [labelbrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___exists__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___exists__]  DEFAULT ('') FOR [exists__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___gedrukt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___gedrukt_]  DEFAULT ('') FOR [gedrukt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___rek_staf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___rek_staf]  DEFAULT ('') FOR [rek_staf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___mn___opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___mn___opl]  DEFAULT ((0)) FOR [mn___opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___mx___opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___mx___opl]  DEFAULT ((0)) FOR [mx___opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___crea_ori]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___crea_ori]  DEFAULT ('') FOR [crea_ori]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___apv__src]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___apv__src]  DEFAULT ('') FOR [apv__src]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval01]  DEFAULT ('') FOR [tstval01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval02]  DEFAULT ('') FOR [tstval02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval03]  DEFAULT ('') FOR [tstval03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval04]  DEFAULT ('') FOR [tstval04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval05]  DEFAULT ('') FOR [tstval05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval06]  DEFAULT ('') FOR [tstval06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval07]  DEFAULT ('') FOR [tstval07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval08]  DEFAULT ('') FOR [tstval08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval09]  DEFAULT ('') FOR [tstval09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___tstval10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___tstval10]  DEFAULT ('') FOR [tstval10]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v4bon___salesorders_default_stafprys]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v4bon___] ADD  CONSTRAINT [DF_v4bon___salesorders_default_stafprys]  DEFAULT ('0') FOR [salesorders_default_stafprys]
END

