SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incent__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incent__](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
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
	[press_nonjob_min] [float] NULL,
	[press_break_min] [float] NULL,
	[press_job_min] [float] NULL,
	[press_t_dif] [float] NULL,
	[rewin_e_min] [float] NULL,
	[rewin_a_min] [float] NULL,
	[rewin_nonjob_min] [float] NULL,
	[rewin_break_min] [float] NULL,
	[rewin_job_min] [float] NULL,
	[rewin_t_dif] [float] NULL,
	[spool_e_min] [float] NULL,
	[spool_a_min] [float] NULL,
	[spool_nonjob_min] [float] NULL,
	[spool_break_min] [float] NULL,
	[spool_job_min] [float] NULL,
	[spool_t_dif] [float] NULL,
	[coati_e_min] [float] NULL,
	[coati_a_min] [float] NULL,
	[coati_nonjob_min] [float] NULL,
	[coati_break_min] [float] NULL,
	[coati_job_min] [float] NULL,
	[coati_t_dif] [float] NULL,
	[cohes_e_min] [float] NULL,
	[cohes_a_min] [float] NULL,
	[cohes_nonjob_min] [float] NULL,
	[cohes_break_min] [float] NULL,
	[cohes_job_min] [float] NULL,
	[cohes_t_dif] [float] NULL,
	[shipi_e_min] [float] NULL,
	[shipi_a_min] [float] NULL,
	[shipi_nonjob_min] [float] NULL,
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
	[clockingsToProcess] [bit] NULL,
	[shipi_a_boxes] [int] NULL,
	[shipi_e_boxes] [int] NULL,
	[shipi_e_prodTimeMin] [int] NULL,
	[shipi_e_minperbox] [int] NULL,
	[shipi_e_prepmin] [int] NULL,
	[shipi_adj_est_min] [int] NULL,
	[shipi_at_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[shipi_inc_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[rewin_a_rolls] [int] NULL,
	[rewin_e_minperroll] [int] NULL,
	[rewin_e_prepmin] [int] NULL,
	[rewin_adj_est_min] [int] NULL,
	[rewin_at_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[rewin_inc_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[spool_a_spools] [int] NULL,
	[spool_e_minperspool] [int] NULL,
	[spool_e_prepmin] [int] NULL,
	[spool_adj_est_min] [int] NULL,
	[spool_at_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[spool_inc_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[printing_min] [int] NULL,
	[non_job_tot_ft] [int] NOT NULL,
	[non_job_gd_ft] [int] NOT NULL,
	[non_job_ft_calculated] [bit] NOT NULL,
	[jobActMakeReadyMin] [float] NULL,
	[jobActPrintMin] [float] NULL,
	[jobActTeardownMin] [float] NULL,
	[prs__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[rewindWaitOnPress] [bit] NOT NULL,
	[rewindWaitOnPress_t_met] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[rewindWaitOverride] [bit] NOT NULL,
 CONSTRAINT [PK_incent__] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[incent__]') AND name = N'IX_incent__ord__ref')
CREATE UNIQUE NONCLUSTERED INDEX [IX_incent__ord__ref] ON [dbo].[incent__]
(
	[ord__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___trn__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___trn__srt]  DEFAULT ('') FOR [trn__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___press_nonjob_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___press_nonjob_min]  DEFAULT ((0)) FOR [press_nonjob_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___press_break_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___press_break_min]  DEFAULT ((0)) FOR [press_break_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___press_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___press_job_min]  DEFAULT ((0)) FOR [press_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_nonjob_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_nonjob_min]  DEFAULT ((0)) FOR [rewin_nonjob_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_break_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_break_min]  DEFAULT ((0)) FOR [rewin_break_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_job_min]  DEFAULT ((0)) FOR [rewin_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_nonjob_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_nonjob_min]  DEFAULT ((0)) FOR [spool_nonjob_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_break_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_break_min]  DEFAULT ((0)) FOR [spool_break_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_job_min]  DEFAULT ((0)) FOR [spool_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___coati_nonjob_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___coati_nonjob_min]  DEFAULT ((0)) FOR [coati_nonjob_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___coati_break_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___coati_break_min]  DEFAULT ((0)) FOR [coati_break_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___coati_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___coati_job_min]  DEFAULT ((0)) FOR [coati_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___cohes_nonjob_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___cohes_nonjob_min]  DEFAULT ((0)) FOR [cohes_nonjob_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___cohes_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___cohes_job_min]  DEFAULT ((0)) FOR [cohes_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_nonjob_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_nonjob_min]  DEFAULT ((0)) FOR [shipi_nonjob_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___ship_job_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___ship_job_min]  DEFAULT ((0)) FOR [shipi_job_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___press_consumed_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___press_consumed_feet]  DEFAULT ((0)) FOR [press_consumed_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___press_sfg_total_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___press_sfg_total_feet]  DEFAULT ((0)) FOR [press_sfg_total_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___press_sfg_good_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___press_sfg_good_feet]  DEFAULT ((0)) FOR [press_sfg_good_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___press_st_processed_good_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___press_st_processed_good_feet]  DEFAULT ((0)) FOR [press_st_processed_good_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___as press_st_bad_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___as press_st_bad_feet]  DEFAULT ((0)) FOR [press_st_bad_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___press_st_remaining_good_feet]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___press_st_remaining_good_feet]  DEFAULT ((0)) FOR [press_st_remaining_good_feet]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___produced_qty]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___produced_qty]  DEFAULT ((0)) FOR [produced_lbls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___produced_dif]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___produced_dif]  DEFAULT ((0)) FOR [produced_lbls_vs_ordered]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___locked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___locked]  DEFAULT ((0)) FOR [locked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___exception]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___exception]  DEFAULT ((0)) FOR [exception]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___clockingsToProcess]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___clockingsToProcess]  DEFAULT ((0)) FOR [clockingsToProcess]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_a_boxes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_a_boxes]  DEFAULT ((0)) FOR [shipi_a_boxes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_e_boxes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_e_boxes]  DEFAULT ((0)) FOR [shipi_e_boxes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_e_prodTimeMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_e_prodTimeMin]  DEFAULT ((0)) FOR [shipi_e_prodTimeMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_e_minperbox]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_e_minperbox]  DEFAULT ((0)) FOR [shipi_e_minperbox]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_e_prepmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_e_prepmin]  DEFAULT ((0)) FOR [shipi_e_prepmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_adj_est_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_adj_est_min]  DEFAULT ((0)) FOR [shipi_adj_est_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_at_met]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_at_met]  DEFAULT ('') FOR [shipi_at_met]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___shipi_a_met]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___shipi_a_met]  DEFAULT ('') FOR [shipi_inc_met]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_a_rolls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_a_rolls]  DEFAULT ((0)) FOR [rewin_a_rolls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_e_minperroll]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_e_minperroll]  DEFAULT ((0)) FOR [rewin_e_minperroll]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_e_prepmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_e_prepmin]  DEFAULT ((0)) FOR [rewin_e_prepmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_adj_est_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_adj_est_min]  DEFAULT ((0)) FOR [rewin_adj_est_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_at_met]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_at_met]  DEFAULT ('') FOR [rewin_at_met]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewin_inc_met]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewin_inc_met]  DEFAULT ('') FOR [rewin_inc_met]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_a_spools]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_a_spools]  DEFAULT ((0)) FOR [spool_a_spools]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_e_minperspool]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_e_minperspool]  DEFAULT ((0)) FOR [spool_e_minperspool]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_e_prepmin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_e_prepmin]  DEFAULT ((0)) FOR [spool_e_prepmin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_adj_est_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_adj_est_min]  DEFAULT ((0)) FOR [spool_adj_est_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_at_met]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_at_met]  DEFAULT ('') FOR [spool_at_met]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___spool_inc_met]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___spool_inc_met]  DEFAULT ('') FOR [spool_inc_met]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___printing_min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___printing_min]  DEFAULT ((0)) FOR [printing_min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___non_job_t_ft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___non_job_t_ft]  DEFAULT ((0)) FOR [non_job_tot_ft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___non_job_gd_ft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___non_job_gd_ft]  DEFAULT ((0)) FOR [non_job_gd_ft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___non_job_ft_calculated]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___non_job_ft_calculated]  DEFAULT ((0)) FOR [non_job_ft_calculated]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___jobActMakeReadyMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___jobActMakeReadyMin]  DEFAULT ((0)) FOR [jobActMakeReadyMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___jobActPrintMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___jobActPrintMin]  DEFAULT ((0)) FOR [jobActPrintMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___jobActTeardownMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___jobActTeardownMin]  DEFAULT ((0)) FOR [jobActTeardownMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewindWaitOnPress]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewindWaitOnPress]  DEFAULT ((0)) FOR [rewindWaitOnPress]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewindWait_t_met]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewindWait_t_met]  DEFAULT ('') FOR [rewindWaitOnPress_t_met]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incent___rewindWaitOverride]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incent__] ADD  CONSTRAINT [DF_incent___rewindWaitOverride]  DEFAULT ((0)) FOR [rewindWaitOverride]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_incent___incent__]') AND parent_object_id = OBJECT_ID(N'[dbo].[incent__]'))
ALTER TABLE [dbo].[incent__]  WITH CHECK ADD  CONSTRAINT [FK_incent___incent__] FOREIGN KEY([id])
REFERENCES [dbo].[incent__] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_incent___incent__]') AND parent_object_id = OBJECT_ID(N'[dbo].[incent__]'))
ALTER TABLE [dbo].[incent__] CHECK CONSTRAINT [FK_incent___incent__]
