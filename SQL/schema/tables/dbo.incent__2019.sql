SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incent__2019]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incent__2019](
	[id] [int] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[datum___] [datetime] NULL,
	[kla__ref] [nchar](6) COLLATE Latin1_General_CI_AS NULL,
	[kla__rpn] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[omschr__] [nvarchar](200) COLLATE Latin1_General_CI_AS NULL,
	[oplage__] [float] NULL,
	[prkl_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[prd__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[pro_tdesc] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[pro_gdesc] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[ityp] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[trn__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NULL,
	[press_e_min] [float] NULL,
	[press_a_min] [float] NULL,
	[press_break_min] [float] NULL,
	[press_job_min] [float] NULL,
	[press_t_dif] [float] NULL,
	[rewin_e_min] [float] NULL,
	[rewin_a_min] [float] NULL,
	[rewin_break_min] [float] NULL,
	[rewin_job_min] [float] NULL,
	[rewin_t_dif] [float] NULL,
	[spool_e_min] [float] NULL,
	[spool_a_min] [float] NULL,
	[spool_break_min] [float] NULL,
	[spool_job_min] [float] NULL,
	[spool_t_dif] [float] NULL,
	[coati_e_min] [float] NULL,
	[coati_a_min] [float] NULL,
	[coati_break_min] [float] NULL,
	[coati_job_min] [float] NULL,
	[coati_t_dif] [float] NULL,
	[cohes_e_min] [float] NULL,
	[cohes_a_min] [float] NULL,
	[cohes_break_min] [float] NULL,
	[cohes_job_min] [float] NULL,
	[cohes_t_dif] [float] NULL,
	[shipi_e_min] [float] NULL,
	[shipi_a_min] [float] NULL,
	[shipi_break_min] [float] NULL,
	[shipi_job_min] [float] NULL,
	[shipi_t_dif] [float] NULL,
	[press_et_feet] [float] NULL,
	[press_eg_feet] [float] NULL,
	[press_eb_feet] [float] NULL,
	[press_ew_prc] [float] NULL,
	[press_at_ft01] [float] NULL,
	[press_at_ft02] [float] NULL,
	[press_at_feet] [float] NULL,
	[press_consumed_feet] [float] NULL,
	[press_sfg_total_feet] [float] NULL,
	[press_sfg_good_feet] [float] NULL,
	[press_st_processed_good_feet] [float] NULL,
	[press_st_bad_feet] [float] NULL,
	[press_st_remaining_good_feet] [float] NULL,
	[press_ag_ft01] [float] NULL,
	[press_ag_ft02] [float] NULL,
	[press_ag_feet] [float] NULL,
	[press_ab_ft01] [float] NULL,
	[press_ab_ft02] [float] NULL,
	[press_ab_feet] [float] NULL,
	[press_aw_prc] [float] NULL,
	[rewin_et_feet] [float] NULL,
	[rewin_eg_feet] [float] NULL,
	[rewin_eb_feet] [float] NULL,
	[rewin_ew_prc] [float] NULL,
	[rewin_stl_in] [float] NULL,
	[rewin_stl_p_in] [float] NULL,
	[rewin_at_feet] [float] NULL,
	[rewin_ag_feet] [float] NULL,
	[rewin_ab_feet] [float] NULL,
	[rewin_aw_prc] [float] NULL,
	[spool_et_feet] [float] NULL,
	[spool_eg_feet] [float] NULL,
	[spool_eb_feet] [float] NULL,
	[spool_ew_prc] [float] NULL,
	[spool_stl_in] [float] NULL,
	[spool_stl_p_in] [float] NULL,
	[spool_at_feet] [float] NULL,
	[spool_ag_feet] [float] NULL,
	[spool_ab_feet] [float] NULL,
	[spool_aw_prc] [float] NULL,
	[coati_et_feet] [float] NULL,
	[coati_eg_feet] [float] NULL,
	[coati_eb_feet] [float] NULL,
	[coati_ew_prc] [float] NULL,
	[coati_at_feet] [float] NULL,
	[coati_ag_feet] [float] NULL,
	[coati_ab_feet] [float] NULL,
	[coati_aw_prc] [float] NULL,
	[cohes_et_feet] [float] NULL,
	[cohes_eg_feet] [float] NULL,
	[cohes_eb_feet] [float] NULL,
	[cohes_ew_prc] [float] NULL,
	[cohes_at_feet] [float] NULL,
	[cohes_ag_feet] [float] NULL,
	[cohes_ab_feet] [float] NULL,
	[cohes_aw_prc] [float] NULL,
	[shipi_ordered] [float] NULL,
	[shipi_shipped] [float] NULL,
	[shipi_dif] [float] NULL,
	[produced_lbls] [float] NULL,
	[produced_lbls_vs_ordered] [float] NULL,
	[etiket_h] [float] NULL,
	[etiket_b] [float] NULL,
	[tssnaf_b] [float] NULL,
	[tssnaf_h] [float] NULL,
	[aantal_b] [float] NULL,
	[aantal_h] [float] NULL,
	[tedrkd__] [float] NULL,
	[spoolJobID] [nvarchar](6) COLLATE Latin1_General_CI_AS NULL,
	[press_t_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[press_w_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[press___met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[rewin_t_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[rewin_w_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[rewin___met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[spool_t_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[spool_w_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[spool___met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[coati_t_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[coati_w_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[coati___met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[cohes_t_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[cohes_w_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[cohes___met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[shipi_t_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[shipi_w_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[shipi___met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[shippedfull] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[lastUpdate] [datetime] NULL,
	[locked] [bit] NULL,
	[lockedDate] [datetime] NULL,
	[exception] [tinyint] NULL,
	[clockingsToProcess] [bit] NULL
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_trn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_trn__srt]  DEFAULT ('') FOR [trn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_press_break_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_press_break_min]  DEFAULT ((0)) FOR [press_break_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_press_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_press_job_min]  DEFAULT ((0)) FOR [press_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_rewin_break_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_rewin_break_min]  DEFAULT ((0)) FOR [rewin_break_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_rewin_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_rewin_job_min]  DEFAULT ((0)) FOR [rewin_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_spool_break_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_spool_break_min]  DEFAULT ((0)) FOR [spool_break_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_spool_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_spool_job_min]  DEFAULT ((0)) FOR [spool_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_coati_break_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_coati_break_min]  DEFAULT ((0)) FOR [coati_break_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_coati_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_coati_job_min]  DEFAULT ((0)) FOR [coati_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_cohes_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_cohes_job_min]  DEFAULT ((0)) FOR [cohes_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_shipi_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_shipi_job_min]  DEFAULT ((0)) FOR [shipi_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_press_consumed_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_press_consumed_feet]  DEFAULT ((0)) FOR [press_consumed_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_press_sfg_total_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_press_sfg_total_feet]  DEFAULT ((0)) FOR [press_sfg_total_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_press_sfg_good_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_press_sfg_good_feet]  DEFAULT ((0)) FOR [press_sfg_good_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_press_st_processed_good_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_press_st_processed_good_feet]  DEFAULT ((0)) FOR [press_st_processed_good_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_press_st_bad_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_press_st_bad_feet]  DEFAULT ((0)) FOR [press_st_bad_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_press_st_remaining_good_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_press_st_remaining_good_feet]  DEFAULT ((0)) FOR [press_st_remaining_good_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_produced_lbls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_produced_lbls]  DEFAULT ((0)) FOR [produced_lbls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_produced_lbls_vs_ordered]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_produced_lbls_vs_ordered]  DEFAULT ((0)) FOR [produced_lbls_vs_ordered]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_locked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_locked]  DEFAULT ((0)) FOR [locked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_exception]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_exception]  DEFAULT ((0)) FOR [exception]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent__2019_clockingsToProcess]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__2019] ADD  CONSTRAINT [DF_incent__2019_clockingsToProcess]  DEFAULT ((0)) FOR [clockingsToProcess]
END

