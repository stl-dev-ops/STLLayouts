SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v3kdg___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v3kdg___](
	[dg___ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___vnr] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment1] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment2] [nvarchar](40) COLLATE Latin1_General_CI_AS NOT NULL,
	[prs__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[typ__prs] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[oplage__] [int] NOT NULL,
	[ext__drk] [float] NOT NULL,
	[ch_stins] [float] NOT NULL,
	[ch_prins] [float] NOT NULL,
	[stel_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk1tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[druk2tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[was__tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stel_ins] [float] NOT NULL,
	[druk_ins] [float] NOT NULL,
	[was__ins] [float] NOT NULL,
	[pw___ins] [float] NOT NULL,
	[snelheid] [float] NOT NULL,
	[usrsttyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[usrstins] [float] NOT NULL,
	[usrwstyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[usrwsins] [float] NOT NULL,
	[usrdrins] [float] NOT NULL,
	[usrdrspd] [float] NOT NULL,
	[usrdrovt] [int] NOT NULL,
	[usrpwins] [float] NOT NULL,
	[ant_pltn] [int] NOT NULL,
	[antwpltn] [int] NOT NULL,
	[drk__tst] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[drk__ins] [float] NOT NULL,
	[drk__opl] [float] NOT NULL,
	[prst_ins] [float] NOT NULL,
	[prsincum] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afwincum] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klik1vel] [int] NOT NULL,
	[klik2vel] [int] NOT NULL,
	[klik3vel] [int] NOT NULL,
	[klik1tot] [int] NOT NULL,
	[klik2tot] [int] NOT NULL,
	[klik3tot] [int] NOT NULL,
	[maxawspd] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v3kdg_i1] PRIMARY KEY CLUSTERED 
(
	[dg___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3kdg___]') AND name = N'v3kdg_i2')
CREATE NONCLUSTERED INDEX [v3kdg_i2] ON [dbo].[v3kdg___]
(
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[v3kdg___]') AND name = N'v3kdg_i3')
CREATE NONCLUSTERED INDEX [v3kdg_i3] ON [dbo].[v3kdg___]
(
	[off__ref] ASC,
	[vrm__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___dg___vnr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___dg___vnr]  DEFAULT ('') FOR [dg___vnr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___komment1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___komment1]  DEFAULT ('') FOR [komment1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___komment2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___komment2]  DEFAULT ('') FOR [komment2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___prs__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___prs__ref]  DEFAULT ('') FOR [prs__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___typ__prs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___typ__prs]  DEFAULT ('') FOR [typ__prs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___oplage__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___oplage__]  DEFAULT ((0)) FOR [oplage__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___ext__drk]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___ext__drk]  DEFAULT ((0)) FOR [ext__drk]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___ch_stins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___ch_stins]  DEFAULT ((0)) FOR [ch_stins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___ch_prins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___ch_prins]  DEFAULT ((0)) FOR [ch_prins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___stel_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___stel_tyd]  DEFAULT ('') FOR [stel_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___druk_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___druk_tyd]  DEFAULT ('') FOR [druk_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___druk1tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___druk1tyd]  DEFAULT ('') FOR [druk1tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___druk2tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___druk2tyd]  DEFAULT ('') FOR [druk2tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___was__tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___was__tyd]  DEFAULT ('') FOR [was__tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___stel_ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___stel_ins]  DEFAULT ((0)) FOR [stel_ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___druk_ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___druk_ins]  DEFAULT ((0)) FOR [druk_ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___was__ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___was__ins]  DEFAULT ((0)) FOR [was__ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___pw___ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___pw___ins]  DEFAULT ((0)) FOR [pw___ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___snelheid]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___snelheid]  DEFAULT ((0)) FOR [snelheid]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___usrsttyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___usrsttyd]  DEFAULT ('') FOR [usrsttyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___usrstins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___usrstins]  DEFAULT ((0)) FOR [usrstins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___usrwstyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___usrwstyd]  DEFAULT ('') FOR [usrwstyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___usrwsins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___usrwsins]  DEFAULT ((0)) FOR [usrwsins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___usrdrins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___usrdrins]  DEFAULT ((0)) FOR [usrdrins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___usrdrspd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___usrdrspd]  DEFAULT ((0)) FOR [usrdrspd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___usrdrovt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___usrdrovt]  DEFAULT ((0)) FOR [usrdrovt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___usrpwins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___usrpwins]  DEFAULT ((0)) FOR [usrpwins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___ant_pltn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___ant_pltn]  DEFAULT ((0)) FOR [ant_pltn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___antwpltn]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___antwpltn]  DEFAULT ((0)) FOR [antwpltn]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___drk__tst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___drk__tst]  DEFAULT ('') FOR [drk__tst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___drk__ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___drk__ins]  DEFAULT ((0)) FOR [drk__ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___drk__opl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___drk__opl]  DEFAULT ((0)) FOR [drk__opl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___prst_ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___prst_ins]  DEFAULT ((0)) FOR [prst_ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___prsincum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___prsincum]  DEFAULT ('') FOR [prsincum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___afwincum]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___afwincum]  DEFAULT ('') FOR [afwincum]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___klik1vel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___klik1vel]  DEFAULT ((0)) FOR [klik1vel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___klik2vel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___klik2vel]  DEFAULT ((0)) FOR [klik2vel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___klik3vel]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___klik3vel]  DEFAULT ((0)) FOR [klik3vel]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___klik1tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___klik1tot]  DEFAULT ((0)) FOR [klik1tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___klik2tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___klik2tot]  DEFAULT ((0)) FOR [klik2tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___klik3tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___klik3tot]  DEFAULT ((0)) FOR [klik3tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v3kdg___maxawspd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v3kdg___] ADD  CONSTRAINT [DF_v3kdg___maxawspd]  DEFAULT ((0)) FOR [maxawspd]
END

