SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[editor__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[editor__](
	[soort___] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[id______] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[name____] [nvarchar](120) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [editori0] PRIMARY KEY CLUSTERED 
(
	[soort___] ASC,
	[id______] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_editor__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[editor__] ADD  CONSTRAINT [DF_editor__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_editor__id______]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[editor__] ADD  CONSTRAINT [DF_editor__id______]  DEFAULT ('') FOR [id______]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_editor__name____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[editor__] ADD  CONSTRAINT [DF_editor__name____]  DEFAULT ('') FOR [name____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_editor__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[editor__] ADD  CONSTRAINT [DF_editor__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

