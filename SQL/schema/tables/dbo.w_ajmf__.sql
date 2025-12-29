SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_ajmf__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_ajmf__](
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[starten_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stoppen_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrs_refs] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[deviceid] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev_stat] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dev__det] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[cost__id] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[activ_id] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[employee] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[emp_role] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[job___id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobprtid] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[workstep] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[job_stat] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__det] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[sht_name] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[partvrsn] [nvarchar](255) COLLATE Latin1_General_CI_AS NOT NULL,
	[time___s] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[time___e] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[good___s] [float] NOT NULL,
	[good___e] [float] NOT NULL,
	[waste__s] [float] NOT NULL,
	[waste__e] [float] NOT NULL,
	[worktype] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[costtype] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[main__op] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [w_ajmfi0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_ajmf__]') AND name = N'w_ajmfi1')
CREATE NONCLUSTERED INDEX [w_ajmfi1] ON [dbo].[w_ajmf__]
(
	[wp___ref] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_ajmf__]') AND name = N'w_ajmfi3')
CREATE NONCLUSTERED INDEX [w_ajmfi3] ON [dbo].[w_ajmf__]
(
	[deviceid] ASC,
	[soort___] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__starten_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__starten_]  DEFAULT ('') FOR [starten_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__stoppen_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__stoppen_]  DEFAULT ('') FOR [stoppen_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__vrs_refs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__vrs_refs]  DEFAULT ('') FOR [vrs_refs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__deviceid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__deviceid]  DEFAULT ('') FOR [deviceid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__dev_stat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__dev_stat]  DEFAULT ('') FOR [dev_stat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__dev__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__dev__det]  DEFAULT ('') FOR [dev__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__cost__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__cost__id]  DEFAULT ('') FOR [cost__id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__activ_id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__activ_id]  DEFAULT ('') FOR [activ_id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__employee]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__employee]  DEFAULT ('') FOR [employee]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__emp_role]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__emp_role]  DEFAULT ('') FOR [emp_role]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__job___id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__job___id]  DEFAULT ('') FOR [job___id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__jobprtid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__jobprtid]  DEFAULT ('') FOR [jobprtid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__workstep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__workstep]  DEFAULT ('') FOR [workstep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__job_stat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__job_stat]  DEFAULT ('') FOR [job_stat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__job__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__job__det]  DEFAULT ('') FOR [job__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__sht_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__sht_name]  DEFAULT ('') FOR [sht_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__partvrsn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__partvrsn]  DEFAULT ('') FOR [partvrsn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__time___s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__time___s]  DEFAULT ('') FOR [time___s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__time___e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__time___e]  DEFAULT ('') FOR [time___e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__good___s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__good___s]  DEFAULT ((0)) FOR [good___s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__good___e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__good___e]  DEFAULT ((0)) FOR [good___e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__waste__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__waste__s]  DEFAULT ((0)) FOR [waste__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__waste__e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__waste__e]  DEFAULT ((0)) FOR [waste__e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__worktype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__worktype]  DEFAULT ('') FOR [worktype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__costtype]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__costtype]  DEFAULT ('') FOR [costtype]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_ajmf__main__op]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_ajmf__] ADD  CONSTRAINT [DF_w_ajmf__main__op]  DEFAULT ('') FOR [main__op]
END

