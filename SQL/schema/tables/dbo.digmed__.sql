SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[digmed__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[digmed__](
	[digmedrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod__id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[descname] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[srv__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [digmedi0] PRIMARY KEY CLUSTERED 
(
	[digmedrf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_digmed__digmedrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[digmed__] ADD  CONSTRAINT [DF_digmed__digmedrf]  DEFAULT ('') FOR [digmedrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_digmed__prod__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[digmed__] ADD  CONSTRAINT [DF_digmed__prod__id]  DEFAULT ('') FOR [prod__id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_digmed__descname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[digmed__] ADD  CONSTRAINT [DF_digmed__descname]  DEFAULT ('') FOR [descname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_digmed__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[digmed__] ADD  CONSTRAINT [DF_digmed__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_digmed__srv__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[digmed__] ADD  CONSTRAINT [DF_digmed__srv__ref]  DEFAULT ('') FOR [srv__ref]
END

