SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hlfvrd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[hlfvrd__](
	[hlf__ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlff_ref] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[hlf_source] [nvarchar](9) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__ref] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[trnd_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[inh__oms] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[tst__qrt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum_in] [date] NOT NULL,
	[uur___in] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datumuit] [date] NOT NULL,
	[uur__uit] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___uit] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___uit] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[aant_uit] [float] NOT NULL,
	[aantmuit] [float] NOT NULL,
	[aant__in] [float] NOT NULL,
	[gew___in] [float] NOT NULL,
	[aantm_in] [float] NOT NULL,
	[totam_in] [float] NOT NULL,
	[in___qrt] [float] NOT NULL,
	[vpak_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vpk__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[inh_e1e2] [float] NOT NULL,
	[inh_e2e3] [float] NOT NULL,
	[inh_e3e4] [float] NOT NULL,
	[inh_e4e5] [float] NOT NULL,
	[aantale2] [float] NOT NULL,
	[aantale3] [float] NOT NULL,
	[aantale4] [float] NOT NULL,
	[aantale5] [float] NOT NULL,
	[dt___beg] [datetime2](3) NOT NULL,
	[dt___end] [datetime2](3) NOT NULL,
	[plc__beg] [float] NOT NULL,
	[plc__end] [float] NOT NULL,
	[vlgnrpal] [int] NOT NULL,
	[aant_pal] [int] NOT NULL,
	[vak__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment4] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment5] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komm_qrt] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[resource_id] [int] NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [id_hlfv1] PRIMARY KEY CLUSTERED 
(
	[hlf__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hlfvrd__]') AND name = N'hlfvrdi5')
CREATE NONCLUSTERED INDEX [hlfvrdi5] ON [dbo].[hlfvrd__]
(
	[wp___ref] ASC,
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hlfvrd__]') AND name = N'id_hlfv2')
CREATE NONCLUSTERED INDEX [id_hlfv2] ON [dbo].[hlfvrd__]
(
	[ord__ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hlfvrd__]') AND name = N'id_hlfv3')
CREATE NONCLUSTERED INDEX [id_hlfv3] ON [dbo].[hlfvrd__]
(
	[vak__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[hlfvrd__]') AND name = N'id_hlfv4')
CREATE NONCLUSTERED INDEX [id_hlfv4] ON [dbo].[hlfvrd__]
(
	[wp___ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__hlf__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__hlf__ref]  DEFAULT ('') FOR [hlf__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__hlff_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__hlff_ref]  DEFAULT ('') FOR [hlff_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__hlf_source]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__hlf_source]  DEFAULT ('') FOR [hlf_source]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__vrs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__vrs__ref]  DEFAULT ('') FOR [vrs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__vrs__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__vrs__oms]  DEFAULT ('') FOR [vrs__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__trnd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__trnd_ref]  DEFAULT ('') FOR [trnd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__inh__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__inh__oms]  DEFAULT ('') FOR [inh__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__toestand]  DEFAULT ('') FOR [toestand]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__tst__qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__tst__qrt]  DEFAULT ('') FOR [tst__qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__datum_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__datum_in]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__uur___in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__uur___in]  DEFAULT ('') FOR [uur___in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__datumuit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__datumuit]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datumuit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__uur__uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__uur__uit]  DEFAULT ('') FOR [uur__uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__wp___uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__wp___uit]  DEFAULT ('') FOR [wp___uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__wn___uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__wn___uit]  DEFAULT ('') FOR [wn___uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aant_uit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aant_uit]  DEFAULT ((0)) FOR [aant_uit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aantmuit]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aantmuit]  DEFAULT ((0)) FOR [aantmuit]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aant__in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aant__in]  DEFAULT ((0)) FOR [aant__in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__gew___in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__gew___in]  DEFAULT ((0)) FOR [gew___in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aantm_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aantm_in]  DEFAULT ((0)) FOR [aantm_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__totam_in]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__totam_in]  DEFAULT ((0)) FOR [totam_in]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__in___qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__in___qrt]  DEFAULT ((0)) FOR [in___qrt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__vpak_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__vpak_ref]  DEFAULT ('') FOR [vpak_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__vpk__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__vpk__ref]  DEFAULT ('') FOR [vpk__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__inh_e1e2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__inh_e1e2]  DEFAULT ((0)) FOR [inh_e1e2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__inh_e2e3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__inh_e2e3]  DEFAULT ((0)) FOR [inh_e2e3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__inh_e3e4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__inh_e3e4]  DEFAULT ((0)) FOR [inh_e3e4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__inh_e4e5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__inh_e4e5]  DEFAULT ((0)) FOR [inh_e4e5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aantale2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aantale2]  DEFAULT ((0)) FOR [aantale2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aantale3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aantale3]  DEFAULT ((0)) FOR [aantale3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aantale4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aantale4]  DEFAULT ((0)) FOR [aantale4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aantale5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aantale5]  DEFAULT ((0)) FOR [aantale5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__dt___beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__dt___beg]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [dt___beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__dt___end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__dt___end]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [dt___end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__plc__beg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__plc__beg]  DEFAULT ((0)) FOR [plc__beg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__plc__end]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__plc__end]  DEFAULT ((0)) FOR [plc__end]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__vlgnrpal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__vlgnrpal]  DEFAULT ((0)) FOR [vlgnrpal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__aant_pal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__aant_pal]  DEFAULT ((0)) FOR [aant_pal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__vak__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__vak__ref]  DEFAULT ('') FOR [vak__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__komment3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__komment3]  DEFAULT ('') FOR [komment3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__komment4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__komment4]  DEFAULT ('') FOR [komment4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__komment5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__komment5]  DEFAULT ('') FOR [komment5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_hlfvrd__komm_qrt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[hlfvrd__] ADD  CONSTRAINT [DF_hlfvrd__komm_qrt]  DEFAULT ('') FOR [komm_qrt]
END

