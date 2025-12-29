SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mrkant__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mrkant__](
	[vrg__ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[antw_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](25) COLLATE Latin1_General_CI_AS NOT NULL,
	[volgorde] [int] NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [mrka_id1] PRIMARY KEY CLUSTERED 
(
	[antw_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mrkant__vrg__ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mrkant__] ADD  CONSTRAINT [DF_mrkant__vrg__ref]  DEFAULT ('') FOR [vrg__ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mrkant__antw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mrkant__] ADD  CONSTRAINT [DF_mrkant__antw_ref]  DEFAULT ('') FOR [antw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mrkant__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mrkant__] ADD  CONSTRAINT [DF_mrkant__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_mrkant__volgorde]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[mrkant__] ADD  CONSTRAINT [DF_mrkant__volgorde]  DEFAULT ((0)) FOR [volgorde]
END

