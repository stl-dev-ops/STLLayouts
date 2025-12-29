SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[altbal__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[altbal__](
	[abal_ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[abal2ref] [nvarchar](6) COLLATE Latin1_General_CI_AS NOT NULL,
	[abal_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [idx_abal] PRIMARY KEY CLUSTERED 
(
	[abal_ref] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_altbal__abal_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[altbal__] ADD  CONSTRAINT [DF_altbal__abal_ref]  DEFAULT ('') FOR [abal_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_altbal__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[altbal__] ADD  CONSTRAINT [DF_altbal__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_altbal__abal2ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[altbal__] ADD  CONSTRAINT [DF_altbal__abal2ref]  DEFAULT ('') FOR [abal2ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_altbal__abal_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[altbal__] ADD  CONSTRAINT [DF_altbal__abal_srt]  DEFAULT ('1') FOR [abal_srt]
END

