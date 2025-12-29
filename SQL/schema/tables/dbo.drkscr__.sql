SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drkscr__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[drkscr__](
	[scr__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[scr__oms] [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[scr__typ] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[scr__lpi] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [drkscri0] PRIMARY KEY CLUSTERED 
(
	[scr__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkscr__scr__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkscr__] ADD  CONSTRAINT [DF_drkscr__scr__ref]  DEFAULT ('') FOR [scr__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkscr__scr__oms]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkscr__] ADD  CONSTRAINT [DF_drkscr__scr__oms]  DEFAULT ('') FOR [scr__oms]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkscr__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkscr__] ADD  CONSTRAINT [DF_drkscr__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkscr__scr__typ]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkscr__] ADD  CONSTRAINT [DF_drkscr__scr__typ]  DEFAULT ('') FOR [scr__typ]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_drkscr__scr__lpi]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[drkscr__] ADD  CONSTRAINT [DF_drkscr__scr__lpi]  DEFAULT ((0)) FOR [scr__lpi]
END

