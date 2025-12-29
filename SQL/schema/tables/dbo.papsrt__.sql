SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[papsrt__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[papsrt__](
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_omsi] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms3] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms4] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms5] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms6] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms7] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms8] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap_oms9] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[dikte_ex] [float] NOT NULL,
	[inktv_ex] [float] NOT NULL,
	[keren_yn] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[gramgew1] [float] NOT NULL,
	[gramgew2] [float] NOT NULL,
	[gramgew3] [float] NOT NULL,
	[druksn_1] [float] NOT NULL,
	[druksn_2] [float] NOT NULL,
	[druksn_3] [float] NOT NULL,
	[druksn_4] [float] NOT NULL,
	[vouwsn_1] [float] NOT NULL,
	[vouwsn_2] [float] NOT NULL,
	[vouwsn_3] [float] NOT NULL,
	[vouwsn_4] [float] NOT NULL,
	[gew1___t] [float] NOT NULL,
	[gew2___t] [float] NOT NULL,
	[gew3___t] [float] NOT NULL,
	[gew4___t] [float] NOT NULL,
	[klagew1t] [float] NOT NULL,
	[klagew2t] [float] NOT NULL,
	[klagew3t] [float] NOT NULL,
	[klagew4t] [float] NOT NULL,
	[klagew5t] [float] NOT NULL,
	[akpgew1t] [float] NOT NULL,
	[akpgew2t] [float] NOT NULL,
	[akpgew3t] [float] NOT NULL,
	[akpgew4t] [float] NOT NULL,
	[akpgew5t] [float] NOT NULL,
	[akpgp_1t] [float] NOT NULL,
	[akpgp_2t] [float] NOT NULL,
	[akpgp_3t] [float] NOT NULL,
	[akpgp_4t] [float] NOT NULL,
	[akpgp_5t] [float] NOT NULL,
	[aantal1t] [float] NOT NULL,
	[aantal2t] [float] NOT NULL,
	[aantal3t] [float] NOT NULL,
	[aantal4t] [float] NOT NULL,
	[klaant1t] [float] NOT NULL,
	[klaant2t] [float] NOT NULL,
	[klaant3t] [float] NOT NULL,
	[klaant4t] [float] NOT NULL,
	[klaant5t] [float] NOT NULL,
	[akpant1t] [float] NOT NULL,
	[akpant2t] [float] NOT NULL,
	[akpant3t] [float] NOT NULL,
	[akpant4t] [float] NOT NULL,
	[akpant5t] [float] NOT NULL,
	[waarde1t] [float] NOT NULL,
	[waarde2t] [float] NOT NULL,
	[waarde3t] [float] NOT NULL,
	[waarde4t] [float] NOT NULL,
	[klawa1_t] [float] NOT NULL,
	[klawa2_t] [float] NOT NULL,
	[klawa3_t] [float] NOT NULL,
	[klawa4_t] [float] NOT NULL,
	[klawa5_t] [float] NOT NULL,
	[th_akp_t] [float] NOT NULL,
	[akpwa1_t] [float] NOT NULL,
	[akpwa2_t] [float] NOT NULL,
	[akpwa3_t] [float] NOT NULL,
	[akpwa4_t] [float] NOT NULL,
	[akpwa5_t] [float] NOT NULL,
	[gew1__tn] [float] NOT NULL,
	[gew2__tn] [float] NOT NULL,
	[gew3__tn] [float] NOT NULL,
	[gew4__tn] [float] NOT NULL,
	[klagw1tn] [float] NOT NULL,
	[klagw2tn] [float] NOT NULL,
	[klagw3tn] [float] NOT NULL,
	[klagw4tn] [float] NOT NULL,
	[klagw5tn] [float] NOT NULL,
	[akpgw1tn] [float] NOT NULL,
	[akpgw2tn] [float] NOT NULL,
	[akpgw3tn] [float] NOT NULL,
	[akpgw4tn] [float] NOT NULL,
	[akpgw5tn] [float] NOT NULL,
	[aantl1tn] [float] NOT NULL,
	[aantl2tn] [float] NOT NULL,
	[aantl3tn] [float] NOT NULL,
	[aantl4tn] [float] NOT NULL,
	[klaan1tn] [float] NOT NULL,
	[klaan2tn] [float] NOT NULL,
	[klaan3tn] [float] NOT NULL,
	[klaan4tn] [float] NOT NULL,
	[klaan5tn] [float] NOT NULL,
	[akant1tn] [float] NOT NULL,
	[akant2tn] [float] NOT NULL,
	[akant3tn] [float] NOT NULL,
	[akant4tn] [float] NOT NULL,
	[akant5tn] [float] NOT NULL,
	[waard1tn] [float] NOT NULL,
	[waard2tn] [float] NOT NULL,
	[waard3tn] [float] NOT NULL,
	[waard4tn] [float] NOT NULL,
	[klawa1tn] [float] NOT NULL,
	[klawa2tn] [float] NOT NULL,
	[klawa3tn] [float] NOT NULL,
	[klawa4tn] [float] NOT NULL,
	[klawa5tn] [float] NOT NULL,
	[th_akptn] [float] NOT NULL,
	[akpwa1tn] [float] NOT NULL,
	[akpwa2tn] [float] NOT NULL,
	[akpwa3tn] [float] NOT NULL,
	[akpwa4tn] [float] NOT NULL,
	[akpwa5tn] [float] NOT NULL,
	[rlw____t] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rlw____l] [float] NOT NULL,
	[rlw____i] [float] NOT NULL,
	[rlw__lin] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdffront] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdf_back] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[jdfgrade] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[fsc____t] [float] NOT NULL,
	[basisbre] [float] NOT NULL,
	[basislen] [float] NOT NULL,
	[scr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [papsrt_x] PRIMARY KEY CLUSTERED 
(
	[pap__srt] ASC,
	[pap__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[papsrt__]') AND name = N'papsrt_y')
CREATE NONCLUSTERED INDEX [papsrt_y] ON [dbo].[papsrt__]
(
	[pap__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_omsi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_omsi]  DEFAULT ('') FOR [pap_omsi]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms1]  DEFAULT ('') FOR [pap_oms1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms2]  DEFAULT ('') FOR [pap_oms2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms3]  DEFAULT ('') FOR [pap_oms3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms4]  DEFAULT ('') FOR [pap_oms4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms5]  DEFAULT ('') FOR [pap_oms5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms6]  DEFAULT ('') FOR [pap_oms6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms7]  DEFAULT ('') FOR [pap_oms7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms8]  DEFAULT ('') FOR [pap_oms8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__pap_oms9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__pap_oms9]  DEFAULT ('') FOR [pap_oms9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__dikte_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__dikte_ex]  DEFAULT ((0)) FOR [dikte_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__inktv_ex]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__inktv_ex]  DEFAULT ((0)) FOR [inktv_ex]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__keren_yn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__keren_yn]  DEFAULT ('') FOR [keren_yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gramgew1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gramgew1]  DEFAULT ((0)) FOR [gramgew1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gramgew2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gramgew2]  DEFAULT ((0)) FOR [gramgew2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gramgew3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gramgew3]  DEFAULT ((0)) FOR [gramgew3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__druksn_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__druksn_1]  DEFAULT ((0)) FOR [druksn_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__druksn_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__druksn_2]  DEFAULT ((0)) FOR [druksn_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__druksn_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__druksn_3]  DEFAULT ((0)) FOR [druksn_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__druksn_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__druksn_4]  DEFAULT ((0)) FOR [druksn_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__vouwsn_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__vouwsn_1]  DEFAULT ((0)) FOR [vouwsn_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__vouwsn_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__vouwsn_2]  DEFAULT ((0)) FOR [vouwsn_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__vouwsn_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__vouwsn_3]  DEFAULT ((0)) FOR [vouwsn_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__vouwsn_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__vouwsn_4]  DEFAULT ((0)) FOR [vouwsn_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gew1___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gew1___t]  DEFAULT ((0)) FOR [gew1___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gew2___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gew2___t]  DEFAULT ((0)) FOR [gew2___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gew3___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gew3___t]  DEFAULT ((0)) FOR [gew3___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gew4___t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gew4___t]  DEFAULT ((0)) FOR [gew4___t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagew1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagew1t]  DEFAULT ((0)) FOR [klagew1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagew2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagew2t]  DEFAULT ((0)) FOR [klagew2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagew3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagew3t]  DEFAULT ((0)) FOR [klagew3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagew4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagew4t]  DEFAULT ((0)) FOR [klagew4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagew5t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagew5t]  DEFAULT ((0)) FOR [klagew5t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgew1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgew1t]  DEFAULT ((0)) FOR [akpgew1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgew2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgew2t]  DEFAULT ((0)) FOR [akpgew2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgew3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgew3t]  DEFAULT ((0)) FOR [akpgew3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgew4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgew4t]  DEFAULT ((0)) FOR [akpgew4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgew5t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgew5t]  DEFAULT ((0)) FOR [akpgew5t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgp_1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgp_1t]  DEFAULT ((0)) FOR [akpgp_1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgp_2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgp_2t]  DEFAULT ((0)) FOR [akpgp_2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgp_3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgp_3t]  DEFAULT ((0)) FOR [akpgp_3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgp_4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgp_4t]  DEFAULT ((0)) FOR [akpgp_4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgp_5t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgp_5t]  DEFAULT ((0)) FOR [akpgp_5t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__aantal1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__aantal1t]  DEFAULT ((0)) FOR [aantal1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__aantal2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__aantal2t]  DEFAULT ((0)) FOR [aantal2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__aantal3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__aantal3t]  DEFAULT ((0)) FOR [aantal3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__aantal4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__aantal4t]  DEFAULT ((0)) FOR [aantal4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaant1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaant1t]  DEFAULT ((0)) FOR [klaant1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaant2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaant2t]  DEFAULT ((0)) FOR [klaant2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaant3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaant3t]  DEFAULT ((0)) FOR [klaant3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaant4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaant4t]  DEFAULT ((0)) FOR [klaant4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaant5t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaant5t]  DEFAULT ((0)) FOR [klaant5t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpant1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpant1t]  DEFAULT ((0)) FOR [akpant1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpant2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpant2t]  DEFAULT ((0)) FOR [akpant2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpant3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpant3t]  DEFAULT ((0)) FOR [akpant3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpant4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpant4t]  DEFAULT ((0)) FOR [akpant4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpant5t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpant5t]  DEFAULT ((0)) FOR [akpant5t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__waarde1t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__waarde1t]  DEFAULT ((0)) FOR [waarde1t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__waarde2t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__waarde2t]  DEFAULT ((0)) FOR [waarde2t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__waarde3t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__waarde3t]  DEFAULT ((0)) FOR [waarde3t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__waarde4t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__waarde4t]  DEFAULT ((0)) FOR [waarde4t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa1_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa1_t]  DEFAULT ((0)) FOR [klawa1_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa2_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa2_t]  DEFAULT ((0)) FOR [klawa2_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa3_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa3_t]  DEFAULT ((0)) FOR [klawa3_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa4_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa4_t]  DEFAULT ((0)) FOR [klawa4_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa5_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa5_t]  DEFAULT ((0)) FOR [klawa5_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__th_akp_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__th_akp_t]  DEFAULT ((0)) FOR [th_akp_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa1_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa1_t]  DEFAULT ((0)) FOR [akpwa1_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa2_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa2_t]  DEFAULT ((0)) FOR [akpwa2_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa3_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa3_t]  DEFAULT ((0)) FOR [akpwa3_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa4_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa4_t]  DEFAULT ((0)) FOR [akpwa4_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa5_t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa5_t]  DEFAULT ((0)) FOR [akpwa5_t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gew1__tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gew1__tn]  DEFAULT ((0)) FOR [gew1__tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gew2__tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gew2__tn]  DEFAULT ((0)) FOR [gew2__tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gew3__tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gew3__tn]  DEFAULT ((0)) FOR [gew3__tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__gew4__tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__gew4__tn]  DEFAULT ((0)) FOR [gew4__tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagw1tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagw1tn]  DEFAULT ((0)) FOR [klagw1tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagw2tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagw2tn]  DEFAULT ((0)) FOR [klagw2tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagw3tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagw3tn]  DEFAULT ((0)) FOR [klagw3tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagw4tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagw4tn]  DEFAULT ((0)) FOR [klagw4tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klagw5tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klagw5tn]  DEFAULT ((0)) FOR [klagw5tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgw1tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgw1tn]  DEFAULT ((0)) FOR [akpgw1tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgw2tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgw2tn]  DEFAULT ((0)) FOR [akpgw2tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgw3tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgw3tn]  DEFAULT ((0)) FOR [akpgw3tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgw4tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgw4tn]  DEFAULT ((0)) FOR [akpgw4tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpgw5tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpgw5tn]  DEFAULT ((0)) FOR [akpgw5tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__aantl1tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__aantl1tn]  DEFAULT ((0)) FOR [aantl1tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__aantl2tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__aantl2tn]  DEFAULT ((0)) FOR [aantl2tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__aantl3tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__aantl3tn]  DEFAULT ((0)) FOR [aantl3tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__aantl4tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__aantl4tn]  DEFAULT ((0)) FOR [aantl4tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaan1tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaan1tn]  DEFAULT ((0)) FOR [klaan1tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaan2tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaan2tn]  DEFAULT ((0)) FOR [klaan2tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaan3tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaan3tn]  DEFAULT ((0)) FOR [klaan3tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaan4tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaan4tn]  DEFAULT ((0)) FOR [klaan4tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klaan5tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klaan5tn]  DEFAULT ((0)) FOR [klaan5tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akant1tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akant1tn]  DEFAULT ((0)) FOR [akant1tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akant2tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akant2tn]  DEFAULT ((0)) FOR [akant2tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akant3tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akant3tn]  DEFAULT ((0)) FOR [akant3tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akant4tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akant4tn]  DEFAULT ((0)) FOR [akant4tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akant5tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akant5tn]  DEFAULT ((0)) FOR [akant5tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__waard1tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__waard1tn]  DEFAULT ((0)) FOR [waard1tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__waard2tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__waard2tn]  DEFAULT ((0)) FOR [waard2tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__waard3tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__waard3tn]  DEFAULT ((0)) FOR [waard3tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__waard4tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__waard4tn]  DEFAULT ((0)) FOR [waard4tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa1tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa1tn]  DEFAULT ((0)) FOR [klawa1tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa2tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa2tn]  DEFAULT ((0)) FOR [klawa2tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa3tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa3tn]  DEFAULT ((0)) FOR [klawa3tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa4tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa4tn]  DEFAULT ((0)) FOR [klawa4tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__klawa5tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__klawa5tn]  DEFAULT ((0)) FOR [klawa5tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__th_akptn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__th_akptn]  DEFAULT ((0)) FOR [th_akptn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa1tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa1tn]  DEFAULT ((0)) FOR [akpwa1tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa2tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa2tn]  DEFAULT ((0)) FOR [akpwa2tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa3tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa3tn]  DEFAULT ((0)) FOR [akpwa3tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa4tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa4tn]  DEFAULT ((0)) FOR [akpwa4tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__akpwa5tn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__akpwa5tn]  DEFAULT ((0)) FOR [akpwa5tn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__rlw____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__rlw____t]  DEFAULT ('') FOR [rlw____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__rlw____l]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__rlw____l]  DEFAULT ((0)) FOR [rlw____l]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__rlw____i]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__rlw____i]  DEFAULT ((0)) FOR [rlw____i]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__rlw__lin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__rlw__lin]  DEFAULT ('') FOR [rlw__lin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__jdffront]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__jdffront]  DEFAULT ('') FOR [jdffront]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__jdf_back]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__jdf_back]  DEFAULT ('') FOR [jdf_back]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__jdfgrade]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__jdfgrade]  DEFAULT ('') FOR [jdfgrade]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__fsc____t]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__fsc____t]  DEFAULT ((0)) FOR [fsc____t]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__basisbre]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__basisbre]  DEFAULT ((0)) FOR [basisbre]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__basislen]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__basislen]  DEFAULT ((0)) FOR [basislen]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_papsrt__scr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[papsrt__] ADD  CONSTRAINT [DF_papsrt__scr__ref]  DEFAULT ('') FOR [scr__ref]
END

