SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plcant__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plcant__](
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[tijdstip] [float] NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[teller__] [float] NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[vrs_refs] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[banen_ok] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[antbanok] [int] NOT NULL,
	[toestand] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plcanti0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcant__]') AND name = N'plcanti1')
CREATE NONCLUSTERED INDEX [plcanti1] ON [dbo].[plcant__]
(
	[wp___ref] ASC,
	[ord__ref] ASC,
	[kpn__ref] ASC,
	[vrm__ref] ASC,
	[production_flow_id] ASC,
	[workstep_id] ASC,
	[run_id] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcant__]') AND name = N'plcanti2')
CREATE NONCLUSTERED INDEX [plcanti2] ON [dbo].[plcant__]
(
	[wp___ref] ASC,
	[toestand] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[plcant__]') AND name = N'plcanti3')
CREATE NONCLUSTERED INDEX [plcanti3] ON [dbo].[plcant__]
(
	[wp___ref] ASC,
	[tijdstip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__tijdstip]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__tijdstip]  DEFAULT ((0)) FOR [tijdstip]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__teller__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__teller__]  DEFAULT ((0)) FOR [teller__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__vrs_refs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__vrs_refs]  DEFAULT ('') FOR [vrs_refs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__banen_ok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__banen_ok]  DEFAULT ('') FOR [banen_ok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__antbanok]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__antbanok]  DEFAULT ((0)) FOR [antbanok]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plcant__toestand]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plcant__] ADD  CONSTRAINT [DF_plcant__toestand]  DEFAULT ('') FOR [toestand]
END

