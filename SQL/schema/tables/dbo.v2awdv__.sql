SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[v2awdv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[v2awdv__](
	[off__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[sub__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[awst_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[awha_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[vrm__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dam__ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[pose____] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[st___ins] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pr___ins] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[usrstins] [float] NOT NULL,
	[usrprins] [float] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [v2awdvi1] PRIMARY KEY CLUSTERED 
(
	[off__ref] ASC,
	[sub__ref] ASC,
	[awst_srt] ASC,
	[awha_ref] ASC,
	[vrm__ref] ASC,
	[dam__ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__off__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__off__ref]  DEFAULT ('') FOR [off__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__sub__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__sub__ref]  DEFAULT ('') FOR [sub__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__awst_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__awst_srt]  DEFAULT ('') FOR [awst_srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__awha_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__awha_ref]  DEFAULT ('') FOR [awha_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__vrm__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__vrm__ref]  DEFAULT ('') FOR [vrm__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__dam__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__dam__ref]  DEFAULT ('') FOR [dam__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__pose____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__pose____]  DEFAULT ('') FOR [pose____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__st___ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__st___ins]  DEFAULT ('') FOR [st___ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__pr___ins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__pr___ins]  DEFAULT ('') FOR [pr___ins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__usrstins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__usrstins]  DEFAULT ((0)) FOR [usrstins]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_v2awdv__usrprins]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[v2awdv__] ADD  CONSTRAINT [DF_v2awdv__usrprins]  DEFAULT ((0)) FOR [usrprins]
END

