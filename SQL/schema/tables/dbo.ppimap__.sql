SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ppimap__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ppimap__](
	[ppi__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](15) COLLATE Latin1_General_CI_AS NOT NULL,
	[lev__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[art__srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[pap__ref] [nvarchar](4) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [ppimapi1] PRIMARY KEY CLUSTERED 
(
	[art__srt] ASC,
	[cde___ap] ASC,
	[lev__ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ppimap__ppi__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ppimap__] ADD  CONSTRAINT [DF_ppimap__ppi__ref]  DEFAULT ('') FOR [ppi__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ppimap__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ppimap__] ADD  CONSTRAINT [DF_ppimap__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ppimap__lev__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ppimap__] ADD  CONSTRAINT [DF_ppimap__lev__ref]  DEFAULT ('') FOR [lev__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ppimap__art__srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ppimap__] ADD  CONSTRAINT [DF_ppimap__art__srt]  DEFAULT ('') FOR [art__srt]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_ppimap__pap__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ppimap__] ADD  CONSTRAINT [DF_ppimap__pap__ref]  DEFAULT ('') FOR [pap__ref]
END

