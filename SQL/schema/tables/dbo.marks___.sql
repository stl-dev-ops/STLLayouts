SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[marks___]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[marks___](
	[mark_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod__id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[descname] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [marks_i0] PRIMARY KEY CLUSTERED 
(
	[mark_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_marks___mark_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[marks___] ADD  CONSTRAINT [DF_marks___mark_ref]  DEFAULT ('') FOR [mark_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_marks___prod__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[marks___] ADD  CONSTRAINT [DF_marks___prod__id]  DEFAULT ('') FOR [prod__id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_marks___descname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[marks___] ADD  CONSTRAINT [DF_marks___descname]  DEFAULT ('') FOR [descname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_marks___geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[marks___] ADD  CONSTRAINT [DF_marks___geblokk_]  DEFAULT ('') FOR [geblokk_]
END

