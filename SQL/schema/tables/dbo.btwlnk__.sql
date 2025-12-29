SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[btwlnk__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[btwlnk__](
	[btwlnkrf] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw__ref] [nvarchar](3) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_beh_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btw_def_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwa_pct] [float] NOT NULL,
	[cde___ap] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[arek_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[btwnarek] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [btwlnki0] PRIMARY KEY CLUSTERED 
(
	[btwlnkrf] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__btwlnkrf]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__btwlnkrf]  DEFAULT ('') FOR [btwlnkrf]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__btw__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__btw__ref]  DEFAULT ('') FOR [btw__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__btw_beh_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__btw_beh_]  DEFAULT ('1') FOR [btw_beh_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__btw_def_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__btw_def_]  DEFAULT ('1') FOR [btw_def_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__btwa_pct]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__btwa_pct]  DEFAULT ((0)) FOR [btwa_pct]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__arek_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__arek_ref]  DEFAULT ('') FOR [arek_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__geblokk_]  DEFAULT ('N') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_btwlnk__btwnarek]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[btwlnk__] ADD  CONSTRAINT [DF_btwlnk__btwnarek]  DEFAULT ('') FOR [btwnarek]
END

