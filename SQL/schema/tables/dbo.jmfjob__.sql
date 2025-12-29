SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jmfjob__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[jmfjob__](
	[deviceid] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[job___id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobprtid] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[job_stat] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__det] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[workstep] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[time___s] [datetime2](3) NOT NULL,
	[time___e] [datetime2](3) NOT NULL,
	[good___s] [float] NOT NULL,
	[good___e] [float] NOT NULL,
	[waste__s] [float] NOT NULL,
	[waste__e] [float] NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[plpl_ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[pldv_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
 CONSTRAINT [jmfjobi0] PRIMARY KEY CLUSTERED 
(
	[deviceid] ASC,
	[soort___] ASC,
	[time___s] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__deviceid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__deviceid]  DEFAULT ('') FOR [deviceid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__job___id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__job___id]  DEFAULT ('') FOR [job___id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__jobprtid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__jobprtid]  DEFAULT ('') FOR [jobprtid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__job_stat]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__job_stat]  DEFAULT ('') FOR [job_stat]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__job__det]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__job__det]  DEFAULT ('') FOR [job__det]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__workstep]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__workstep]  DEFAULT ('') FOR [workstep]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__time___s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__time___s]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [time___s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__time___e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__time___e]  DEFAULT (CONVERT([datetime2](3),'19800101',(112))) FOR [time___e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__good___s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__good___s]  DEFAULT ((0)) FOR [good___s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__good___e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__good___e]  DEFAULT ((0)) FOR [good___e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__waste__s]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__waste__s]  DEFAULT ((0)) FOR [waste__s]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__waste__e]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__waste__e]  DEFAULT ((0)) FOR [waste__e]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__plpl_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__plpl_ref]  DEFAULT ('') FOR [plpl_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__vrm__vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__vrm__vnr]  DEFAULT ('') FOR [vrm__vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_jmfjob__pldv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[jmfjob__] ADD  CONSTRAINT [DF_jmfjob__pldv_ref]  DEFAULT ('') FOR [pldv_ref]
END

