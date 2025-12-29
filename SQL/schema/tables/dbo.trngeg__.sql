SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trngeg__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[trngeg__](
	[trng_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[type____] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](60) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[crit__01] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
	[default_] [bit] NOT NULL,
 CONSTRAINT [trngegi0] PRIMARY KEY CLUSTERED 
(
	[trng_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trngeg__trng_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trngeg__] ADD  CONSTRAINT [DF_trngeg__trng_ref]  DEFAULT ('') FOR [trng_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trngeg__type____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trngeg__] ADD  CONSTRAINT [DF_trngeg__type____]  DEFAULT ('') FOR [type____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trngeg__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trngeg__] ADD  CONSTRAINT [DF_trngeg__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trngeg__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trngeg__] ADD  CONSTRAINT [DF_trngeg__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trngeg__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trngeg__] ADD  CONSTRAINT [DF_trngeg__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trngeg__crit__01]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trngeg__] ADD  CONSTRAINT [DF_trngeg__crit__01]  DEFAULT ('') FOR [crit__01]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_trngeg__default_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[trngeg__] ADD  CONSTRAINT [DF_trngeg__default_]  DEFAULT ((0)) FOR [default_]
END

