SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[archive_hisvak__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[archive_hisvak__](
	[soort___] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[ref_____] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[sku__ref] [nvarchar](20) COLLATE Latin1_General_CI_AS NOT NULL,
	[datum___] [date] NOT NULL,
	[uur_____] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[wuser___] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__old] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[vak__new] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[jobnr_archive] [nvarchar](10) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [archive_hisvaki0] PRIMARY KEY CLUSTERED 
(
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__soort___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__soort___]  DEFAULT ('') FOR [soort___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__ref_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__ref_____]  DEFAULT ('') FOR [ref_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__sku__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__sku__ref]  DEFAULT ('') FOR [sku__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__datum___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__datum___]  DEFAULT (CONVERT([date],'19800101',(112))) FOR [datum___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__uur_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__uur_____]  DEFAULT ('') FOR [uur_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__wuser___]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__wuser___]  DEFAULT ('') FOR [wuser___]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__vak__old]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__vak__old]  DEFAULT ('') FOR [vak__old]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__vak__new]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__vak__new]  DEFAULT ('') FOR [vak__new]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_archive_hisvak__jobnr_archive]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[archive_hisvak__] ADD  CONSTRAINT [DF_archive_hisvak__jobnr_archive]  DEFAULT ('') FOR [jobnr_archive]
END

