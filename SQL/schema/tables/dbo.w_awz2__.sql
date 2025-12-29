SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[w_awz2__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[w_awz2__](
	[idf_awz2] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[dos__ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[job__inl] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[verwerk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[wn___ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[aankomst] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[vertrek_] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[plg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [awz2_id1] PRIMARY KEY CLUSTERED 
(
	[idf_awz2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__idf_awz2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__idf_awz2]  DEFAULT ('') FOR [idf_awz2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__dos__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__dos__ref]  DEFAULT ('') FOR [dos__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__job__inl]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__job__inl]  DEFAULT ('') FOR [job__inl]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__verwerk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__verwerk_]  DEFAULT ('') FOR [verwerk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__wn___ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__wn___ref]  DEFAULT ('') FOR [wn___ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__aankomst]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__aankomst]  DEFAULT ('') FOR [aankomst]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__vertrek_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__vertrek_]  DEFAULT ('') FOR [vertrek_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_w_awz2__plg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[w_awz2__] ADD  CONSTRAINT [DF_w_awz2__plg__ref]  DEFAULT ('') FOR [plg__ref]
END

