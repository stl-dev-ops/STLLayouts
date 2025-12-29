SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_pnt2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_pnt2__](
	[idf_pnt2] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[starten_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[stoppen_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[vrs_refs] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[afg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[prc_____] [float] NOT NULL,
	[antw__01] [float] NOT NULL,
	[antw__02] [float] NOT NULL,
	[antw__03] [float] NOT NULL,
	[antw__04] [float] NOT NULL,
	[antw__05] [float] NOT NULL,
	[antw__06] [float] NOT NULL,
	[antw__07] [float] NOT NULL,
	[antw__08] [float] NOT NULL,
	[antw__09] [float] NOT NULL,
	[antw__10] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [wpnt2id1] PRIMARY KEY CLUSTERED 
(
	[idf_pnt2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_pnt2__]') AND name = N'w_pnt2i3')
CREATE NONCLUSTERED INDEX [w_pnt2i3] ON [dbo].[w_pnt2__]
(
	[wp___ref] ASC,
	[akt__ref] ASC,
	[kpn__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_pnt2__]') AND name = N'wpnt2id2')
CREATE NONCLUSTERED INDEX [wpnt2id2] ON [dbo].[w_pnt2__]
(
	[ord__ref] ASC,
	[wp___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_pnt2__]') AND name = N'wpnt2id3')
CREATE NONCLUSTERED INDEX [wpnt2id3] ON [dbo].[w_pnt2__]
(
	[job__inl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__idf_pnt2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__idf_pnt2]  DEFAULT ('') FOR [idf_pnt2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__starten_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__starten_]  DEFAULT ('') FOR [starten_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__stoppen_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__stoppen_]  DEFAULT ('') FOR [stoppen_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__akt__ref]  DEFAULT ('') FOR [akt__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__vrs_refs]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__vrs_refs]  DEFAULT ('') FOR [vrs_refs]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__afg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__afg__ref]  DEFAULT ('') FOR [afg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__prc_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__prc_____]  DEFAULT ((0)) FOR [prc_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__01]  DEFAULT ((0)) FOR [antw__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__02]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__02]  DEFAULT ((0)) FOR [antw__02]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__03]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__03]  DEFAULT ((0)) FOR [antw__03]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__04]  DEFAULT ((0)) FOR [antw__04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__05]  DEFAULT ((0)) FOR [antw__05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__06]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__06]  DEFAULT ((0)) FOR [antw__06]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__07]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__07]  DEFAULT ((0)) FOR [antw__07]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__08]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__08]  DEFAULT ((0)) FOR [antw__08]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__09]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__09]  DEFAULT ((0)) FOR [antw__09]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_pnt2__antw__10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_pnt2__] ADD  CONSTRAINT [DF_w_pnt2__antw__10]  DEFAULT ((0)) FOR [antw__10]
END

