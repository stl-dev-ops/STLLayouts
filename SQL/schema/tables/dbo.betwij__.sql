SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[betwij__]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[betwij__](
	[betw_ref] [nvarchar](2) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr__] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_1] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_2] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_3] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_4] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_5] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_6] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_7] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_8] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[omschr_9] [nvarchar](30) COLLATE Latin1_General_CI_AS NOT NULL,
	[ref_v45_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[cde___ap] [nvarchar](16) COLLATE Latin1_General_CI_AS NOT NULL,
	[iban____] [nvarchar](34) COLLATE Latin1_General_CI_AS NOT NULL,
	[bic_____] [nvarchar](11) COLLATE Latin1_General_CI_AS NOT NULL,
	[banknaam] [nvarchar](50) COLLATE Latin1_General_CI_AS NOT NULL,
	[geblokk_] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[betw_srt] [nvarchar](1) COLLATE Latin1_General_CI_AS NOT NULL,
	[rowid] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [betwiji0] PRIMARY KEY CLUSTERED 
(
	[betw_ref] ASC,
	[rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__betw_ref]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__betw_ref]  DEFAULT ('') FOR [betw_ref]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr__]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr__]  DEFAULT ('') FOR [omschr__]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_1]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_1]  DEFAULT ('') FOR [omschr_1]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_2]  DEFAULT ('') FOR [omschr_2]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_3]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_3]  DEFAULT ('') FOR [omschr_3]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_4]  DEFAULT ('') FOR [omschr_4]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_5]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_5]  DEFAULT ('') FOR [omschr_5]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_6]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_6]  DEFAULT ('') FOR [omschr_6]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_7]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_7]  DEFAULT ('') FOR [omschr_7]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_8]  DEFAULT ('') FOR [omschr_8]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__omschr_9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__omschr_9]  DEFAULT ('') FOR [omschr_9]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__ref_v45_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__ref_v45_]  DEFAULT ('') FOR [ref_v45_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__cde___ap]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__cde___ap]  DEFAULT ('') FOR [cde___ap]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__iban____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__iban____]  DEFAULT ('') FOR [iban____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__bic_____]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__bic_____]  DEFAULT ('') FOR [bic_____]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__banknaam]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__banknaam]  DEFAULT ('') FOR [banknaam]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__geblokk_]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__geblokk_]  DEFAULT ('') FOR [geblokk_]
END

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_betwij__betw_srt]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[betwij__] ADD  CONSTRAINT [DF_betwij__betw_srt]  DEFAULT ('') FOR [betw_srt]
END

