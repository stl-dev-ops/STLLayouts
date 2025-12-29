SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ananiv__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ananiv__](
	[aniv_ref] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[niveau__] [int] NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[dossier_] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[afd__ref] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[ksrt_ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ananivi1] PRIMARY KEY CLUSTERED 
(
	[aniv_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ananiv__aniv_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ananiv__] ADD  CONSTRAINT [DF_ananiv__aniv_ref]  DEFAULT ('') FOR [aniv_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ananiv__niveau__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ananiv__] ADD  CONSTRAINT [DF_ananiv__niveau__]  DEFAULT ((0)) FOR [niveau__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ananiv__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ananiv__] ADD  CONSTRAINT [DF_ananiv__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ananiv__dossier_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ananiv__] ADD  CONSTRAINT [DF_ananiv__dossier_]  DEFAULT ('') FOR [dossier_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ananiv__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ananiv__] ADD  CONSTRAINT [DF_ananiv__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ananiv__afd__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ananiv__] ADD  CONSTRAINT [DF_ananiv__afd__ref]  DEFAULT ('') FOR [afd__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ananiv__wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ananiv__] ADD  CONSTRAINT [DF_ananiv__wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ananiv__ksrt_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ananiv__] ADD  CONSTRAINT [DF_ananiv__ksrt_ref]  DEFAULT ('') FOR [ksrt_ref]
END

