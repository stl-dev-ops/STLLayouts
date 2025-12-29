SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plgsu___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[plgsu___](
	[su___ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[kort1___] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[kort2___] [nvarchar](5) COLLATE Latin1_General_CI_AS NOT NULL,
	[aanwezig] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wp___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[akt__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [plgsu__1] PRIMARY KEY CLUSTERED 
(
	[su___ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgsu___su___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgsu___] ADD  CONSTRAINT [DF_plgsu___su___ref]  DEFAULT ('') FOR [su___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgsu___omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgsu___] ADD  CONSTRAINT [DF_plgsu___omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgsu___kort1___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgsu___] ADD  CONSTRAINT [DF_plgsu___kort1___]  DEFAULT ('') FOR [kort1___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgsu___kort2___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgsu___] ADD  CONSTRAINT [DF_plgsu___kort2___]  DEFAULT ('') FOR [kort2___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgsu___aanwezig]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgsu___] ADD  CONSTRAINT [DF_plgsu___aanwezig]  DEFAULT ('') FOR [aanwezig]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgsu___wp___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgsu___] ADD  CONSTRAINT [DF_plgsu___wp___ref]  DEFAULT ('') FOR [wp___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_plgsu___akt__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[plgsu___] ADD  CONSTRAINT [DF_plgsu___akt__ref]  DEFAULT ('') FOR [akt__ref]
END

