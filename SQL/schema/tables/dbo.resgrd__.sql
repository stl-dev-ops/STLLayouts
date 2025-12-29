SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resgrd__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[resgrd__](
	[res__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[etap_typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[etaf_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[value_set_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[workstep_operation_id] [int] NULL,
	[resource_id] [int] NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kla__rpn] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_resv] [date] NOT NULL,
	[uur_resv] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[reserve_] [float] NOT NULL,
	[bestemmg] [nvarchar](45) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_1] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_2] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[kommen_3] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[fiat_prd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[dat_verb] [date] NOT NULL,
	[verbruik] [float] NOT NULL,
	[gedrukt_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[user____] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[koep__br] [float] NOT NULL,
	[koep_lgt] [float] NOT NULL,
	[loopr_kp] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[koep_vel] [int] NOT NULL,
	[snijder_] [nvarchar](23) COLLATE Latin1_General_CI_AS NOT NULL,
	[schema__] [nvarchar](23) COLLATE Latin1_General_CI_AS NOT NULL,
	[aan_pers] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[resource_instance_id] [int] NULL,
 CONSTRAINT [resgrd_x] PRIMARY KEY CLUSTERED 
(
	[res__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[resgrd__]') AND name = N'resgrd_2')
CREATE UNIQUE NONCLUSTERED INDEX [resgrd_2] ON [dbo].[resgrd__]
(
	[ord__ref] ASC,
	[suborder] ASC,
	[art__ref] ASC,
	[res__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[resgrd__]') AND name = N'resgrd_3')
CREATE UNIQUE NONCLUSTERED INDEX [resgrd_3] ON [dbo].[resgrd__]
(
	[art__ref] ASC,
	[ord__ref] ASC,
	[suborder] ASC,
	[res__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[resgrd__]') AND name = N'resgrd_4')
CREATE NONCLUSTERED INDEX [resgrd_4] ON [dbo].[resgrd__]
(
	[kla__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[resgrd__]') AND name = N'resgrd_5')
CREATE NONCLUSTERED INDEX [resgrd_5] ON [dbo].[resgrd__]
(
	[kpn__ref] ASC,
	[art__srt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__res__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__res__ref]  DEFAULT ('') FOR [res__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__druk____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__druk____]  DEFAULT ('') FOR [druk____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__etap_typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__etap_typ]  DEFAULT ('') FOR [etap_typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__etaf_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__etaf_ref]  DEFAULT ('') FOR [etaf_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__kla__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__kla__ref]  DEFAULT ('') FOR [kla__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__kla__rpn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__kla__rpn]  DEFAULT ('') FOR [kla__rpn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__dat_resv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__dat_resv]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_resv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__uur_resv]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__uur_resv]  DEFAULT ('') FOR [uur_resv]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__reserve_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__reserve_]  DEFAULT ((0)) FOR [reserve_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__bestemmg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__bestemmg]  DEFAULT ('') FOR [bestemmg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__kommen_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__kommen_1]  DEFAULT ('') FOR [kommen_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__kommen_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__kommen_2]  DEFAULT ('') FOR [kommen_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__kommen_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__kommen_3]  DEFAULT ('') FOR [kommen_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__fiat_prd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__fiat_prd]  DEFAULT ('') FOR [fiat_prd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__dat_verb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__dat_verb]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [dat_verb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__verbruik]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__verbruik]  DEFAULT ((0)) FOR [verbruik]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__gedrukt_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__gedrukt_]  DEFAULT ('') FOR [gedrukt_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__user____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__user____]  DEFAULT ('') FOR [user____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__koep__br]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__koep__br]  DEFAULT ((0)) FOR [koep__br]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__koep_lgt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__koep_lgt]  DEFAULT ((0)) FOR [koep_lgt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__loopr_kp]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__loopr_kp]  DEFAULT ('') FOR [loopr_kp]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__koep_vel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__koep_vel]  DEFAULT ((0)) FOR [koep_vel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__snijder_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__snijder_]  DEFAULT ('') FOR [snijder_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__schema__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__schema__]  DEFAULT ('') FOR [schema__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_resgrd__aan_pers]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[resgrd__] ADD  CONSTRAINT [DF_resgrd__aan_pers]  DEFAULT ('') FOR [aan_pers]
END

