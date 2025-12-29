SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stlOS_plandv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stlOS_plandv__](
	[stlOS_BatchID] [int] NOT NULL,
	[stlOS_Source] [int] NOT NULL,
	[pldv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[aktie___] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[priorite] [int] NOT NULL,
	[druk____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[plan__iu] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_cal] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[duur____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duurstel] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[duurprod] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wissels_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_tm__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dt__] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pln_dd__] [int] NOT NULL,
	[komment_] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment3] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment4] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment5] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment6] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment7] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment8] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment9] [nvarchar](80) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [datetime] NOT NULL,
	[start___] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datumend] [datetime] NOT NULL,
	[stop____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[weeknum_] [int] NOT NULL,
	[planvast] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__min] [datetime] NOT NULL,
	[sta__min] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__max] [datetime] NOT NULL,
	[sta__max] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[valide__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[orgdatum] [datetime] NOT NULL,
	[orgstart] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__date] [datetime] NOT NULL,
	[af__uur_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__user] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__wyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__duur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] NOT NULL,
	[etap_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
	[scheduling_optimization_id] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[wissels_comment] [nvarchar](max) COLLATE Latin1_General_CI_AS NULL,
	[startDateTime] [datetime] NOT NULL,
	[stopDateTime] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___stlOS_BatchID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___stlOS_BatchID]  DEFAULT ((0)) FOR [stlOS_BatchID]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___stlOS_Source]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___stlOS_Source]  DEFAULT ((0)) FOR [stlOS_Source]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___pldv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___pldv_ref]  DEFAULT ('') FOR [pldv_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___aktie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___aktie___]  DEFAULT ('') FOR [aktie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___priorite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___priorite]  DEFAULT ((0)) FOR [priorite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___druk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___druk____]  DEFAULT ('') FOR [druk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___plan__iu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___plan__iu]  DEFAULT ('') FOR [plan__iu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___plpl_cal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___plpl_cal]  DEFAULT ('') FOR [plpl_cal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___duur____]  DEFAULT ('') FOR [duur____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___duurstel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___duurstel]  DEFAULT ('') FOR [duurstel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___duurprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___duurprod]  DEFAULT ('') FOR [duurprod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___wissels_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___wissels_]  DEFAULT ('') FOR [wissels_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___pln_tm__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___pln_tm__]  DEFAULT ('') FOR [pln_tm__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___pln_dt__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___pln_dt__]  DEFAULT ('') FOR [pln_dt__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___pln_dd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___pln_dd__]  DEFAULT ((0)) FOR [pln_dd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment3]  DEFAULT ('') FOR [komment3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment4]  DEFAULT ('') FOR [komment4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment5]  DEFAULT ('') FOR [komment5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment6]  DEFAULT ('') FOR [komment6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment7]  DEFAULT ('') FOR [komment7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment8]  DEFAULT ('') FOR [komment8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___komment9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___komment9]  DEFAULT ('') FOR [komment9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___start___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___start___]  DEFAULT ('') FOR [start___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___datumend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___datumend]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datumend]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___stop____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___stop____]  DEFAULT ('') FOR [stop____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___weeknum_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___weeknum_]  DEFAULT ((0)) FOR [weeknum_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___planvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___planvast]  DEFAULT ('') FOR [planvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___dat__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___dat__min]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___sta__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___sta__min]  DEFAULT ('') FOR [sta__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___dat__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___dat__max]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___sta__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___sta__max]  DEFAULT ('') FOR [sta__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___valide__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___valide__]  DEFAULT ('') FOR [valide__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___pmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___pmd__ref]  DEFAULT ('') FOR [pmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___orgdatum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___orgdatum]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [orgdatum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___orgstart]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___orgstart]  DEFAULT ('') FOR [orgstart]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___af__date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___af__date]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [af__date]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___af__uur_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___af__uur_]  DEFAULT ('') FOR [af__uur_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___af__user]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___af__user]  DEFAULT ('') FOR [af__user]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___af__wyze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___af__wyze]  DEFAULT ('') FOR [af__wyze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___af__duur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___af__duur]  DEFAULT ('') FOR [af__duur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___etap_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___etap_ref]  DEFAULT ('') FOR [etap_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___scheduling_optimization_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___scheduling_optimization_id]  DEFAULT ('') FOR [scheduling_optimization_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___startDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___startDateTime]  DEFAULT (getdate()) FOR [startDateTime]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_stlOS_plandv___stopDateTime]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[stlOS_plandv__] ADD  CONSTRAINT [DF_stlOS_plandv___stopDateTime]  DEFAULT (getdate()) FOR [stopDateTime]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlOS_plandv___stlOS_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlOS_plandv__]'))
ALTER TABLE [dbo].[stlOS_plandv__]  WITH NOCHECK ADD  CONSTRAINT [FK_stlOS_plandv___stlOS_Batch] FOREIGN KEY([stlOS_BatchID])
REFERENCES [dbo].[stlOS_Batch] ([stlOS_BatchID])
ON DELETE CASCADE
NOT FOR REPLICATION 
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_stlOS_plandv___stlOS_Batch]') AND parent_object_id = OBJECT_ID(N'[dbo].[stlOS_plandv__]'))
ALTER TABLE [dbo].[stlOS_plandv__] CHECK CONSTRAINT [FK_stlOS_plandv___stlOS_Batch]
