SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clstgy__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[clstgy__](
	[stgy_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[prod__id] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[descname] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[pc_model] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[pcm_name] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[clr_prfl] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[klcod_fr] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [clstgyi0] PRIMARY KEY CLUSTERED 
(
	[stgy_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstgy__stgy_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstgy__] ADD  CONSTRAINT [DF_clstgy__stgy_ref]  DEFAULT ('') FOR [stgy_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstgy__prod__id]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstgy__] ADD  CONSTRAINT [DF_clstgy__prod__id]  DEFAULT ('') FOR [prod__id]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstgy__descname]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstgy__] ADD  CONSTRAINT [DF_clstgy__descname]  DEFAULT ('') FOR [descname]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstgy__pc_model]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstgy__] ADD  CONSTRAINT [DF_clstgy__pc_model]  DEFAULT ('') FOR [pc_model]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstgy__pcm_name]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstgy__] ADD  CONSTRAINT [DF_clstgy__pcm_name]  DEFAULT ('') FOR [pcm_name]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstgy__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstgy__] ADD  CONSTRAINT [DF_clstgy__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstgy__clr_prfl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstgy__] ADD  CONSTRAINT [DF_clstgy__clr_prfl]  DEFAULT ('N') FOR [clr_prfl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_clstgy__klcod_fr]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[clstgy__] ADD  CONSTRAINT [DF_clstgy__klcod_fr]  DEFAULT ('') FOR [klcod_fr]
END

