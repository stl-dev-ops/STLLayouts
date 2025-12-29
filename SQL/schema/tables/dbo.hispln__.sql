SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hispln__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hispln__](
	[pldv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etap_ref] [nvarchar](7) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[datum___] [date] NOT NULL,
	[start___] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[datumend] [date] NOT NULL,
	[stop____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[weeknum_] [int] NOT NULL,
	[planvast] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__min] [date] NOT NULL,
	[sta__min] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat__max] [date] NOT NULL,
	[sta__max] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[valide__] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pmd__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[orgdatum] [date] NOT NULL,
	[orgstart] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__date] [date] NOT NULL,
	[af__uur_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__user] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__wyze] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[af__duur] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_vw] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[scheduling_optimization_id] [nvarchar](200) COLLATE Latin1_General_CI_AS NOT NULL,
	[wissels_comment] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[action_group_id] [nvarchar](64) COLLATE Latin1_General_CI_AS NOT NULL,
	[action_set_id] [nvarchar](64) COLLATE Latin1_General_CI_AS NOT NULL,
	[action_sequence_in_set] [int] NOT NULL,
	[custom_status] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id1_hpln] PRIMARY KEY CLUSTERED 
(
	[pldv_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hispln__]') AND name = N'id2_hpln')
CREATE NONCLUSTERED INDEX [id2_hpln] ON [dbo].[hispln__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hispln__]') AND name = N'id3_hpln')
CREATE NONCLUSTERED INDEX [id3_hpln] ON [dbo].[hispln__]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hispln__]') AND name = N'id4_hpln')
CREATE NONCLUSTERED INDEX [id4_hpln] ON [dbo].[hispln__]
(
	[plpl_ref] ASC,
	[datum___] ASC,
	[toestand] ASC,
	[datumend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__pldv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__pldv_ref]  DEFAULT ('') FOR [pldv_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__etap_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__etap_ref]  DEFAULT ('') FOR [etap_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__aktie___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__aktie___]  DEFAULT ('') FOR [aktie___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__priorite]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__priorite]  DEFAULT ((0)) FOR [priorite]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__druk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__druk____]  DEFAULT ('') FOR [druk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__plan__iu]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__plan__iu]  DEFAULT ('') FOR [plan__iu]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__plpl_cal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__plpl_cal]  DEFAULT ('') FOR [plpl_cal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__duur____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__duur____]  DEFAULT ('') FOR [duur____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__duurstel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__duurstel]  DEFAULT ('') FOR [duurstel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__duurprod]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__duurprod]  DEFAULT ('') FOR [duurprod]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__wissels_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__wissels_]  DEFAULT ('') FOR [wissels_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__pln_tm__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__pln_tm__]  DEFAULT ('') FOR [pln_tm__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__pln_dt__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__pln_dt__]  DEFAULT ('') FOR [pln_dt__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__pln_dd__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__pln_dd__]  DEFAULT ((0)) FOR [pln_dd__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment3]  DEFAULT ('') FOR [komment3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment4]  DEFAULT ('') FOR [komment4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment5]  DEFAULT ('') FOR [komment5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment6]  DEFAULT ('') FOR [komment6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment7]  DEFAULT ('') FOR [komment7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment8]  DEFAULT ('') FOR [komment8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__komment9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__komment9]  DEFAULT ('') FOR [komment9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__start___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__start___]  DEFAULT ('') FOR [start___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__datumend]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__datumend]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datumend]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__stop____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__stop____]  DEFAULT ('') FOR [stop____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__weeknum_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__weeknum_]  DEFAULT ((0)) FOR [weeknum_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__planvast]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__planvast]  DEFAULT ('') FOR [planvast]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__dat__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__dat__min]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__sta__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__sta__min]  DEFAULT ('') FOR [sta__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__dat__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__dat__max]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__sta__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__sta__max]  DEFAULT ('') FOR [sta__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__valide__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__valide__]  DEFAULT ('') FOR [valide__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__pmd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__pmd__ref]  DEFAULT ('') FOR [pmd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__orgdatum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__orgdatum]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [orgdatum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__orgstart]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__orgstart]  DEFAULT ('') FOR [orgstart]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__af__date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__af__date]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [af__date]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__af__uur_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__af__uur_]  DEFAULT ('') FOR [af__uur_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__af__user]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__af__user]  DEFAULT ('') FOR [af__user]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__af__wyze]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__af__wyze]  DEFAULT ('') FOR [af__wyze]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__af__duur]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__af__duur]  DEFAULT ('') FOR [af__duur]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__jobnr_vw]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__jobnr_vw]  DEFAULT ('') FOR [jobnr_vw]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__scheduling_optimization_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__scheduling_optimization_id]  DEFAULT ('') FOR [scheduling_optimization_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__wissels_comment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__wissels_comment]  DEFAULT ('') FOR [wissels_comment]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__action_group_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__action_group_id]  DEFAULT ('') FOR [action_group_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__action_set_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__action_set_id]  DEFAULT ('') FOR [action_set_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__action_sequence_in_set]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__action_sequence_in_set]  DEFAULT ((0)) FOR [action_sequence_in_set]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hispln__custom_status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hispln__] ADD  CONSTRAINT [DF_hispln__custom_status]  DEFAULT ((0)) FOR [custom_status]
END

