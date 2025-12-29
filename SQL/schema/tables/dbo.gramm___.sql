SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gramm___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[gramm___](
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[grm__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[kln_verb] [float] NOT NULL,
	[palletpr] [float] NOT NULL,
	[fabr__pr] [float] NOT NULL,
	[pr____04] [float] NOT NULL,
	[pr____05] [float] NOT NULL,
	[gew__pal] [float] NOT NULL,
	[gew__fab] [float] NOT NULL,
	[gew___04] [float] NOT NULL,
	[gew___05] [float] NOT NULL,
	[gram_van] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[gram_tot] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[grammvan] [float] NOT NULL,
	[grammtot] [float] NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [gramm_i0] PRIMARY KEY CLUSTERED 
(
	[pap__ref] ASC,
	[pap__srt] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___pap__ref]  DEFAULT ('') FOR [pap__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___pap__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___pap__srt]  DEFAULT ('') FOR [pap__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___grm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___grm__ref]  DEFAULT ('') FOR [grm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___kln_verb]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___kln_verb]  DEFAULT ((0)) FOR [kln_verb]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___palletpr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___palletpr]  DEFAULT ((0)) FOR [palletpr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___fabr__pr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___fabr__pr]  DEFAULT ((0)) FOR [fabr__pr]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___pr____04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___pr____04]  DEFAULT ((0)) FOR [pr____04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___pr____05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___pr____05]  DEFAULT ((0)) FOR [pr____05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___gew__pal]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___gew__pal]  DEFAULT ((0)) FOR [gew__pal]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___gew__fab]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___gew__fab]  DEFAULT ((0)) FOR [gew__fab]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___gew___04]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___gew___04]  DEFAULT ((0)) FOR [gew___04]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___gew___05]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___gew___05]  DEFAULT ((0)) FOR [gew___05]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___gram_van]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___gram_van]  DEFAULT ('') FOR [gram_van]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___gram_tot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___gram_tot]  DEFAULT ('') FOR [gram_tot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___grammvan]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___grammvan]  DEFAULT ((0)) FOR [grammvan]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___grammtot]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___grammtot]  DEFAULT ((0)) FOR [grammtot]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_gramm___dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[gramm___] ADD  CONSTRAINT [DF_gramm___dossier_]  DEFAULT ('') FOR [dossier_]
END

