SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_vrb2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_vrb2__](
	[idf_vrb2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__ref] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[artd_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[aantal__] [float] NOT NULL,
	[rollen__] [float] NOT NULL,
	[andro_kg] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[papr_kgm] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__vrd] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[ord__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[suborder] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[kpn__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[dg___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[production_flow_id] [int] NULL,
	[workstep_id] [int] NULL,
	[run_id] [int] NULL,
	[produktf] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[volledig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[kom__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[komment_] [nvarchar](max) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[bcrerek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bcrerek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek1] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek2] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek3] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[bdebrek4] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [vrb2_id1] PRIMARY KEY CLUSTERED 
(
	[idf_vrb2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_vrb2__]') AND name = N'wvrb2id2')
CREATE NONCLUSTERED INDEX [wvrb2id2] ON [dbo].[w_vrb2__]
(
	[ord__ref] ASC,
	[art__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
SET ANSI_PADDING ON

IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[w_vrb2__]') AND name = N'wvrb2id3')
CREATE NONCLUSTERED INDEX [wvrb2id3] ON [dbo].[w_vrb2__]
(
	[artd_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__idf_vrb2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__idf_vrb2]  DEFAULT ('') FOR [idf_vrb2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__art__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__art__ref]  DEFAULT ('') FOR [art__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__artd_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__artd_ref]  DEFAULT ('') FOR [artd_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__aantal__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__aantal__]  DEFAULT ((0)) FOR [aantal__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__rollen__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__rollen__]  DEFAULT ((0)) FOR [rollen__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__andro_kg]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__andro_kg]  DEFAULT ('') FOR [andro_kg]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__papr_kgm]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__papr_kgm]  DEFAULT ('') FOR [papr_kgm]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__art__vrd]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__art__vrd]  DEFAULT ('') FOR [art__vrd]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__ord__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__ord__ref]  DEFAULT ('') FOR [ord__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__suborder]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__suborder]  DEFAULT ('') FOR [suborder]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__kpn__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__kpn__ref]  DEFAULT ('') FOR [kpn__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__dg___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__dg___ref]  DEFAULT ('') FOR [dg___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__produktf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__produktf]  DEFAULT ('') FOR [produktf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__volledig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__volledig]  DEFAULT ('') FOR [volledig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__kom__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__kom__ref]  DEFAULT ('') FOR [kom__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__komment_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__komment_]  DEFAULT ('') FOR [komment_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__bcrerek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__bcrerek1]  DEFAULT ('') FOR [bcrerek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__bcrerek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__bcrerek2]  DEFAULT ('') FOR [bcrerek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__bdebrek1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__bdebrek1]  DEFAULT ('') FOR [bdebrek1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__bdebrek2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__bdebrek2]  DEFAULT ('') FOR [bdebrek2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__bdebrek3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__bdebrek3]  DEFAULT ('') FOR [bdebrek3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_vrb2__bdebrek4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_vrb2__] ADD  CONSTRAINT [DF_w_vrb2__bdebrek4]  DEFAULT ('') FOR [bdebrek4]
END

