SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aw_sd___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[aw_sd___](
	[awst_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awsd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[diktevan] [float] NOT NULL,
	[diktetot] [float] NOT NULL,
	[mnsrtpag] [int] NOT NULL,
	[mxsrtpag] [int] NOT NULL,
	[mnpag__x] [float] NOT NULL,
	[mxpag__x] [float] NOT NULL,
	[mnpag__y] [float] NOT NULL,
	[mxpag__y] [float] NOT NULL,
	[opl__min] [int] NOT NULL,
	[opl__max] [int] NOT NULL,
	[ins_1vst] [int] NOT NULL,
	[ins__vst] [int] NOT NULL,
	[vast1tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vast_tyd] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ins__pct] [float] NOT NULL,
	[ant_norm] [float] NOT NULL,
	[tyd_norm] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ant_hlp1] [int] NOT NULL,
	[ant_hlp2] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[afw__gap] [float] NOT NULL,
 CONSTRAINT [aw_sd_i0] PRIMARY KEY CLUSTERED 
(
	[awst_ref] ASC,
	[awsd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___awst_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___awst_ref]  DEFAULT ('') FOR [awst_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___awsd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___awsd_ref]  DEFAULT ('') FOR [awsd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___diktevan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___diktevan]  DEFAULT ((0)) FOR [diktevan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___diktetot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___diktetot]  DEFAULT ((0)) FOR [diktetot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___mnsrtpag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___mnsrtpag]  DEFAULT ((0)) FOR [mnsrtpag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___mxsrtpag]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___mxsrtpag]  DEFAULT ((0)) FOR [mxsrtpag]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___mnpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___mnpag__x]  DEFAULT ((0)) FOR [mnpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___mxpag__x]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___mxpag__x]  DEFAULT ((0)) FOR [mxpag__x]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___mnpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___mnpag__y]  DEFAULT ((0)) FOR [mnpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___mxpag__y]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___mxpag__y]  DEFAULT ((0)) FOR [mxpag__y]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___opl__min]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___opl__min]  DEFAULT ((0)) FOR [opl__min]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___opl__max]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___opl__max]  DEFAULT ((0)) FOR [opl__max]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___ins_1vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___ins_1vst]  DEFAULT ((0)) FOR [ins_1vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___ins__vst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___ins__vst]  DEFAULT ((0)) FOR [ins__vst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___vast1tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___vast1tyd]  DEFAULT ('  0:00') FOR [vast1tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___vast_tyd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___vast_tyd]  DEFAULT ('  0:00') FOR [vast_tyd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___ins__pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___ins__pct]  DEFAULT ((0)) FOR [ins__pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___ant_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___ant_norm]  DEFAULT ((0)) FOR [ant_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___tyd_norm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___tyd_norm]  DEFAULT ('  0:00') FOR [tyd_norm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___ant_hlp1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___ant_hlp1]  DEFAULT ((0)) FOR [ant_hlp1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___ant_hlp2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___ant_hlp2]  DEFAULT ((0)) FOR [ant_hlp2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_aw_sd___afw__gap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[aw_sd___] ADD  CONSTRAINT [DF_aw_sd___afw__gap]  DEFAULT ((0)) FOR [afw__gap]
END

