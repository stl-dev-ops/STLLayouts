SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incente_]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[incente_](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[wn___ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn_naam_] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[wn_vnaam] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NULL,
	[department] [nvarchar](50) COLLATE Latin1_General_CI_AS NULL,
	[est__min] [float] NULL,
	[est__min_2] [float] NULL,
	[e_minutes] [float] NULL,
	[t_minutes] [float] NULL,
	[percent_] [float] NULL,
	[paid__yn] [bit] NULL,
	[pay__amt] [money] NULL,
	[pay__amt_2] [money] NULL,
	[paid_amt] [money] NULL,
	[dat_paid] [datetime] NULL,
	[target_met] [bit] NULL,
	[target_met_2] [bit] NULL,
	[pot__amt] [money] NULL,
	[pot__amt_2] [money] NULL,
	[lastUpdate] [datetime] NULL,
	[locked] [bit] NULL,
	[mgrApproved] [bit] NULL,
	[tmstamp] [timestamp] NULL,
	[exception] [tinyint] NULL,
	[empNo] [int] NULL,
	[overrideReason] [nvarchar](100) COLLATE Latin1_General_CI_AS NULL,
	[empMakeReadyMin] [float] NULL,
	[empPrintMin] [float] NULL,
	[empTearDownMin] [float] NULL,
	[empGoodFt] [float] NULL,
	[empTotalFt] [float] NULL,
	[jobTotalGoodFt] [float] NULL,
	[jobEstMakeReadyMin] [float] NULL,
	[jobEstPrintMin] [float] NULL,
	[jobEstTearDownMin] [float] NULL,
	[jobActMakeReadyMin] [float] NULL,
	[jobActPrintMin] [float] NULL,
	[jobActTearDownMin] [float] NULL,
	[empMakeReadyPct] [float] NULL,
	[empPrintPct] [float] NULL,
	[empTeardownPct] [float] NULL,
	[adjMakeReadyMin] [float] NULL,
	[adjPrintMin] [float] NULL,
	[adjTearDownMin] [float] NULL,
	[adjTotJobMin] [float] NULL,
	[adjTotEmpJobMin] [float] NULL,
	[jobFlatRolls] [int] NULL,
	[empFlatRolls] [int] NULL,
	[non_job_tot_ft] [int] NOT NULL,
	[non_job_gd_ft] [int] NOT NULL,
	[empIncentivesStartDt] [datetime] NULL,
 CONSTRAINT [PK_incente_] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__wn_naam_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__wn_naam_]  DEFAULT ('') FOR [wn_naam_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__wn_vnaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__wn_vnaam]  DEFAULT ('') FOR [wn_vnaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__department]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__department]  DEFAULT ('') FOR [department]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__est_min_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__est_min_2]  DEFAULT ((0)) FOR [est__min_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__e_minutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__e_minutes]  DEFAULT ((0)) FOR [e_minutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__t_minutes]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__t_minutes]  DEFAULT ((0)) FOR [t_minutes]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__percent_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__percent_]  DEFAULT ((0)) FOR [percent_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Table_1_payed_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_Table_1_payed_]  DEFAULT ((0)) FOR [paid__yn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__pay__amt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__pay__amt]  DEFAULT ((0)) FOR [pay__amt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__pay__amt_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__pay__amt_2]  DEFAULT ((0)) FOR [pay__amt_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__paid_amt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__paid_amt]  DEFAULT ((0)) FOR [paid_amt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__dat_paid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__dat_paid]  DEFAULT ((0)) FOR [dat_paid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__target_met]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__target_met]  DEFAULT ((0)) FOR [target_met]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__target_met_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__target_met_2]  DEFAULT ((0)) FOR [target_met_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__pot__amt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__pot__amt]  DEFAULT ((0)) FOR [pot__amt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__pot__amt_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__pot__amt_2]  DEFAULT ((0)) FOR [pot__amt_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__locked]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__locked]  DEFAULT ((0)) FOR [locked]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__mgrApproved]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__mgrApproved]  DEFAULT ((0)) FOR [mgrApproved]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__exception]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__exception]  DEFAULT ((0)) FOR [exception]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empNo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empNo]  DEFAULT ((0)) FOR [empNo]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__overrideReason]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__overrideReason]  DEFAULT ('') FOR [overrideReason]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empMakeReadyMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empMakeReadyMin]  DEFAULT ((0)) FOR [empMakeReadyMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empPrintMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empPrintMin]  DEFAULT ((0)) FOR [empPrintMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empTearDownMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empTearDownMin]  DEFAULT ((0)) FOR [empTearDownMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empGoodFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empGoodFt]  DEFAULT ((0)) FOR [empGoodFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empTotalFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empTotalFt]  DEFAULT ((0)) FOR [empTotalFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__jobTotalFt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__jobTotalFt]  DEFAULT ((0)) FOR [jobTotalGoodFt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__jobEstMakeReadyMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__jobEstMakeReadyMin]  DEFAULT ((0)) FOR [jobEstMakeReadyMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__jobEstPrintMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__jobEstPrintMin]  DEFAULT ((0)) FOR [jobEstPrintMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__jobEstTearDownMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__jobEstTearDownMin]  DEFAULT ((0)) FOR [jobEstTearDownMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__jobActMakeReadyMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__jobActMakeReadyMin]  DEFAULT ((0)) FOR [jobActMakeReadyMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__jobActPrintMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__jobActPrintMin]  DEFAULT ((0)) FOR [jobActPrintMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__jobActTearDownMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__jobActTearDownMin]  DEFAULT ((0)) FOR [jobActTearDownMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empMakeReadyPct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empMakeReadyPct]  DEFAULT ((0)) FOR [empMakeReadyPct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empPrintPct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empPrintPct]  DEFAULT ((0)) FOR [empPrintPct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empTeardownPct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empTeardownPct]  DEFAULT ((0)) FOR [empTeardownPct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__adjMakeReadyMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__adjMakeReadyMin]  DEFAULT ((0)) FOR [adjMakeReadyMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__adjPrintMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__adjPrintMin]  DEFAULT ((0)) FOR [adjPrintMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__adjTearDownMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__adjTearDownMin]  DEFAULT ((0)) FOR [adjTearDownMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__adjTotJobMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__adjTotJobMin]  DEFAULT ((0)) FOR [adjTotJobMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__adjTotEmpJobMin]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__adjTotEmpJobMin]  DEFAULT ((0)) FOR [adjTotEmpJobMin]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__jobFlatRolls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__jobFlatRolls]  DEFAULT ((0)) FOR [jobFlatRolls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empFlatRolls]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empFlatRolls]  DEFAULT ((0)) FOR [empFlatRolls]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__non_job_tot_ft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__non_job_tot_ft]  DEFAULT ((0)) FOR [non_job_tot_ft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__non_job_gd_ft]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__non_job_gd_ft]  DEFAULT ((0)) FOR [non_job_gd_ft]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_incente__empIncentivesStartDt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[incente_] ADD  CONSTRAINT [DF_incente__empIncentivesStartDt]  DEFAULT ('') FOR [empIncentivesStartDt]
END

IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_incente__incente_]') AND parent_object_id = OBJECT_ID(N'[dbo].[incente_]'))
ALTER TABLE [dbo].[incente_]  WITH CHECK ADD  CONSTRAINT [FK_incente__incente_] FOREIGN KEY([id])
REFERENCES [dbo].[incente_] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_incente__incente_]') AND parent_object_id = OBJECT_ID(N'[dbo].[incente_]'))
ALTER TABLE [dbo].[incente_] CHECK CONSTRAINT [FK_incente__incente_]
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_incente__incente_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[incente_]'))
ALTER TABLE [dbo].[incente_]  WITH CHECK ADD  CONSTRAINT [FK_incente__incente_1] FOREIGN KEY([id])
REFERENCES [dbo].[incente_] ([id])
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_incente__incente_1]') AND parent_object_id = OBJECT_ID(N'[dbo].[incente_]'))
ALTER TABLE [dbo].[incente_] CHECK CONSTRAINT [FK_incente__incente_1]
