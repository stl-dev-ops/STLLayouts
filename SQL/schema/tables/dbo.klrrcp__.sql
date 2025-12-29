SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[klrrcp__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[klrrcp__](
	[rcp___ap] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [klrrcpi0] PRIMARY KEY CLUSTERED 
(
	[rcp___ap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrrcp__rcp___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrrcp__] ADD  CONSTRAINT [DF_klrrcp__rcp___ap]  DEFAULT ('') FOR [rcp___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrrcp__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrrcp__] ADD  CONSTRAINT [DF_klrrcp__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_klrrcp__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[klrrcp__] ADD  CONSTRAINT [DF_klrrcp__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

